CREATE OR ALTER PROCEDURE spUser_ResetPassword (
    @Email VARCHAR(100),
    @Password VARCHAR(25)
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ErrMsg VARCHAR(500)
    DECLARE @UserID BIGINT
    DECLARE @IsVerified BIT

    BEGIN TRY

        -- Validate Email
        IF (@Email IS NULL OR LTRIM(RTRIM(@Email)) = '')
        BEGIN
            SET @ErrMsg = 'Email is required'
            RAISERROR(@ErrMsg, 16, 1)
            RETURN
        END

        SELECT TOP 1 @UserID = UserID
        FROM tblUser
        WHERE Email = LTRIM(RTRIM(@Email))

        IF @UserID IS NULL
        BEGIN
            SET @ErrMsg = 'Invalid Email. User not found'
            RAISERROR(@ErrMsg, 16, 1)
            RETURN
        END

        -- Check OTP verification
        IF NOT EXISTS (
            SELECT 1 
            FROM tblUserVerification 
            WHERE UserID = @UserID
        )
        BEGIN
            SET @ErrMsg = 'OTP not requested'
            RAISERROR(@ErrMsg, 16, 1)
            RETURN
        END

        SELECT @IsVerified = IsVerified
        FROM tblUserVerification
        WHERE UserID = @UserID

        IF ISNULL(@IsVerified, 0) = 0
        BEGIN
            SET @ErrMsg = 'OTP not verified'
            RAISERROR(@ErrMsg, 16, 1)
            RETURN
        END

        -- Update Password
        UPDATE tblUser
        SET 
            [Password] = CONVERT(VARBINARY(255), pwdencrypt(@Password)),
            ModifiedOn = [dbo].UTC2Indian(GETDATE())
        WHERE UserID = @UserID

        -- Invalidate OTP
        UPDATE tblUserVerification
        SET 
            IsVerified = 0,
            OTP = NULL,
            Attempts = 0
        WHERE UserID = @UserID

        RETURN

    END TRY

    BEGIN CATCH
        IF (@ErrMsg IS NULL) 
            SET @ErrMsg = 'There is a problem resetting password. Please contact administrator.'

        RAISERROR(@ErrMsg, 16, 1)
        RETURN
    END CATCH
END
GO