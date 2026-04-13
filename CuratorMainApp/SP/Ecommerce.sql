USE [master]
GO
/****** Object:  Database [Ecommerce]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE DATABASE [Ecommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'loritelc_eMarket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ecommerce_DATA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 8192KB )
 LOG ON 
( NAME = N'loritelc_eMarket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ecommerce_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 8192KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ecommerce] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ecommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ecommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ecommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ecommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ecommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ecommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ecommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ecommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ecommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ecommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ecommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ecommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ecommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ecommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ecommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ecommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ecommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ecommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ecommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ecommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ecommerce] SET  MULTI_USER 
GO
ALTER DATABASE [Ecommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ecommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ecommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ecommerce] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ecommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ecommerce] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ecommerce', N'ON'
GO
ALTER DATABASE [Ecommerce] SET QUERY_STORE = OFF
GO
USE [Ecommerce]
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ApartmentNo]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ApartmentNo] FROM [varchar](5) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ApartmentNo2]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ApartmentNo2] FROM [varchar](15) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_AttendanceCode]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_AttendanceCode] FROM [char](1) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_CCLast4Digits]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_CCLast4Digits] FROM [varchar](4) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ChequeNo]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ChequeNo] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code1]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code1] FROM [char](1) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code10]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code10] FROM [varchar](10) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code15]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code15] FROM [varchar](15) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code2]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code2] FROM [char](2) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code3]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code3] FROM [char](3) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code4]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code4] FROM [char](4) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code5]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code5] FROM [varchar](5) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code50]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code50] FROM [varchar](50) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Code6]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Code6] FROM [varchar](6) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_CodeText]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_CodeText] FROM [text] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_CreditCardNo]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_CreditCardNo] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Date]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Date] FROM [date] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Datetime]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Datetime] FROM [datetime] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Description]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Description] FROM [varchar](255) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Email]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Email] FROM [varchar](60) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_GenderCode]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_GenderCode] FROM [char](1) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_GradeCode]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_GradeCode] FROM [varchar](2) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_GradeLevelID]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_GradeLevelID] FROM [varchar](2) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ID]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ID] FROM [bigint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ID2]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ID2] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ID3]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ID3] FROM [smallint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ID4]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ID4] FROM [tinyint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_LongDescription]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_LongDescription] FROM [varchar](1000) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_LongName]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_LongName] FROM [varchar](100) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Money]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Money] FROM [money] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Month]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Month] FROM [tinyint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Name]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Name] FROM [varchar](50) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Percentage]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Percentage] FROM [decimal](5, 2) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Phone]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Phone] FROM [varchar](12) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_ShortName]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_ShortName] FROM [varchar](25) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_SSN]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_SSN] FROM [varchar](11) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_StaffTypeCode]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_StaffTypeCode] FROM [char](1) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Time]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Time] FROM [time](7) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_User]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_User] FROM [varchar](40) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Year]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Year] FROM [smallint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_YesNo]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_YesNo] FROM [bit] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[udt_Zip]    Script Date: 4/3/2026 11:28:18 AM ******/
CREATE TYPE [dbo].[udt_Zip] FROM [varchar](10) NOT NULL
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CalculateAge]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_CalculateAge] (
	@DOB AS DATE,
	@EndDate as DATE = null
)

RETURNS TINYINT

AS
BEGIN
	
	DECLARE @Result as TINYINT

	/* IF DEFAULT VALUE (marked as 2999-01-01 as it doesn't accept functions) 
	IS USED THEN USE TODAY'S DATE
	----------------------------------------------------------------------------- */
	IF @EndDate is null SET @EndDate = [dbo].UTC2Indian(GETDATE())
	
	IF (@DOB >= @EndDate) 
		SET @Result = 0
	ELSE
	BEGIN
		-- check if the person had its birthday in the specified year and calculate age
		IF (MONTH(@EndDate)*100)+DAY(@EndDate) >= (MONTH(@DOB)*100)+DAY(@DOB)
			SET @Result = DATEDIFF(Year,@DOB,@EndDate)
		ELSE
			SET @Result = DATEDIFF(Year,@DOB,@EndDate)-1
		END

	RETURN @Result

END


GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetNumericData]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Functio used to get Numeric Data */
CREATE FUNCTION [dbo].[fn_GetNumericData]
(@strAlphaNumeric VARCHAR(256))
 RETURNS VARCHAR(256)
AS
BEGIN
	DECLARE @intAlpha INT
	SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)
	BEGIN
	WHILE @intAlpha > 0
		BEGIN
		SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )
		SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )
		END
	END
	RETURN ISNULL(@strAlphaNumeric,0)
END


GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetPersonDetails]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetPersonDetails]
(
	@UserID BigInt
)

RETURNS @Results TABLE (
	[UserID] [dbo].[udt_ID],
	[PersonID] [dbo].[udt_ID],
	[FirstName] [dbo].[udt_Name] NULL,
	[LastName] [dbo].[udt_Name] NULL,
	[Address1] [dbo].[udt_LongName] NULL,
	[Address2] [dbo].[udt_LongName] NULL,

	[City]	[dbo].[udt_Code50] NULL,
	[StateID] [dbo].[udt_ID] NULL,
	[PinCode] [dbo].[udt_Zip] NULL,
	[Email] [dbo].[udt_Email] NULL,
	[Email2] [dbo].[udt_LongName] NULL,
	[HomePhone] [dbo].[udt_Phone] NULL,
	[Mobile] [dbo].[udt_Phone] NULL

)
AS
BEGIN

	INSERT INTO @Results (UserID, PersonID, FirstName, LastName, Address1, Address2, City, StateID, PinCode, Email, Email2, HomePhone, Mobile)
	SELECT	
		u.UserID,
		p.PersonID,
		p.FirstName, 
		p.LastName,
		a.Address1, 
		a.Address2, 
		a.City, 
		a.StateID, 
		a.PinCode,
		t.Email, t.Email2, t.HomePhone, t.Mobile
	FROM  tblUser u
	INNER JOIN	tblPerson p ON u.PersonID = p.PersonID 
	 LEFT JOIN tblAddress a ON u.PersonID = a.PersonID 
	 LEFT JOIN tblTelecom t ON u.PersonID = t.PersonID
	WHERE  u.UserID = @UserID
	
	
    RETURN 
END


GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetUserNameByID]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetUserNameByID] 
(
    @UserID AS BIGINT
)
RETURNS VARCHAR(105)
AS
BEGIN
    DECLARE @UserName VARCHAR(105);

    SELECT @UserName = p.FirstName + ' ' + p.LastName 
    FROM tblUser u
    INNER JOIN tblPerson p ON u.PersonID = p.PersonID
    WHERE u.UserID = @UserID;

    RETURN @UserName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetValidCharacters]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetValidCharacters]
(
	@inputString VARCHAR(MAX),
	@validChars VARCHAR(100)
)
RETURNS VARCHAR(500) AS
BEGIN
  
    WHILE @inputString like '%[^' + @validChars + ']%'
   SELECT @inputString = REPLACE(@inputString,SUBSTRING(@inputString,PATINDEX('%[^' + @validChars + ']%',@inputString),1),'')
 
   RETURN @inputString
END


GO
/****** Object:  UserDefinedFunction [dbo].[fn_RowNumberGrouping]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_RowNumberGrouping]

(

      -- Add the parameters for the function here

      @RowNumber AS INT,

      @RowsInGroup AS INT

)

RETURNS INT

AS

BEGIN

      -- Declare the return variable here

      DECLARE @RESULT AS INT

      -- Add the T-SQL statements to compute the return value here

      SET @RESULT = cast(((@RowNumber-1)/@RowsInGroup) as int)+1

     

      -- Return the result of the function

      RETURN @RESULT

END


GO
/****** Object:  UserDefinedFunction [dbo].[fnLastDateOfMonth]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fnLastDateOfMonth]
(
	@CurrentDay			int,
	@CurrentMonth		int,
	@CurrentYear		int   
)
RETURNS  datetime
AS
BEGIN
	DECLARE	@CurrentDate	datetime

	IF (@CurrentDay >= 31 and @CurrentMonth <> 2) or (@CurrentDay >= 29 and @CurrentMonth = 2)
	BEGIN
		IF (@CurrentMonth < 12)
			SET @CurrentDate = (select DATEADD(day, -1, CONVERT(varchar(2), @CurrentMonth + 1) + '/' + CONVERT(varchar(2) , 1 ) + '/' + CONVERT(varchar(4), @CurrentYear)))
		ELSE
			SET @CurrentDate = (select DATEADD(day, -1, CONVERT(varchar(2), 1) + '/' +  CONVERT(varchar(2) , 1 ) + '/' + CONVERT(varchar(4), @CurrentYear + 1)))
	END
	ELSE
	BEGIN
		SET	@CurrentDate = CONVERT(varchar(2), @CurrentMonth) + '/' + CONVERT(varchar(2) ,@CurrentDay ) + '/' + CONVERT(varchar(4), @CurrentYear)
	END
	
	RETURN @CurrentDate

END

-- select dbo.fn_FormatSchedule(1,'01/10/2008','31/10/2008')


GO
/****** Object:  UserDefinedFunction [dbo].[mfn_GetNumericData]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Functio used to get Numeric Data */
CREATE FUNCTION [dbo].[mfn_GetNumericData]
(@strAlphaNumeric VARCHAR(256))
 RETURNS VARCHAR(256)
AS
BEGIN
	DECLARE @intAlpha INT
	SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)
	BEGIN
	WHILE @intAlpha > 0
		BEGIN
		SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )
		SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )
		END
	END
	RETURN ISNULL(@strAlphaNumeric,0)
END


GO
/****** Object:  UserDefinedFunction [dbo].[pwdDecrypt]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[pwdDecrypt] (
	@Pwd VARCHAR(256),
	@Text VARCHAR(8000)
)
RETURNS VARCHAR(8000)
AS

BEGIN
DECLARE @Box TABLE (i TINYINT, v TINYINT)

INSERT @Box
(
i,
v
)
SELECT i,
v
FROM dbo.fnInitRc4(@Pwd)

DECLARE @Index SMALLINT,
@i SMALLINT,
@j SMALLINT,
@t TINYINT,
@k SMALLINT,
@CipherBy TINYINT,
@Cipher VARCHAR(8000)

SELECT @Index = 1,
@i = 0,
@j = 0,
@Cipher = ''

WHILE @Index <= DATALENGTH(@Text)
BEGIN
SELECT @i = (@i + 1) % 256

SELECT @j = (@j + b.v) % 256
FROM @Box b
WHERE b.i = @i

SELECT @t = v
FROM @Box
WHERE i = @i

UPDATE b
SET b.v = (SELECT w.v FROM @Box w WHERE w.i = @j)
FROM @Box b
WHERE b.i = @i

UPDATE @Box
SET v = @t
WHERE i = @j

SELECT @k = v
FROM @Box
WHERE i = @i

SELECT @k = (@k + v) % 256
FROM @Box
WHERE i = @j

SELECT @k = v
FROM @Box
WHERE i = @k

SELECT @CipherBy = ASCII(SUBSTRING(@Text, @Index, 1)) ^ @k,
@Cipher = @Cipher + CHAR(@CipherBy)

SELECT @Index = @Index +1
END

RETURN @Cipher
END


GO
/****** Object:  UserDefinedFunction [dbo].[Tool_VarbinaryToVarcharHex]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Tool_VarbinaryToVarcharHex] (
	@VarbinaryValue	VARBINARY(max)
)
RETURNS VARCHAR(max) AS
	BEGIN
	DECLARE @NumberOfBytes 	INT

	SET @NumberOfBytes = DATALENGTH(@VarbinaryValue)
	-- PART ONE --
	IF (@NumberOfBytes > 4)
	BEGIN
		DECLARE @FirstHalfNumberOfBytes INT
		DECLARE @SecondHalfNumberOfBytes INT
		SET @FirstHalfNumberOfBytes  = @NumberOfBytes/2
		SET @SecondHalfNumberOfBytes = @NumberOfBytes - @FirstHalfNumberOfBytes
		-- Call this function recursively with the two parts of the input split in half
		RETURN dbo.Tool_VarbinaryToVarcharHex(CAST(SUBSTRING(@VarbinaryValue, 1					        , @FirstHalfNumberOfBytes)  AS VARBINARY(max)))
			 + dbo.Tool_VarbinaryToVarcharHex(CAST(SUBSTRING(@VarbinaryValue, @FirstHalfNumberOfBytes+1 , @SecondHalfNumberOfBytes) AS VARBINARY(max)))
	END
	
	IF (@NumberOfBytes = 0)
	BEGIN
		RETURN ''	-- No bytes found, therefore no 'hex string' is returned
	END
	
	-- PART TWO --
	DECLARE @LowByte 		INT
	DECLARE @HighByte 		INT
	-- @NumberOfBytes <= 4 (four or less characters/8 hex digits were input)
	--						 eg. 88887777 66665555 44443333 22221111
	-- We'll process ONLY the right-most (least-significant) Byte, which consists
	-- of eight bits, or two hexadecimal values (eg. 22221111 --> XY) 
	-- where XY are two hex digits [0-f]

	-- 1. Carve off the rightmost four bits/single hex digit (ie 1111)
	--    BINARY AND 15 will result in a number with maxvalue of 15
	SET @LowByte = CAST(@VarbinaryValue AS INT) & 15
	-- Now determine which ASCII char value
	SET @LowByte = CASE 
	WHEN (@LowByte < 10)		-- 9 or less, convert to digits [0-9]
		THEN (48 + @LowByte)	-- 48 ASCII = 0 ... 57 ASCII = 9
		ELSE (87 + @LowByte)	-- else 10-15, convert to chars [a-f]
	END							-- (87+10)97 ASCII = a ... (87+15_102 ASCII = f

	-- 2. Carve off the rightmost eight bits/single hex digit (ie 22221111)
	--    Divide by 16 does a shift-left (now processing 2222)
	SET @HighByte = CAST(@VarbinaryValue AS INT) & 255
	SET @HighByte = (@HighByte / 16)
	-- Again determine which ASCII char value	
	SET @HighByte = CASE 
	WHEN (@HighByte < 10)		-- 9 or less, convert to digits [0-9]
		THEN (48 + @HighByte)	-- 48 ASCII = 0 ... 57 ASCII = 9
		ELSE (87 + @HighByte)	-- else 10-15, convert to chars [a-f]
	END							-- (87+10)97 ASCII = a ... (87+15)102 ASCII = f
	
	-- 3. Trim the byte (two hex values) from the right (least significant) input Binary
	--    in preparation for further parsing
	SET @VarbinaryValue = SUBSTRING(@VarbinaryValue, 1, (@NumberOfBytes-1))

	-- 4. Recursively call this method on the remaining Binary data, concatenating the two 
	--    hexadecimal 'values' we just decoded as their ASCII character representation
	--    ie. we pass 88887777 66665555 44443333 back to this function, adding XY to the result string
	RETURN dbo.Tool_VarbinaryToVarcharHex(@VarbinaryValue) + CHAR(@HighByte) + CHAR(@LowByte)
END


GO
/****** Object:  UserDefinedFunction [dbo].[UTC2Indian]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[UTC2Indian] (@UTCTime AS DATETIME)
RETURNS DATETIME
AS

BEGIN

  SET @UTCTime = CONVERT(DATETIME, CONVERT(VARCHAR(20), SWITCHOFFSET(SYSDATETIMEOFFSET(), '+05:30'), 113))
  RETURN @UTCTime

END


GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddress](
	[AddressID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[PersonID] [dbo].[udt_ID] NOT NULL,
	[Address1] [dbo].[udt_LongName] NULL,
	[Address2] [dbo].[udt_LongName] NULL,
	[City] [dbo].[udt_Code50] NULL,
	[StateID] [dbo].[udt_ID] NULL,
	[PinCode] [dbo].[udt_Zip] NULL,
	[Location] [dbo].[udt_LongDescription] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[CartID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[UserID] [dbo].[udt_ID] NOT NULL,
	[ProductID] [dbo].[udt_ID] NOT NULL,
	[Quantity] [dbo].[udt_ID2] NOT NULL,
	[AddDate] [dbo].[udt_Datetime] NULL,
	[IsBuy] [dbo].[udt_YesNo] NOT NULL,
	[BuyDate] [dbo].[udt_Datetime] NULL,
	[IsRemove] [dbo].[udt_YesNo] NOT NULL,
	[RemoveDate] [dbo].[udt_Datetime] NULL,
	[IsSaveForLater] [dbo].[udt_YesNo] NOT NULL,
	[SaveForLaterDate] [dbo].[udt_Datetime] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCoupon]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCoupon](
	[CouponID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[CouponCode] [varchar](25) NOT NULL,
	[ApplyCouponToAllProduct] [dbo].[udt_YesNo] NOT NULL,
	[IsInrOrPercentage] [char](1) NOT NULL,
	[INR] [dbo].[udt_Money] NULL,
	[Percentage] [dbo].[udt_Percentage] NULL,
	[ValidFrom] [dbo].[udt_Datetime] NULL,
	[ValidTo] [dbo].[udt_Datetime] NULL,
	[MinimumPurchase] [dbo].[udt_Money] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_ID] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_ID] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblCoupon] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[ApplicationName] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Phone1] [varchar](20) NULL,
	[Phone2] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[DBServerName] [varchar](50) NULL,
	[DatabaseName] [varchar](50) NULL,
	[DBUserName] [varchar](40) NULL,
	[DBPassword] [varchar](30) NULL,
	[IsActive] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PaymentGatewayID] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiscount]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscount](
	[DiscountID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[Discount] [dbo].[udt_LongName] NOT NULL,
	[IsInrOrPercentage] [char](1) NOT NULL,
	[INR] [dbo].[udt_Money] NULL,
	[Percentage] [dbo].[udt_Percentage] NULL,
	[MinimumPurchase] [dbo].[udt_Money] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_ID] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_ID] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblDiscount] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocumentsType]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocumentsType](
	[DocTypeID] [dbo].[udt_ID2] IDENTITY(1,1) NOT NULL,
	[DocType] [dbo].[udt_Code50] NOT NULL,
 CONSTRAINT [PK_tblDocumentsType] PRIMARY KEY CLUSTERED 
(
	[DocTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblErrorLog]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblErrorLog](
	[LogID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [varchar](255) NOT NULL,
	[ApplicationName] [varchar](255) NULL,
	[EventDateTime] [datetime] NULL,
	[Device] [dbo].[udt_Name] NULL,
	[PageName] [varchar](max) NULL,
	[URL] [varchar](max) NULL,
	[PreviousURL] [varchar](max) NULL,
	[UserName] [varchar](256) NULL,
	[Browser] [varchar](max) NULL,
	[Source] [varchar](1000) NULL,
	[StackTrace] [varchar](max) NULL,
	[StackTraceString] [varchar](max) NULL,
	[Status] [varchar](100) NULL,
 CONSTRAINT [PK_tblErrorLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvent]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvent](
	[EventID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[EventName] [dbo].[udt_LongName] NOT NULL,
	[EventDescription] [dbo].[udt_Description] NULL,
	[StartDate] [dbo].[udt_Date] NULL,
	[EndDate] [dbo].[udt_Date] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Date] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Date] NULL,
 CONSTRAINT [PK_tblEvent] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGatewayLog]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGatewayLog](
	[GatewayLogID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[order_id] [dbo].[udt_LongName] NOT NULL,
	[payment_id] [dbo].[udt_LongName] NULL,
	[entity] [dbo].[udt_Name] NULL,
	[status] [dbo].[udt_Name] NULL,
	[method] [dbo].[udt_Name] NULL,
	[card_id] [dbo].[udt_Name] NULL,
	[bank] [dbo].[udt_LongName] NULL,
	[wallet] [dbo].[udt_Name] NULL,
	[vpa] [dbo].[udt_Name] NULL,
	[amount] [dbo].[udt_Name] NULL,
	[fee] [dbo].[udt_Name] NULL,
	[tax] [dbo].[udt_Name] NULL,
	[error_code] [dbo].[udt_Name] NULL,
	[error_description] [dbo].[udt_LongDescription] NULL,
	[error_source] [dbo].[udt_Name] NULL,
	[error_step] [dbo].[udt_Name] NULL,
	[error_reason] [dbo].[udt_LongName] NULL,
	[amount_refunded] [dbo].[udt_Name] NULL,
	[refund_status] [dbo].[udt_Name] NULL,
	[created_at] [dbo].[udt_Name] NULL,
	[raw_response] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblGatewayLog] PRIMARY KEY CLUSTERED 
(
	[GatewayLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[GenderCode] [dbo].[udt_GenderCode] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_tblGender] PRIMARY KEY CLUSTERED 
(
	[GenderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [U_tblGender_Gender] UNIQUE NONCLUSTERED 
(
	[Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[UserID] [dbo].[udt_ID] NOT NULL,
	[OrderTypeID] [dbo].[udt_ID2] NOT NULL,
	[Amount] [dbo].[udt_Money] NULL,
	[DiscountAmount] [dbo].[udt_Money] NULL,
	[CouponAmount] [dbo].[udt_Money] NULL,
	[PaymentAmount] [dbo].[udt_Money] NULL,
	[DeliveryLocationID] [dbo].[udt_ID] NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[OrderDetailID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[OrderID] [dbo].[udt_ID] NOT NULL,
	[CartID] [dbo].[udt_ID] NULL,
	[ProductID] [dbo].[udt_ID] NOT NULL,
	[Quantity] [dbo].[udt_ID2] NOT NULL,
	[Discount] [dbo].[udt_Money] NULL,
	[TotalPrice] [dbo].[udt_Money] NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderType]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderType](
	[OrderTypeID] [dbo].[udt_ID2] IDENTITY(1,1) NOT NULL,
	[OrderTypeCode] [dbo].[udt_Code2] NOT NULL,
	[OrderType] [dbo].[udt_Code50] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
 CONSTRAINT [PK_tblOrderType] PRIMARY KEY CLUSTERED 
(
	[OrderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[PaymentID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[OrderID] [dbo].[udt_ID] NULL,
	[Amount] [dbo].[udt_Money] NULL,
	[PaymentDate] [dbo].[udt_Datetime] NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentGateway]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentGateway](
	[PaymentGatewayID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[MerchantID] [dbo].[udt_LongName] NULL,
	[RazorpayKey] [dbo].[udt_LongName] NULL,
	[RazorpaySecret] [dbo].[udt_LongName] NULL,
	[IsSandbox] [dbo].[udt_YesNo] NOT NULL,
 CONSTRAINT [PK_tblPaymentGateway] PRIMARY KEY CLUSTERED 
(
	[PaymentGatewayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson](
	[PersonID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[PersonTypeCode] [dbo].[udt_Code2] NULL,
	[FirstName] [dbo].[udt_Name] NOT NULL,
	[MiddleInitials] [dbo].[udt_Code10] NULL,
	[LastName] [dbo].[udt_Name] NOT NULL,
	[ParentsFirstName] [dbo].[udt_Name] NULL,
	[ParentsMiddleInitials] [dbo].[udt_Code10] NULL,
	[ParentsLastName] [dbo].[udt_Name] NULL,
	[SpouseFirstName] [dbo].[udt_Name] NULL,
	[SpouseMiddleInitials] [dbo].[udt_Code10] NULL,
	[SpouseLastName] [dbo].[udt_Name] NULL,
	[Child1FirstName] [dbo].[udt_Name] NULL,
	[Child1MiddleInitials] [dbo].[udt_Code10] NULL,
	[Child1LastName] [dbo].[udt_Name] NULL,
	[Child2FirstName] [dbo].[udt_Name] NULL,
	[Child2MiddleInitials] [dbo].[udt_Code10] NULL,
	[Child2LastName] [dbo].[udt_Name] NULL,
	[TotalAdultFamilyMember] [dbo].[udt_ID2] NULL,
	[TotalMinorFamilyMember] [dbo].[udt_ID2] NULL,
	[DOB] [dbo].[udt_Datetime] NULL,
	[PlaceOfBirth] [dbo].[udt_Name] NULL,
	[GenderCode] [dbo].[udt_Code2] NULL,
	[Occupation] [dbo].[udt_Name] NULL,
	[BloodGroupID] [dbo].[udt_ID2] NULL,
	[WorkingIn] [dbo].[udt_Description] NULL,
	[KnownMember] [dbo].[udt_Description] NULL,
	[ReasonToJoin] [dbo].[udt_LongDescription] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblPerson] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](500) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductCaption] [nvarchar](500) NULL,
	[CategoryID] [dbo].[udt_ID] NOT NULL,
	[SubCategoryID] [dbo].[udt_ID] NULL,
	[BrandID] [dbo].[udt_ID] NULL,
	[SizeID] [dbo].[udt_ID] NULL,
	[ColorID] [dbo].[udt_ID] NULL,
	[ImageURL] [dbo].[udt_Description] NULL,
	[Price] [dbo].[udt_Money] NULL,
	[DiscountID] [dbo].[udt_ID] NULL,
	[CouponID] [dbo].[udt_ID] NULL,
	[CustomerID] [dbo].[udt_ID] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[Status] [dbo].[udt_Name] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductBrand]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductBrand](
	[BrandID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CategoryID] [dbo].[udt_ID] NOT NULL,
	[SubCategoryID] [dbo].[udt_ID] NOT NULL,
	[Brand] [dbo].[udt_Name] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductBrand_1] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductCategory]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductCategory](
	[CategoryID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[Category] [dbo].[udt_Name] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductColor]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductColor](
	[ColorID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CategoryID] [dbo].[udt_ID] NOT NULL,
	[SubCategoryID] [dbo].[udt_ID] NOT NULL,
	[Color] [dbo].[udt_Name] NOT NULL,
	[ColorCode] [dbo].[udt_Name] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductColor_1] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductImage]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductImage](
	[ProductImageID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[ProductID] [dbo].[udt_ID] NOT NULL,
	[ImageURL] [dbo].[udt_Description] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductImage] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductRatings]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductRatings](
	[ProductRatingID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[ProductID] [dbo].[udt_ID2] NOT NULL,
	[UserID] [dbo].[udt_ID2] NOT NULL,
	[Rating] [dbo].[udt_ID2] NOT NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK__tblProdu__3214EC073BDCDD31] PRIMARY KEY CLUSTERED 
(
	[ProductRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSize]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSize](
	[SizeID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CategoryID] [dbo].[udt_ID] NOT NULL,
	[SubCategoryID] [dbo].[udt_ID] NOT NULL,
	[Size] [dbo].[udt_Name] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductSize_1] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSubCategory]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSubCategory](
	[SubCategoryID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[CategoryID] [dbo].[udt_ID] NOT NULL,
	[SubCategory] [dbo].[udt_Name] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[DropDate] [dbo].[udt_Datetime] NULL,
	[ActivationDate] [dbo].[udt_Datetime] NULL,
	[DisplayOrder] [dbo].[udt_ID2] NOT NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblProductSubCategory_1] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[State] [dbo].[udt_Name] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTelecom]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelecom](
	[TelecomID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[PersonID] [dbo].[udt_ID] NOT NULL,
	[HomePhone] [dbo].[udt_Phone] NULL,
	[Mobile] [dbo].[udt_Phone] NULL,
	[Email] [dbo].[udt_Email] NULL,
	[Email2] [dbo].[udt_Email] NULL,
	[CreatedBy] [dbo].[udt_Name] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_Name] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblTelecom] PRIMARY KEY CLUSTERED 
(
	[TelecomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransaction]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransaction](
	[TransactionID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[PaymentGatewayID] [dbo].[udt_ID] NULL,
	[PaymentID] [dbo].[udt_ID] NOT NULL,
	[MerchantID] [dbo].[udt_Name] NULL,
	[rzp_orderid] [dbo].[udt_LongName] NULL,
	[rzp_paymentid] [dbo].[udt_LongName] NULL,
	[Amount] [dbo].[udt_Money] NULL,
	[ProcessingFee] [dbo].[udt_Money] NULL,
	[Currency] [dbo].[udt_Code10] NULL,
	[PaymentStatus] [dbo].[udt_Code50] NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblTransaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[UserName] [dbo].[udt_User] NULL,
	[UserMobile] [dbo].[udt_Phone] NULL,
	[Password] [varbinary](255) NULL,
	[PersonID] [dbo].[udt_ID] NOT NULL,
	[ParentsID] [dbo].[udt_ID] NULL,
	[ParentsGender] [char](1) NULL,
	[UserTypeCode] [dbo].[udt_Code2] NULL,
	[Designation] [dbo].[udt_ShortName] NULL,
	[NumberOfRowsPerPage] [dbo].[udt_ID2] NULL,
	[CanAccessFinancialInformation] [dbo].[udt_YesNo] NOT NULL,
	[CanAccessAdmin] [dbo].[udt_YesNo] NOT NULL,
	[PasswordResetOn] [dbo].[udt_Datetime] NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
	[FcmID] [nvarchar](max) NULL,
	[DeviceID] [dbo].[udt_Code50] NULL,
	[IsDeviceIDUpdated] [dbo].[udt_YesNo] NOT NULL,
	[ProfileImage] [varchar](200) NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserDoc]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserDoc](
	[UserID] [dbo].[udt_ID] NOT NULL,
	[DocTypeID] [dbo].[udt_ID2] NOT NULL,
	[DocPath] [varchar](200) NOT NULL,
	[CreatedBy] [dbo].[udt_User] NOT NULL,
	[CreatedOn] [dbo].[udt_Datetime] NOT NULL,
	[ModifiedBy] [dbo].[udt_User] NULL,
	[ModifiedOn] [dbo].[udt_Datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserLoginLog]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserLoginLog](
	[LoginID] [dbo].[udt_ID] IDENTITY(1,1) NOT NULL,
	[UserID] [dbo].[udt_ID] NOT NULL,
	[DeviceName] [dbo].[udt_Code15] NULL,
	[DeviceID] [dbo].[udt_Code50] NULL,
	[FcmID] [nvarchar](max) NULL,
	[LogTime] [dbo].[udt_Datetime] NOT NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[Location] [dbo].[udt_LongDescription] NULL,
	[Activity] [dbo].[udt_LongName] NULL,
	[Browser] [dbo].[udt_Code50] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserType]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserType](
	[UserTypeID] [dbo].[udt_ID2] IDENTITY(1,1) NOT NULL,
	[UserTypeCode] [dbo].[udt_Code2] NOT NULL,
	[UserType] [dbo].[udt_Code50] NOT NULL,
	[IsActive] [dbo].[udt_YesNo] NOT NULL,
 CONSTRAINT [PK_tblUserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAddress] ADD  CONSTRAINT [DF_tblAddress_PersonID]  DEFAULT ((0)) FOR [PersonID]
GO
ALTER TABLE [dbo].[tblCart] ADD  CONSTRAINT [DF_tblCart_IsBuy]  DEFAULT ((0)) FOR [IsBuy]
GO
ALTER TABLE [dbo].[tblCart] ADD  CONSTRAINT [DF_tblCart_IsRemove]  DEFAULT ((0)) FOR [IsRemove]
GO
ALTER TABLE [dbo].[tblCart] ADD  CONSTRAINT [DF_tblCart_IsSaveForLater]  DEFAULT ((0)) FOR [IsSaveForLater]
GO
ALTER TABLE [dbo].[tblCustomer] ADD  CONSTRAINT [DF__tblCustom__CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblOrder] ADD  CONSTRAINT [DF_tblOrder_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblOrderDetail] ADD  CONSTRAINT [DF_tblOrderDetail_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblOrderType] ADD  CONSTRAINT [DF_tblOrderType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblPayment] ADD  CONSTRAINT [DF_tblPayment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblPaymentGateway] ADD  CONSTRAINT [DF_tblPaymentGateway_IsSandbox]  DEFAULT ((0)) FOR [IsSandbox]
GO
ALTER TABLE [dbo].[tblProductRatings] ADD  CONSTRAINT [DF__tblProduc__Creat__3AD6B8E2]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblTransaction] ADD  CONSTRAINT [DF_tblTransaction_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_NumberOfRowsPerPage]  DEFAULT ((20)) FOR [NumberOfRowsPerPage]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_CanAccessFinancialInformation]  DEFAULT ((1)) FOR [CanAccessFinancialInformation]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_CanAccessAdmin]  DEFAULT ((1)) FOR [CanAccessAdmin]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_IsDeviceIDUpdated]  DEFAULT ((0)) FOR [IsDeviceIDUpdated]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblUserType] ADD  CONSTRAINT [DF_tblUserType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomer_tblPaymentGateway] FOREIGN KEY([PaymentGatewayID])
REFERENCES [dbo].[tblPaymentGateway] ([PaymentGatewayID])
GO
ALTER TABLE [dbo].[tblCustomer] CHECK CONSTRAINT [FK_tblCustomer_tblPaymentGateway]
GO
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblCustomer]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblUser]
GO
ALTER TABLE [dbo].[tblPaymentGateway]  WITH CHECK ADD  CONSTRAINT [FK_tblPaymentGateway_tblCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[tblPaymentGateway] CHECK CONSTRAINT [FK_tblPaymentGateway_tblCustomer]
GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [FK_tblPerson_tblCustomer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK_tblPerson_tblCustomer]
GO
ALTER TABLE [dbo].[tblProductImage]  WITH CHECK ADD  CONSTRAINT [FK_tblProductImage_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblProductImage] CHECK CONSTRAINT [FK_tblProductImage_tblProduct]
GO
ALTER TABLE [dbo].[tblProductRatings]  WITH CHECK ADD  CONSTRAINT [FK_tblProductRatings_tblProductRatings] FOREIGN KEY([ProductRatingID])
REFERENCES [dbo].[tblProductRatings] ([ProductRatingID])
GO
ALTER TABLE [dbo].[tblProductRatings] CHECK CONSTRAINT [FK_tblProductRatings_tblProductRatings]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblPerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[tblPerson] ([PersonID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblPerson]
GO
ALTER TABLE [dbo].[tblUserDoc]  WITH CHECK ADD  CONSTRAINT [FK_tblUserDoc_tblDocumentsType] FOREIGN KEY([DocTypeID])
REFERENCES [dbo].[tblDocumentsType] ([DocTypeID])
GO
ALTER TABLE [dbo].[tblUserDoc] CHECK CONSTRAINT [FK_tblUserDoc_tblDocumentsType]
GO
ALTER TABLE [dbo].[tblUserDoc]  WITH CHECK ADD  CONSTRAINT [FK_tblUserDoc_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblUserDoc] CHECK CONSTRAINT [FK_tblUserDoc_tblUser]
GO
ALTER TABLE [dbo].[tblProductRatings]  WITH CHECK ADD  CONSTRAINT [CK__tblProduc__Ratin__39E294A9] CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[tblProductRatings] CHECK CONSTRAINT [CK__tblProduc__Ratin__39E294A9]
GO
/****** Object:  StoredProcedure [dbo].[rpt_InvoiceReport]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[rpt_InvoiceReport]
	-- Add the parameters for the stored procedure here
	@PaymentID			VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    SELECT t.TransactionID, t.rzp_paymentid, t.PaymentStatus,
	t.PaymentID, t.Amount, t.ProcessingFee, p.PaymentDate,
	'FT' + CONVERT(VARCHAR(100), t.rzp_orderid) AS InvoiceNumber
    FROM tblTransaction t
    INNER JOIN tblPayment p ON t.PaymentID = p.PaymentID
    WHERE t.rzp_paymentid = @PaymentID
    
END
GO
/****** Object:  StoredProcedure [dbo].[spCart_InsertUpdate]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spCart_InsertUpdate] 
(	
	@CartID						udt_ID,
	@UserID						udt_ID,
	@ProductID					udt_ID,
	@Quantity					udt_ID2,
	@Status						udt_ID4, -- 1 => If Buy, 2 => IsRemove, 3 => IsSaveForLater, 4 => Buy again, 5 => Increase product item, 6 => Decrease product item
	@UserName					varchar(50)
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500)
	
	BEGIN TRY
		BEGIN TRANSACTION
		
		IF (@CartID = 0)
		BEGIN			
			IF EXISTS (SELECT ProductID FROM tblCart WHERE UserID=@UserID AND ProductID=@ProductID AND IsBuy=0)
			BEGIN
				IF EXISTS (SELECT ProductID FROM tblCart WHERE UserID=@UserID AND ProductID=@ProductID AND IsBuy=0 AND (IsRemove=1 OR IsSaveForLater=1))
				BEGIN
					
					SELECT @CartID = CartID FROM tblCart WHERE UserID=@UserID AND ProductID=@ProductID AND IsBuy=0 AND (IsRemove=1 OR IsSaveForLater=1)
					
					UPDATE tblCart
					SET IsRemove=0,
						RemoveDate=NULL,
						IsSaveForLater=0,
						SaveForLaterDate=NULL,
						Quantity=CASE WHEN Quantity=0 THEN 1 ELSE Quantity END,
						ModifiedBy=@UserName,
						ModifiedOn=GETDATE()
					WHERE CartID=@CartID
				END
			END
			ELSE			
			BEGIN
				INSERT INTO tblCart (UserID,ProductID,Quantity,AddDate,CreatedBy,CreatedOn)
				VALUES (@UserID,@ProductID,@Quantity,GETDATE(),@UserName,GETDATE())
			END															
		END  
		ELSE
		BEGIN				
				IF (@Status=1) -- 1=>Buy
				BEGIN
					UPDATE tblCart
					SET 
					IsBuy=1,
					BuyDate=GETDATE(),
					ModifiedBy=@UserName,
					ModifiedOn=GETDATE()
				WHERE CartID=@CartID	
				END
				IF (@Status=2) --2 => IsRemove
				BEGIN
					UPDATE tblCart
					SET 
					IsRemove=1,
					RemoveDate=GETDATE(),
					IsSaveForLater=0,
					SaveForLaterDate=NULL,
					ModifiedBy=@UserName,
					ModifiedOn=GETDATE()
				WHERE CartID=@CartID	
				END
				IF (@Status=3) --3 => IsSaveForLater
				BEGIN
					UPDATE tblCart
					SET IsSaveForLater=1,
					SaveForLaterDate=GETDATE(),
					ModifiedBy=@UserName,
					ModifiedOn=GETDATE()
				WHERE CartID=@CartID	
				END	
				
				IF (@Status=4) --4 => Buy again
				BEGIN
					INSERT INTO tblCart (UserID,ProductID,Quantity,AddDate,CreatedBy,CreatedOn)
					SELECT  UserID,ProductID,Quantity,GETDATE(),@UserName,GETDATE()
					FROM tblCart
					WHERE CartID=@CartID	
				END
				
				IF (@Status=5) --5 => Increase number of item
				BEGIN
					UPDATE tblCart
					SET Quantity=Quantity+1,
					ModifiedBy=@UserName,
					ModifiedOn=GETDATE()
					WHERE CartID=@CartID
				END

				IF (@Status=6) --6 => Decrease number of item
				BEGIN
					UPDATE tblCart
					SET Quantity=Quantity-1,
					ModifiedBy=@UserName,
					ModifiedOn=GETDATE()
					WHERE CartID=@CartID

					IF ((SELECT Quantity FROM tblCart WHERE CartID=@CartID) = 0)
					BEGIN
						UPDATE tblCart
						SET 
						IsRemove=1,
						RemoveDate=GETDATE(),
						IsSaveForLater=0,
						SaveForLaterDate=NULL,
						ModifiedBy=@UserName,
						ModifiedOn=GETDATE()
						WHERE CartID=@CartID	
					END

				END



		END

		COMMIT TRANSACTION		
		RETURN	
	END TRY
	BEGIN CATCH				
		ROLLBACK TRANSACTION
		IF (@ErrMsg IS NULL) SELECT @ErrMsg = 'There is a problem to save data. Please contact support.'
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
		
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spCartItems_GetList]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spCartItems_GetList]
(
	@UserID		udt_ID
)
AS                          
BEGIN    
	BEGIN TRY
		DECLARE @ErrMsg	VARCHAR(4000)
					   
		SELECT  c.CartID,c.ProductID,c.Quantity,c.AddDate,c.IsBuy,c.BuyDate,c.IsRemove,c.RemoveDate,c.IsSaveForLater,c.SaveForLaterDate,c.CreatedOn,c.ModifiedOn,
				p.ProductName,p.ImageURL,p.Price,p.ProductDescription,
				d.IsInrOrPercentage, (CASE WHEN d.IsInrOrPercentage = 'I' THEN d.Discount ELSE (p.Price*c.Quantity)*d.Percentage* 1.0/100 END) AS Discount
		FROM tblCart c
		INNER JOIN tblProduct p ON c.ProductID=p.ProductID
		LEFT JOIN tblDiscount d ON p.DiscountID=d.DiscountID
		WHERE UserID=@UserID 
		AND IsBuy = 0
		AND IsRemove = 0
		AND IsSaveForLater = 0
		ORDER BY AddDate

		RETURN
	END TRY 
	BEGIN CATCH 
		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN 
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spCategory_Delete]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategory_Delete]
	@CategoryID				udt_ID
AS                          
BEGIN    
	BEGIN TRY
		SET NOCOUNT ON;
		SET ARITHABORT ON;

		DECLARE @ErrMsg	VARCHAR(4000)

		IF EXISTS (
					SELECT 1 
					  FROM tblProductSubCategory 
					 WHERE CategoryID = @CategoryID
					)
		BEGIN
			RAISERROR('The category cannot be deleted because it is used.',16,-1)
			RETURN;
		END
		
		BEGIN TRANSACTION

			DELETE tblProductCategory
			WHERE CategoryID = @CategoryID

		COMMIT TRANSACTION
		SET ARITHABORT OFF;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		IF @ErrMsg IS NULL SELECT @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
	END CATCH       
END 
GO
/****** Object:  StoredProcedure [dbo].[spCategory_GetDetails]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategory_GetDetails]
	@CategoryID				udt_ID
AS                          
BEGIN    
	BEGIN TRY
		DECLARE @ErrMsg	VARCHAR(4000)
			   
		SELECT CategoryID,Category
			FROM tblProductCategory 
			WHERE CategoryID = @CategoryID

		RETURN
	END TRY 
	BEGIN CATCH 
		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN 
	END CATCH
END 
GO
/****** Object:  StoredProcedure [dbo].[spCategory_GetList]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategory_GetList]
AS                          
BEGIN    
	BEGIN TRY
		DECLARE @ErrMsg	VARCHAR(4000)
					   
		SELECT CategoryID,Category,DisplayOrder,CreatedBy,CreatedOn,ModifiedBy,ModifiedOn
		FROM tblProductCategory
		ORDER BY DisplayOrder

		RETURN
	END TRY 
	BEGIN CATCH 
		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN 
	END CATCH
END 
GO
/****** Object:  StoredProcedure [dbo].[spCategory_InsertUpdate]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategory_InsertUpdate]
	@CategoryID				udt_ID,
	@Category				VARCHAR(50),
	@UserName				udt_User
AS                          
BEGIN    
	BEGIN TRY
		DECLARE @ErrMsg	VARCHAR(4000), @ModifiedDate udt_DateTime, 
		@MAXDisplayOrder INT = 0
				
		SELECT @ModifiedDate = GETDATE()				

		BEGIN TRANSACTION

			SELECT @MAXDisplayOrder = MAX(DisplayOrder) 
			FROM tblProductCategory
			   
			IF (@CategoryID=0)-- Insert Mode
			BEGIN
				INSERT INTO tblProductCategory (Category,DisplayOrder,CreatedBy,CreatedOn)
				VALUES (@Category,ISNULL(@MAXDisplayOrder,0) + 1,@UserName,@ModifiedDate)
			END
			ELSE -- Update Mode
			BEGIN
				UPDATE tblProductCategory
				SET Category=@Category,
					ModifiedBy=@UserName,
					ModifiedOn=@ModifiedDate
				WHERE CategoryID=@CategoryID
			END	

		COMMIT TRANSACTION
		RETURN
	END TRY 
	BEGIN CATCH 
		ROLLBACK TRANSACTION
		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN 
	END CATCH
END 
GO
/****** Object:  StoredProcedure [dbo].[spCategory_Reorder]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCategory_Reorder] 
(
	@CurrentRowID				udt_ID,
	@CurrentRowDisplayOrder		udt_ID,
	@OtherRowID					udt_ID,
	@OtherRowDisplayOrder		udt_ID
)
AS
BEGIN
BEGIN TRY 
 
	DECLARE @ErrMsg VARCHAR(5000)
	 
	BEGIN TRANSACTION 
		
		UPDATE tblProductCategory
		   SET DisplayOrder = @CurrentRowDisplayOrder
		 WHERE CategoryID = @OtherRowID 
		 
		UPDATE tblProductCategory 
		   SET DisplayOrder = @OtherRowDisplayOrder
		 WHERE CategoryID = @CurrentRowID 
		 
	COMMIT TRANSACTION										
	RETURN
	END TRY
		
	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION
		IF (@ErrMsg != '')
			SELECT @ErrMsg =  ERROR_MESSAGE()
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
	END CATCH
END 
GO
/****** Object:  StoredProcedure [dbo].[spCoupon_DDL]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCoupon_DDL]
AS
BEGIN
	SELECT CouponID, CouponCode
	FROM tblCoupon
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spCustomer_Select]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCustomer_Select]
(
	@ApplicationName		VARCHAR(50)
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)			
		
		
		SELECT CustomerID,CustomerName,ApplicationName,
		BaseURL='localhost/clubapp',
		[Address],Phone1,Phone2,Email,DBServerName,DatabaseName,DBUserName,DBPassword,IsActive,StartDate,EndDate,PaymentGatewayID,CreatedOn
		FROM tblCustomer
		WHERE  ApplicationName = @ApplicationName
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[spDiscount_DDL]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDiscount_DDL]
AS
BEGIN
	SELECT DiscountID, Discount
	FROM tblDiscount
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spErrorLog_Insert]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spErrorLog_Insert]
(  
	@DatabaseName			VARCHAR(255) ,
	@ApplicationName		VARCHAR(255)	=	NULL,
	@EventDateTime			DATETIME		=	NULL,
	@Device					VARCHAR(50)		=	NULL,
	@PageName				VARCHAR(MAX)	=	NULL,
	@URL					VARCHAR(MAX)	=	NULL,
	@PreviousURL			VARCHAR(MAX)	=	NULL,
	@UserName				VARCHAR(100)	=	NULL,
	@Browser				VARCHAR(MAX)	=	NULL,
	@Source					VARCHAR(1000)	=	NULL,
	@StackTrace				VARCHAR(MAX)	=	NULL, 
	@StackTraceString		VARCHAR(MAX)	=	NULL 
)

AS
BEGIN

	BEGIN TRY
	
	DECLARE @ErrMsg	VARCHAR(MAX)	
	
	SET @ErrMsg='Insert error log failed.'

	INSERT INTO tblErrorLog
	(
		DatabaseName,
		ApplicationName,
		EventDateTime,
		Device,
		PageName,
		URL,
		PreviousURL,
		UserName,
		Browser,
		[Source],
		StackTrace,
		StackTraceString	
	)
	VALUES
	(
		@DatabaseName,
		@ApplicationName,
		@EventDateTime,
		@Device,
		@PageName,
		@URL,
		@PreviousURL,
		@UserName,
		@Browser,
		@Source,
		@StackTrace,
		@StackTraceString
	)
	
	END TRY
	BEGIN CATCH	
		INSERT INTO tblErrorLog(DatabaseName,ApplicationName,StackTrace) VALUES (@DatabaseName,@ApplicationName, @ErrMsg)	
	END CATCH
	
END

GO
/****** Object:  StoredProcedure [dbo].[spGatewayLog_Insert]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec tblGatewayLog_Insert 5,'12/2021','admin'
CREATE PROCEDURE [dbo].[spGatewayLog_Insert]
(		
	@order_id			udt_LongName,
	@payment_id			udt_LongName,
	@entity				udt_Name,
	@status				udt_Name,
	@method				udt_Name,
	@card_id			udt_Name,
	@bank				udt_Name,
	@wallet				udt_Name,
	@vpa				udt_Name,
	@amount				udt_Name,
	@fee				udt_Name,
	@tax				udt_Name,
	@error_code			udt_Name,
	@error_description	udt_LongDescription,
	@error_source		udt_Name,
	@error_step			udt_Name,
	@error_reason		udt_LongName,
	@amount_refunded	udt_Name,	
	@refund_status		udt_Name,
	@created_at			udt_Name,
	@raw_response		nvarchar(max)

)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)	
		DECLARE @PaymentGatewayID	BIGINT
		DECLARE @ProcessingFee	DECIMAL(18, 2)
		
		INSERT INTO tblGatewayLog (order_id,payment_id,entity,status,method,card_id,bank,wallet,vpa,amount,fee,tax,error_code,error_description,error_source,error_step,error_reason,amount_refunded,refund_status,created_at,raw_response)
		VALUES (@order_id,@payment_id,@entity,@status,@method,@card_id,@bank,@wallet,@vpa,@amount,@fee,@tax,@error_code,@error_description,@error_source,@error_step,@error_reason,@amount_refunded,@refund_status,@created_at,@raw_response)
		

		SELECT @PaymentGatewayID = SCOPE_IDENTITY();

		
		SELECT @ProcessingFee = ((CONVERT(MONEY, @fee)*1.0)/100 + (CONVERT(MONEY, @tax)*1.0)/100)

		/* After successfylly entry into Gateway Log, we will update transaction table with some info
		---------------------------------------------------------------------------------------------------------*/
		
		update	tblTransaction
		set		PaymentGatewayID = @PaymentGatewayID,
				rzp_paymentid = @payment_id,
				ProcessingFee = @ProcessingFee,
				PaymentStatus = @status
		where	rzp_orderid = @order_id
		
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[spGender_DDL]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGender_DDL]
AS
BEGIN
	SELECT GenderCode, Gender, DisplayOrder
	FROM tblGender
	ORDER BY DisplayOrder

END


GO
/****** Object:  StoredProcedure [dbo].[spGetPaymentGatewayProperties]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[dbo].[spGetPaymentGatewayProperties] 1
CREATE PROCEDURE [dbo].[spGetPaymentGatewayProperties]
(
	@CustomerID			udt_ID
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)	
		DeCLARE @PaymentGatewayID	BIGINT		
		
		
		SELECT @CustomerID = NULLIF(@CustomerID, 0)

		SELECT @PaymentGatewayID = (SELECT ISNULL(PaymentGatewayID, 0) FROM tblCustomer
		WHERE CustomerID = ISNULL(@CustomerID, CustomerID))
	
		SELECT PaymentGatewayID,MerchantID,RazorpayKey,RazorpaySecret,IsSandbox
		FROM tblPaymentGateway
		WHERE PaymentGatewayID = @PaymentGatewayID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
GO

/****** Object:  StoredProcedure [dbo].[spMyProfile_Select]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMyProfile_Select]   
 ( 
	@UserID			    udt_ID
 )  
AS  
BEGIN  
  
 DECLARE @ErrMsg VARCHAR(5000)  

  
 --get the details of the user and associated person  
 SELECT u.UserID, u.UserName, u.PersonID, 
		p.FirstName, p.LastName, p.DOB,
		a.Address1, a.Address2, a.City, a.StateID, a.PinCode,
		t.Email, t.Email2, t.HomePhone, t.Mobile, u.ProfileImage
 FROM    tblUser u
	 INNER JOIN tblPerson p ON u.PersonID = p.PersonID 
	 LEFT JOIN tblAddress a ON u.PersonID = a.PersonID 
	 LEFT JOIN tblTelecom t ON u.PersonID = t.PersonID
 WHERE  u.UserID = @UserID
	  
 RETURN  
   
END  
ERRHANDLER:   
BEGIN  
 RAISERROR(@ErrMsg, 16, 1, 0)  
 RETURN  
END


GO
/****** Object:  StoredProcedure [dbo].[spMyProfile_Update]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMyProfile_Update] 
(		
	@AdminUser			varchar(50),
	--tblUser	
	@UserID				udt_ID,
	@UserName			udt_User,
	@Password			VARCHAR(25),
	
	--tblPerson	
	@FirstName			udt_Name,
	@LastName			udt_Name,
	
	--tblAddress
	@Address1			varchar(100),
	@Address2			varchar(100),
	@City				varchar(50),
	@StateID			varchar(50),
	@PinCode			varchar(10),
	
	--tblTelecom
	@HomePhone			varchar(12),
	@Mobile				varchar(13),
	@Email				varchar(100),
	@Email2				varchar(100)
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500)	
	DECLARE @NewPersonID	bigint
	DECLARE @ExistingPersonID	bigint	

	BEGIN TRANSACTION
		
		BEGIN
		
			SELECT @ExistingPersonID = PersonID from tblUser WHERE PersonID=@UserID
		
		
			UPDATE tblPerson
			SET FirstName = @FirstName,
			LastName=@LastName,
			ModifiedBy=@AdminUser,
			ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE PersonID=@ExistingPersonID			

			SELECT @ErrMsg = @@error
			IF ( @ErrMsg != 0 ) goto ErrHandler	
			
			UPDATE tblAddress
			SET Address1=@Address1,
			Address2=@Address2,
			City=@City,
			StateID=@StateID,
			PinCode=@PinCode,
			ModifiedBy=@AdminUser,
			ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE PersonID=@ExistingPersonID
			
			SELECT @ErrMsg = @@error
			IF ( @ErrMsg != 0 ) goto ErrHandler	
			
			
			UPDATE tblTelecom
			SET HomePhone=@HomePhone,
			Mobile=@Mobile,
			Email=@Email,
			Email2=@Email2,
			ModifiedBy=@AdminUser,
			ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE PersonID=@ExistingPersonID
			
			SELECT @ErrMsg = @@error
			IF ( @ErrMsg != 0 ) goto ErrHandler				
			


			IF (ISNULL(@UserName, '') <> '' AND ISNULL(@Password, '') <> '')
			BEGIN
				UPDATE tblUser
				SET [Password]=CONVERT(VARBINARY(255), pwdencrypt(@Password)),
				ModifiedBy = @AdminUser,
				ModifiedOn = [dbo].UTC2Indian(GETDATE())
				WHERE UserID=@UserID
				
				SELECT @ErrMsg = @@error
				IF (@ErrMsg != 0 ) goto ErrHandler	
			END							
		END

	COMMIT TRANSACTION			
	RETURN

ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	ROLLBACK TRANSACTION
	RETURN
end


GO
/****** Object:  StoredProcedure [dbo].[spMyProfile_UploadImage]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMyProfile_UploadImage] 
(		
	@AdminUser			varchar(50),
	@UserID				udt_ID,		
	@ProfileImage		varchar(200)
	
)	
AS BEGIN
BEGIN TRY
	DECLARE @ErrMsg varchar(500)	
		
	UPDATE tblUser
	SET ProfileImage = @ProfileImage,
	ModifiedBy = @AdminUser,
	ModifiedOn = [dbo].UTC2Indian(GETDATE())
	WHERE UserID=@UserID
				

END TRY
	BEGIN CATCH	
		SELECT @ErrMsg =  'Image not saved successfully!'
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN
	END CATCH
end


GO
/****** Object:  StoredProcedure [dbo].[spOrder_Delete]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spOrder_Delete]
(
	@OrderID		udt_ID
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		
		IF EXISTS (SELECT OrderID FROM tblPayment WHERE ISNULL(OrderID, 0) = @OrderID)
		BEGIN
			SELECT @ErrMsg = 'Order could not be deleted!.'
			RAISERROR(@ErrMsg , 16, 1, 0)
			RETURN	
		END		

		IF EXISTS (SELECT OrderID FROM tblSubscription WHERE ISNULL(OrderID, 0) = @OrderID )
		BEGIN
			SELECT @ErrMsg = 'Order could not be deleted!.'
			RAISERROR(@ErrMsg , 16, 1, 0)
			RETURN	
		END		
		
		--If Exists then delete first
		DELETE tblOrder 
		WHERE OrderID=@OrderID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH

GO
/****** Object:  StoredProcedure [dbo].[spOrder_InsertUpdate]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spOrder_InsertUpdate] 
(		
	@UserID						udt_ID,
	@OrderTypeID				udt_ID2,
	@Amount						udt_Money,
	@DiscountAmount				udt_Money,
	@CouponAmount				udt_Money,
	@DeliveryLocationID			udt_ID,
	@OrderID					udt_ID = NULL OUTPUT
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500), @PaymentAmount money	

	SELECT @OrderID = ISNULL(@OrderID, 0)

	SELECT @PaymentAmount = @Amount - (ISNULL(@DiscountAmount,0) + ISNULL(@CouponAmount,0))

	CREATE TABLE #OrderDetails (
		CartID			bigint,
		ProductID		bigint, 
		Quantity		bigint, 
		Price			money,
		Discount		money
	)

	INSERT INTO #OrderDetails
	SELECT  c.CartID, c.ProductID,c.Quantity,p.Price,(CASE WHEN d.IsInrOrPercentage = 'I' THEN d.Discount ELSE (p.Price*c.Quantity)*d.Percentage* 1.0/100 END) AS Discount
		FROM tblCart c
		INNER JOIN tblProduct p ON c.ProductID=p.ProductID
		LEFT JOIN tblDiscount d ON p.DiscountID=d.DiscountID
		WHERE UserID=1
		AND IsBuy = 0
		AND IsRemove = 0
		AND IsSaveForLater = 0
	
	BEGIN TRY
		BEGIN TRANSACTION
		
		IF (@OrderID = 0)
		BEGIN
			
			INSERT INTO tblOrder(UserID,OrderTypeID,Amount,DiscountAmount,CouponAmount,PaymentAmount,DeliveryLocationID,CreatedBy,CreatedOn)
			VALUES (@UserID,@OrderTypeID,@Amount,@DiscountAmount,@CouponAmount,@PaymentAmount,@DeliveryLocationID,[dbo].[fn_GetUserNameByID](@UserID),[dbo].UTC2Indian(GETDATE()))
				
			SELECT @OrderID = SCOPE_IDENTITY();

			INSERT INTO tblOrderDetail (OrderID,CartID,ProductID,Quantity,Discount,TotalPrice,CreatedBy,CreatedOn)
			SELECT @OrderID, od.CartID, od.ProductID, od.Quantity, od.Discount, od.Price, [dbo].[fn_GetUserNameByID](@UserID),[dbo].UTC2Indian(GETDATE())
			FROM #OrderDetails od

		END 
		ELSE
		BEGIN				
			UPDATE tblOrder
			SET UserID=@UserID,
			OrderTypeID=@OrderTypeID,
			Amount=@Amount,
			DiscountAmount=@DiscountAmount,
			CouponAmount=@CouponAmount,
			PaymentAmount=@PaymentAmount,
			DeliveryLocationID=@DeliveryLocationID,
			ModifiedBy=[dbo].[fn_GetUserNameByID](@UserID),
			ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE OrderID=@OrderID	
			
			DELETE FROM tblOrderDetail WHERE OrderID=@OrderID

			INSERT INTO tblOrderDetail (OrderID,CartID,ProductID,Quantity,Discount,TotalPrice,CreatedBy,CreatedOn)
			SELECT @OrderID, od.CartID, od.ProductID, od.Quantity, od.Discount, od.Price, [dbo].[fn_GetUserNameByID](@UserID),[dbo].UTC2Indian(GETDATE())
			FROM #OrderDetails od

		END

		COMMIT TRANSACTION		
		RETURN @OrderID	
	END TRY
	BEGIN CATCH				
		ROLLBACK TRANSACTION
		IF (@ErrMsg IS NULL) SELECT @ErrMsg = 'There is a problem to save data. Please contact the support.'
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
		
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spOrderDetails_SelectByID]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC tblOrderDetails_SelectByID 1
--CREATE PROCEDURE [dbo].[spOrderDetails_SelectByID] 
--(		
--	@OrderID			udt_ID
--)
--AS 
--BEGIN	
--	DECLARE @ErrMsg        varchar(5000)

--	BEGIN TRY	
--		SELECT o.OrderID, o.OrderTypeID, c.CustomerID, c.CustomerName, ISNULL(e.EventID, 0) AS EventID, ISNULL(e.EventName, 'Monthly Subscription') AS EventName,
--		e.StartDate AS EventStartDate, o.OrderDescription, o.AccountDisplayName, o.AccountEmail, o.OrderAmount, o.FineAfterDays, o.FinePerDay, o.OneTimeFine, o.Logourl
--		FROM tblOrder o
--		INNER JOIN tblOrderType ot ON o.OrderTypeID = ot.OrderTypeID
--		INNER JOIN tblCustomer c On o.CustomerID = c.CustomerID
--		LEFT JOIN tblEvent e ON ISNULL(o.EventID, 0) = e.EventID	
--		WHERE o.OrderID=@OrderID
--	END TRY
--	BEGIN CATCH

--		SET @ErrMsg = ERROR_MESSAGE()
--		RAISERROR(@ErrMsg, 16, 1, 0)
--		RETURN

--	END CATCH
--END

--GO
/****** Object:  StoredProcedure [dbo].[spOrderList_Select]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spOrderList_Select] 
(	
	@CustomerID			udt_ID
)
AS 
BEGIN
	
	DECLARE @StrSql	NVARCHAR(MAX) = ''

	SELECT @CustomerID = NULLIF(@CustomerID, 0)
	
	
	SET	@StrSql =	'
	SELECT o.OrderID, c.CustomerID, c.CustomerName, ISNULL(e.EventID, 0) AS EventID, 
	CASE WHEN o.OrderTypeID = 1 THEN ''Monthly Subscription'' ELSE e.EventName END AS EventName,
	e.StartDate AS EventStartDate,
	o.OrderDescription, o.AccountDisplayName, o.OrderAmount, o.FineAfterDays, o.FinePerDay, o.OneTimeFine, o.Logourl
	FROM tblOrder o
	INNER JOIN tblOrderType ot ON o.OrderTypeID = ot.OrderTypeID
	INNER JOIN tblCustomer c On o.CustomerID = c.CustomerID
	LEFT JOIN tblEvent e ON ISNULL(o.EventID, 0) = e.EventID '

	IF @CustomerID IS NOT NULL
	BEGIN
		SET	@StrSql =	@StrSql + ' WHERE c.CustomerID = ' +  CONVERT(VARCHAR(10), @CustomerID) + ''
	END	
	
	
	SET	@StrSql = @StrSql +  ' ORDER BY c.CustomerName, o.CreatedOn DESC'
	
	--print(@StrSql)

	--Get the list of inspections
	EXEC sp_Executesql @StrSql
	
END

GO
/****** Object:  StoredProcedure [dbo].[spOrderType_DDL]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spOrderType_DDL]
AS
BEGIN
	SELECT OrderTypeID, OrderType
	FROM tblOrderType
	ORDER BY OrderType

END

GO
/****** Object:  StoredProcedure [dbo].[spPayment_Insert]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec tblPayment_Insert 5,'12/2021','admin'
CREATE   PROCEDURE [dbo].[spPayment_Insert]
(	
	@OrderID			udt_ID,
	@Amount				udt_Money=NULL,
	@UserName			udt_Name,
	@PaymentID			udt_ID = NULL OUTPUT
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)			
		
		INSERT INTO tblPayment (OrderID,Amount,PaymentDate,CreatedBy,CreatedOn)
		VALUES (@OrderID, @Amount, dbo.UTC2Indian(GETDATE()), @UserName, dbo.UTC2Indian(GETDATE()))
		
		
		SELECT @PaymentID = SCOPE_IDENTITY()					
		
		RETURN @PaymentID

	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[spPaymentDetails_SelectByID]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC spPaymentDetails_SelectByID 1
CREATE   PROCEDURE [dbo].[spPaymentDetails_SelectByID] 
(		
	@PaymentID			udt_ID
)
AS 
BEGIN	
	DECLARE @ErrMsg        varchar(5000)

	BEGIN TRY	
		SELECT p.PaymentID, p.OrderID, p.PaymentDate, u.UserID, pr.FirstName + ' ' + pr.LastName AS UserName, 
		o.Amount, o.DiscountAmount, o.CouponAmount, o.DeliveryLocationID
		FROM tblPayment p
		INNER JOIN tblOrder o ON p.OrderID = o.OrderID
		LEFT JOIN tblUser u ON ISNULL(o.UserID, 0) = u.UserID
		LEFT JOIN tblPerson pr ON u.PersonID = pr.PersonID
		WHERE p.PaymentID=@PaymentID
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spProduct_Delete]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spProduct_Delete]
(
	@ProductID		udt_ID
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		
		--IF EXISTS (SELECT ProductID FROM tblPayment WHERE ISNULL(ProductID, 0) = @ProductID)
		--BEGIN
		--	SELECT @ErrMsg = 'Product could not be deleted!.'
		--	RAISERROR(@ErrMsg , 16, 1, 0)
		--	RETURN	
		--END		

		--IF EXISTS (SELECT ProductID FROM tblSubscription WHERE ISNULL(ProductID, 0) = @ProductID )
		--BEGIN
		--	SELECT @ErrMsg = 'Product could not be deleted!.'
		--	RAISERROR(@ErrMsg , 16, 1, 0)
		--	RETURN	
		--END		
		
		--If Exists then delete first
		DELETE tblProduct 
		WHERE ProductID=@ProductID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[spProduct_GetDetails]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spProduct_GetDetails] 
(		
	@ProductID			udt_ID
)
AS 
BEGIN	
	DECLARE @ErrMsg        varchar(5000)

	BEGIN TRY	
		SELECT ProductID,ProductName,ProductCaption,ProductDescription,CategoryID,SubCategoryID,BrandID,SizeID,ColorID,ImageURL,Price,DiscountID,CouponID,
		CustomerID,IsActive,DropDate,ActivationDate,[Status],CreatedBy,CreatedOn,ModifiedBy,ModifiedOn
		FROM tblProduct
		WHERE ProductID=@ProductID
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spProduct_GetList]    Script Date: 4/3/2026 11:28:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC spProduct_GetList 0
CREATE   PROCEDURE [dbo].[spProduct_GetList] 
(		
	@CustomerID			udt_ID
)
AS 
BEGIN	
	DECLARE @ErrMsg        varchar(5000)

	BEGIN TRY	
		SELECT ProductID, ProductName, ProductDescription, ProductCaption, CategoryID, ISNULL(p.BrandID,0) AS BrandID, 
		ISNULL(p.ColorID,0) AS ColorID,	ImageURL, CAST(Price AS Decimal(18,2)) AS Price, 
		CASE WHEN CAST(Price AS Decimal(18,2)) BETWEEN 0.00 AND 50.00 THEN 1
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 51.00 AND 100.00 THEN 2
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 101.00 AND 200.00 THEN 3
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 201.00 AND 300.00 THEN 4
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 301.00 AND 400.00 THEN 5
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 401.00 AND 500.00 THEN 6
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 501.00 AND 600.00 THEN 7
		WHEN CAST(Price AS Decimal(18,2)) BETWEEN 601.00 AND 700.00 THEN 8
		WHEN CAST(Price AS Decimal(18,2)) > 700.00 THEN 9
		END AS PriceID, ISNULL(p.SizeID,0) AS SizeID,
		p.DiscountID, d.IsInrOrPercentage, d.Discount, d.INR, d.Percentage
		CouponID, IsActive,DropDate,ActivationDate,p.[Status],p.CreatedBy,p.CreatedOn,p.ModifiedBy,p.ModifiedOn,
		Rating=CAST(0 AS Decimal(18,2))
		INTO #Result
		FROM tblProduct p
		LEFT OUTER JOIN tblDiscount d ON p.DiscountID = d.DiscountID
		LEFT OUTER JOIN tblCoupon c ON p.CouponID = c.CouponID
		WHERE p.CustomerID=@CustomerID

		UPDATE r
		SET r.Rating = avgRatings.AvgRating
		FROM #Result r
		INNER JOIN (
			SELECT ProductID, AVG(CAST(Rating AS DECIMAL(18,2))) AS AvgRating
			FROM tblProductRatings
			GROUP BY ProductID
		) avgRatings ON r.ProductID = avgRatings.ProductID


		SELECT * FROM #Result

	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spProduct_InsertUpdate]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spProduct_InsertUpdate] 
(		
	@AdminUserName				udt_Name,
	@CustomerID					udt_ID,
	@ProductID					udt_ID,
	@CategoryID					udt_ID,
	@SubCategoryID				udt_ID,
	@BrandID					udt_ID,
	@SizeID						udt_ID,
	@ColorID					udt_ID,
	@ProductName				nvarchar(500),
	@ProductDescription			nvarchar(max),
	@ProductCaption				nvarchar(500),
	@ImageURL					udt_Description='',
	@Price						udt_Money,
	@DiscountID					udt_ID,
	@CouponID					udt_ID,
	@Status						udt_Name
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500)
		

	SELECT @ProductID = ISNULL(@ProductID, 0), @AdminUserName = ISNULL(@AdminUserName, 'system')
			
	BEGIN TRY
		BEGIN TRANSACTION
		
		IF (@ProductID = 0)
		BEGIN		
			
			IF EXISTS (SELECT ProductName FROM tblProduct WHERE ProductName = LTRIM(RTRIM(@ProductName)) AND CategoryID=@CategoryID AND CustomerID=@CustomerID)
			BEGIN
				SELECT @ErrMsg = 'Product name already exists. Please try another product name.'
				RAISERROR(@ErrMsg , 16, 1, 0)
				RETURN	
			END			
			
			INSERT INTO tblProduct(ProductName,ProductDescription,ProductCaption,CategoryID,SubCategoryID,BrandID,SizeID,ColorID,ImageURL,Price,DiscountID,CouponID,CustomerID,IsActive,ActivationDate,[Status],CreatedBy,CreatedOn)
			VALUES (@ProductName,@ProductDescription,@ProductCaption,@CategoryID,@SubCategoryID,@BrandID,@SizeID,@ColorID,@ImageURL,@Price,@DiscountID,@CouponID,@CustomerID,1,[dbo].UTC2Indian(GETDATE()),@Status,@AdminUserName,[dbo].UTC2Indian(GETDATE()))
												
		END 
		ELSE
		BEGIN

			IF EXISTS (SELECT ProductName FROM tblProduct WHERE ProductName = LTRIM(RTRIM(@ProductName)) AND CategoryID=@CategoryID AND CustomerID=@CustomerID AND ProductID <> @ProductID)
			BEGIN
				SELECT @ErrMsg = 'Product name already exists. Please try another product name.'
				RAISERROR(@ErrMsg , 16, 1, 0)
				RETURN	
			END	
			
			UPDATE tblProduct
			SET ProductName=@ProductName,
				ProductDescription=@ProductDescription,
				ProductCaption=@ProductCaption,
				CategoryID=@CategoryID,
				SubCategoryID=@SubCategoryID,
				BrandID=@BrandID,
				SizeID=@SizeID,
				ColorID=@ColorID,
				ImageURL=CASE WHEN @ImageURL='' THEN ImageURL ELSE @ImageURL END,
				Price=@Price,
				DiscountID=@DiscountID,
				CouponID=@CouponID,
				[Status]=@Status,
				ModifiedBy=@AdminUserName,
				ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE ProductID=@ProductID	

		END

		COMMIT TRANSACTION		
		RETURN	
	END TRY
	BEGIN CATCH				
		ROLLBACK TRANSACTION
		IF (@ErrMsg IS NULL) SELECT @ErrMsg = 'There is a problem to save data. Please contact the administrator.'
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
		
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spProductBrand_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductBrand_DDL]
(
	@CategoryID		BIGINT,
	@SubCategoryID	BIGINT
)
AS
BEGIN
	
	SELECT @CategoryID = NULLIF(@CategoryID, 0)
	SELECT @SubCategoryID = NULLIF(@SubCategoryID, 0)

	SELECT CategoryID, SubCategoryID, BrandID, Brand, TotalItems = CAST(10 AS INT)
	FROM tblProductBrand 
	WHERE CategoryID=ISNULL(@CategoryID, CategoryID) AND SubCategoryID=ISNULL(@SubCategoryID, SubCategoryID)
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spProductCategory_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductCategory_DDL]
AS
BEGIN
	SELECT CategoryID, Category, TotalItems = CAST(15 AS INT)
	FROM tblProductCategory
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spProductColor_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductColor_DDL]
(
	@CategoryID		BIGINT,
	@SubCategoryID	BIGINT
)
AS
BEGIN
	
	SELECT @CategoryID = NULLIF(@CategoryID, 0)
	SELECT @SubCategoryID = NULLIF(@SubCategoryID, 0)

	SELECT CategoryID, SubCategoryID, ColorID, ColorCode, Color, TotalItems = CAST(10 AS INT)
	FROM tblProductColor 
	WHERE CategoryID=ISNULL(@CategoryID, CategoryID) AND SubCategoryID=ISNULL(@SubCategoryID, SubCategoryID)
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spProductImage_Delete]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductImage_Delete]
(	
	@ProductImageID					bigint
)
as
begin
	declare @ErrMsg varchar(500)

	begin transaction

		delete tblProductImage
		where ProductImageID = @ProductImageID
				
		select @ErrMsg = @@error
		if (@ErrMsg != 0 ) goto ErrHandler	
		
	commit transaction
	return
		
	
ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	rollback tran
	return
end
GO
/****** Object:  StoredProcedure [dbo].[spProductImage_InsertUpdate]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[spProductImage_InsertUpdate]
(	
	@UserName						varchar(100),
	@ProductImageID					bigint,
	@ProductID						bigint,
	@ImageURL						varchar(255)
)
as
begin
	declare @ErrMsg varchar(500)
	begin transaction
	
	if (@ProductID <> 0)
	begin
	
		if exists (select * from tblProductImage where ProductID = @ProductID and ProductImageID = @ProductImageID)
			begin
				update tblProductImage
				set ImageURL = @ImageURL, ModifiedBy=@UserName, ModifiedOn=[dbo].UTC2Indian(GETDATE())
				where ProductID = @ProductID and ProductImageID = @ProductImageID
				
				select @ErrMsg = @@error
				if (@ErrMsg != 0 ) goto ErrHandler	
			end
		else
		
			begin		
			insert into tblProductImage (ProductID, ImageURL, CreatedBy, CreatedOn)
			values (@ProductID, @ImageURL, @UserName, [dbo].UTC2Indian(GETDATE()))
			
			select @ErrMsg = @@error
			if (@ErrMsg != 0 ) goto ErrHandler			
			end
	end	
		
	commit transaction
	return		
	
ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	rollback tran
	return
end
GO
/****** Object:  StoredProcedure [dbo].[spProductImage_Select]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spProductImage_Select]
(		
	@ProductID						bigint
)
AS
BEGIN
BEGIN TRY
	SET NOCOUNT ON
			
	SELECT ProductID, ProductImageID, ImageURL, CreatedBy, CONVERT(VARCHAR(10), CreatedOn, 101) AS CreatedOn
	FROM tblProductImage
	WHERE ProductID=@ProductID		
	
END TRY
BEGIN CATCH
	 DECLARE @Msg NVARCHAR(MAX)   
     SELECT @Msg=ERROR_MESSAGE()  
	 RAISERROR(@Msg , 16, 1, 0)
END CATCH
END	
GO
/****** Object:  StoredProcedure [dbo].[spProductRating_InsertUpdate]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spProductRating_InsertUpdate] 
(		
	@UserID						udt_ID,
	@ProductID					udt_ID,
	@Rating						udt_ID2
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500)
		

	SELECT @ProductID = ISNULL(@ProductID, 0)
			
	BEGIN TRY
		BEGIN TRANSACTION

		IF NOT EXISTS (SELECT 1 FROM tblProductRatings WHERE ProductID = @ProductID AND UserID = @UserID)
		
		BEGIN	
			
			INSERT INTO tblProductRatings(ProductID, UserID, Rating, CreatedOn)
			VALUES (@ProductID, @UserID, @Rating, [dbo].UTC2Indian(GETDATE()))
												
		END 
		ELSE
		BEGIN			
			
			UPDATE tblProductRatings
			SET 
				Rating = @Rating,
				CreatedOn=[dbo].UTC2Indian(GETDATE())
			WHERE ProductID=@ProductID	AND UserID = @UserID

		END

		COMMIT TRANSACTION		
		RETURN	
	END TRY
	BEGIN CATCH				
		ROLLBACK TRANSACTION
		IF (@ErrMsg IS NULL) SELECT @ErrMsg = 'There is a problem to save data. Please contact the administrator.'
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
		
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spProductSize_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductSize_DDL]
(
	@CategoryID		BIGINT,
	@SubCategoryID	BIGINT
)
AS
BEGIN
	
	SELECT @CategoryID = NULLIF(@CategoryID, 0)
	SELECT @SubCategoryID = NULLIF(@SubCategoryID, 0)

	SELECT CategoryID, SubCategoryID, SizeID, Size, TotalItems = CAST(10 AS INT)
	FROM tblProductSize 
	WHERE CategoryID=ISNULL(@CategoryID, CategoryID) AND SubCategoryID=ISNULL(@SubCategoryID, SubCategoryID)
	ORDER BY DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spProductSubCategory_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductSubCategory_DDL]
AS
BEGIN
	SELECT pc.CategoryID, pc.Category, sc.SubCategoryID, sc.SubCategory
	FROM tblProductSubCategory sc
	INNER JOIN tblProductCategory pc ON sc.CategoryID = pc.CategoryID
	ORDER BY sc.DisplayOrder

END
GO
/****** Object:  StoredProcedure [dbo].[spState_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spState_DDL]
AS
BEGIN
	SELECT StateID, State
	FROM tblState 

END


GO
/****** Object:  StoredProcedure [dbo].[spTransaction_Insert]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec tblTransaction_Insert 5,'12/2021','admin'
CREATE   PROCEDURE [dbo].[spTransaction_Insert]
(	
	@PaymentID			udt_ID,
	@MerchantID			udt_Name,
	@rzp_orderid		udt_LongName,
	@Amount			    udt_Money,	
	@Currency			udt_Code10=NULL,
	@AdminUser			udt_Name,
	@TransactionID		udt_ID = NULL OUTPUT
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)	
		DECLARE @amt		   DECIMAL(18,2)

		DECLARE @OrderID		BIGINT


		SET @amt = (@Amount*1.0)/100
		
		INSERT INTO tblTransaction (PaymentID,MerchantID,rzp_orderid,Amount,Currency,CreatedBy,CreatedOn)
		VALUES (@PaymentID,@MerchantID,@rzp_orderid,@amt,@Currency,@AdminUser, dbo.UTC2Indian(GETDATE()))

		SELECT @TransactionID = SCOPE_IDENTITY()		

		--Update Cart after buying the products
		SELECT @OrderID = OrderID FROM tblPayment WHERE PaymentID=@PaymentID

		UPDATE c
		SET c.IsBuy = 1, c.BuyDate = dbo.UTC2Indian(GETDATE())
		FROM tblCart c
		INNER JOIN tblOrderDetail d ON c.CartID = d.CartID	
		
					
		
		RETURN @TransactionID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[spUser_ActivateDeactivate]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUser_ActivateDeactivate]
(
	@UserID		udt_ID,
	@Activate	bit,
	@AdminUser	udt_Name
)
AS
BEGIN
	DECLARE @ErrMsg VARCHAR(500)

	BEGIN TRANSACTION
	
			
		UPDATE tblUser
		SET IsActive=@Activate,
		ModifiedBy=@AdminUser,
		ModifiedOn=[dbo].UTC2Indian(GETDATE())
		WHERE UserID = @UserID
		
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler
							
	COMMIT TRANSACTION				
	RETURN

ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	ROLLBACK TRANSACTION
	RETURN
END


GO
/****** Object:  StoredProcedure [dbo].[spUser_Delete]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUser_Delete]
(
	@UserID		udt_ID
)
AS
BEGIN
	DECLARE @ErrMsg VARCHAR(500)
	DECLARE @PersonID  BIGINT	

	BEGIN TRANSACTION
	
		DELETE t
		FROM tblTelecom t
		INNER JOIN tblPerson p ON t.PersonID = p.PersonID
		INNER JOIN tblUser u ON p.PersonID=u.PersonID
		WHERE u.UserID = @UserID	
		
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler
		
		
		DELETE a
		FROM tblAddress a
		INNER JOIN tblPerson p ON a.PersonID = p.PersonID
		INNER JOIN tblUser u ON p.PersonID=u.PersonID
		WHERE u.UserID = @UserID	
		
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler	
		
		--Get the PersonID 	before deleting data from User table
		SELECT @PersonID = (SELECT PersonID FROM tblUser WHERE UserID = @UserID)
		
		DELETE FROM tblUser
		WHERE UserID = @UserID
		
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler
		
		--Finally deleted the person;
		DELETE p
		FROM tblPerson p
		WHERE p.PersonID = @PersonID	
		
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler
			
	COMMIT TRANSACTION				
	RETURN

ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	ROLLBACK TRANSACTION
	RETURN
END


GO
/****** Object:  StoredProcedure [dbo].[spUser_InsertUpdate]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spUser_InsertUpdate] 
(		
	@AdminUserName		varchar(50),
	@CustomerID			udt_ID,
	--tblUser	
	@UserID				udt_ID,
	@UserName			udt_User=NULL,
	@Password			VARCHAR(25)=NULL,
	
	--tblPerson	
	@FirstName			udt_Name,
	@LastName			udt_Name,
	@NewUserID			udt_ID = NULL OUTPUT
	
)	
AS BEGIN

	DECLARE @ErrMsg varchar(500)	
	DECLARE @NewPersonID	bigint
	DECLARE @ExistingPersonID	bigint
		

	SELECT @UserID = ISNULL(@UserID, 0)
	
	BEGIN TRY
		BEGIN TRANSACTION
		
		IF (@UserID = 0)
		BEGIN		
			
			IF EXISTS (SELECT UserName FROM tblUser WHERE ISNULL(@UserName, '') <> '' AND UserName=LTRIM(RTRIM(@UserName)))
			BEGIN
				SELECT @ErrMsg = 'User name already Exists. Please try another user name.'
				RAISERROR(@ErrMsg , 16, 1, 0)
				RETURN	
			END

			BEGIN
				INSERT INTO tblPerson (
					CustomerID,
					FirstName,
					LastName,
					CreatedBy,
					CreatedOn)
				VALUES (
					@CustomerID,
					@FirstName,
					@LastName,
					@AdminUserName,
					[dbo].UTC2Indian(GETDATE()))
									
				SELECT @NewPersonID = SCOPE_IDENTITY()
			END 
			
			INSERT INTO tblUser(UserName,[Password],PersonID,CreatedBy,CreatedOn)
			VALUES (@UserName,CONVERT(VARBINARY(255), pwdencrypt(@Password)),@NewPersonID,@AdminUserName,[dbo].UTC2Indian(GETDATE()))
			
			SELECT @UserID = scope_identity()
									
		END 
		ELSE
		BEGIN
			
			SELECT @ExistingPersonID = PersonID from tblUser WHERE UserID=@UserID

			UPDATE tblPerson
			SET FirstName=@FirstName,
				LastName=@LastName,
				ModifiedBy=@AdminUserName,
				ModifiedOn=[dbo].UTC2Indian(GETDATE())
			WHERE PersonID=@ExistingPersonID
								
		END

		IF (ISNULL(@UserName, '') <> '' AND ISNULL(@Password, '') <> '')
		BEGIN
			IF EXISTS (SELECT 1 FROM tblUser WHERE UserName=@UserName AND UserID=@UserID)
			BEGIN
				UPDATE tblUser
				SET [Password]=CONVERT(VARBINARY(255), pwdencrypt(@Password))
				WHERE UserID=@UserID				
					
			END
			ELSE
			BEGIN
					
				IF EXISTS (SELECT UserName FROM tblUser WHERE ISNULL(@UserName, '') <> '' AND UserName=LTRIM(RTRIM(@UserName)))
				BEGIN
					SELECT @ErrMsg = 'User name already Exists. Please try another user name.'
						
					RAISERROR(@ErrMsg , 16, 1, 0)
					RETURN	
				END

				UPDATE tblUser
				SET Username=@UserName,
				[Password]=CONVERT(VARBINARY(255), pwdencrypt(@Password))
				WHERE UserID=@UserID				
			END					
		END	
					
		SET @NewUserID = @UserID

		COMMIT TRANSACTION	
		
		RETURN 	@NewUserID	
	END TRY
	BEGIN CATCH				
		ROLLBACK TRANSACTION
		IF (@ErrMsg IS NULL) SELECT @ErrMsg = 'There is a problem to save data. Please contact the administrator.'
		RAISERROR(@ErrMsg , 16, 1, 0)
		RETURN
		
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spUserDetails_SelectByID]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserDetails_SelectByID]   
 ( 
	@UserID			    udt_ID
 )  
AS  
BEGIN  
  
 DECLARE @ErrMsg VARCHAR(5000)  

  
 --get the details of the user and associated person  
 SELECT u.UserID, u.UserName, u.UserTypeCode, u.IsActive, u.PersonID, 
		p.PersonTypeCode,
		p.FirstName,
		p.MiddleInitials,
		p.LastName,
		p.ParentsFirstName,
		p.ParentsMiddleInitials,
		p.ParentsLastName,
		p.SpouseFirstName,
		p.SpouseMiddleInitials,
		p.SpouseLastName,
		p.Child1FirstName,
		p.Child1MiddleInitials,
		p.Child1LastName,
		p.Child2FirstName,
		p.Child2MiddleInitials,
		p.Child2LastName,
		p.TotalAdultFamilyMember,
		p.TotalMinorFamilyMember,
		p.DOB,
		p.PlaceOfBirth,
		LTRIM(RTRIM(p.GenderCode)) AS GenderCode,				
		p.Occupation,
		p.BloodGroupID,
		p.WorkingIn,
		p.KnownMember,
		p.ReasonToJoin,
		a.Address1, a.Address2, a.City, a.StateID, a.PinCode,
		t.Email, t.Email2, t.HomePhone, t.Mobile
 FROM    tblUser u
	 INNER JOIN tblPerson p ON u.PersonID = p.PersonID 
	 LEFT JOIN tblAddress a ON u.PersonID = a.PersonID 
	 LEFT JOIN tblTelecom t ON u.PersonID = t.PersonID
 WHERE  u.UserID = @UserID
	  
 RETURN  
   
END  
ERRHANDLER:   
BEGIN  
 RAISERROR(@ErrMsg, 16, 1, 0)  
 RETURN  
END


GO
/****** Object:  StoredProcedure [dbo].[spUserDoc_Delete]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserDoc_Delete]
(
	@UserID		udt_ID,
	@DocTypeID	udt_ID2
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)			
		
		--If Exists then delete first
		DELETE tblUserDoc 
		WHERE UserID=@UserID AND DocTypeID = @DocTypeID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH



GO
/****** Object:  StoredProcedure [dbo].[spUserDoc_Insert]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserDoc_Insert]
(
	@AdminUser	varchar(40),
	@UserID		udt_ID,
	@DocTypeID	udt_ID2,
	@DocPath	varchar(200)
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)			
		
		--If Exists then delete first
		DELETE tblUserDoc 
		WHERE UserID=@UserID AND DocTypeID = @DocTypeID
		
		INSERT INTO tblUserDoc (UserID, DocTypeID, DocPath, CreatedBy, CreatedOn)
		SELECT @UserID, @DocTypeID, @DocPath, @AdminUser, [dbo].UTC2Indian(GETDATE())
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH



GO
/****** Object:  StoredProcedure [dbo].[spUserDoc_Select]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserDoc_Select]
(
	@UserID		udt_ID
)
AS		
	BEGIN TRY
	
		DECLARE @ErrMsg        varchar(5000)
		DECLARE @Return        VARCHAR(100)			
		
		
		SELECT DocTypeID, DocPath
		FROM tblUserDoc
			WHERE  UserID = @UserID
		
	END TRY
	BEGIN CATCH

		SET @ErrMsg = ERROR_MESSAGE()
		RAISERROR(@ErrMsg, 16, 1, 0)
		RETURN

	END CATCH



GO
/****** Object:  StoredProcedure [dbo].[spUserList_Select]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spUserList_Select] 
(	
	@CustomerID			udt_ID,
	@AdminUserID		BIGINT
)
AS 
BEGIN
	
	DECLARE @StrSql	NVARCHAR(MAX) = ''
	
	SET	@StrSql =	'
	SELECT u.UserID, u.UserName, p.FirstName, p.LastName, FullName=p.FirstName + '' '' + p.LastName,	
			u.PersonID, u.UserTypeCode, ut.UserType, u.Designation, u.NumberOfRowsPerPage,			
			u.CanAccessFinancialInformation, u.CanAccessAdmin, u.IsActive, u.CreatedBy, u.CreatedOn
	FROM tblUser u
	INNER JOIN tblPerson p ON u.PersonID=p.PersonID
	LEFT JOIN tblUserType ut ON u.UserTypeCode = ut.UserTypeCode
	LEFT JOIN tblAddress ad ON p.PersonID=ad.PersonID
	WHERE ISNULL(u.UserTypeCode, '''') <> ''SY'' 
	AND p.CustomerID = ' +  CONVERT(VARCHAR(10), @CustomerID) + '
	AND u.UserID <> ' +  CONVERT(VARCHAR(10), @AdminUserID) + ''

	
	SET	@StrSql = @StrSql +  ' ORDER BY p.FirstName, p.LastName '

	--Get the list of inspections
	EXEC sp_Executesql @StrSql
	
END
GO
/****** Object:  StoredProcedure [dbo].[spUserLoginLog_Insert]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserLoginLog_Insert] 
(	
	@UserID				udt_ID,
	@DeviceName			udt_Code15,	
	@Browser			udt_Code50
)
AS 
BEGIN

	DECLARE @ErrMsg				varchar(500)	

	BEGIN TRANSACTION

		INSERT INTO tblUserLoginLog (UserID, DeviceName, Browser, LogTime)
		VALUES (@UserID, @DeviceName, @Browser, [dbo].UTC2Indian(GETDATE()))
			
		SELECT @ErrMsg = @@error
		IF ( @ErrMsg != 0 ) goto ErrHandler	

	COMMIT TRANSACTION			
	RETURN

ErrHandler:
	RAISERROR(@ErrMsg, 16, 1, 0)
	rollback tran
	return
end


GO
/****** Object:  StoredProcedure [dbo].[spUserType_DDL]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUserType_DDL]
AS
BEGIN
	SELECT UserTypeID, UserTypeCode, UserType
	FROM tblUserType
	WHERE UserTypeCode NOT IN ('SY','RQ')

END


GO
/****** Object:  StoredProcedure [dbo].[spValidate_User]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spValidate_User]   
 (  
  @UserName            VARCHAR(40),  
  @Password            VARCHAR(30)
 )  
AS  
BEGIN  
  
 DECLARE @ErrMsg VARCHAR(5000)  
 
 
    
 IF NOT EXISTS (SELECT *  
  FROM        tblUser   
  WHERE  UserName = @UserName  
  AND   pwdcompare(@Password, [Password]) = 1)
  BEGIN  
   SELECT @ErrMsg = 'Invalid User Name/ Password! Please try again.'  
   GOTO ErrHandler  
  END  
  
 --get the details of the user and associated person  
 SELECT u.UserID, u.UserName, u.UserTypeCode, u.IsActive, u.PersonID, p.FirstName, (p.FirstName + ' ' + p.LastName) As Name 
 FROM    tblUser u
 INNER JOIN tblPerson p ON u.PersonID = p.PersonID  
 WHERE  u.UserName = @UserName
	  
 RETURN  
   
END  
ERRHANDLER:   
BEGIN  
 RAISERROR(@ErrMsg, 16, 1, 0)  
 RETURN  
END


GO
/****** Object:  StoredProcedure [dbo].[tk_SearchFromObject]    Script Date: 4/3/2026 11:28:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tk_SearchFromObject] (
	@SearchString	 Varchar(100),
	@SearchType	Varchar(100)	= NULL
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @SystemSearchType 	Varchar(200)
	DECLARE @ObjName		Varchar(100)
	DECLARE @ObjType		Varchar(10)
	IF @SearchType = 'sp' SET @SystemSearchType = 'P'
	IF @SearchType = 'table' SET @SystemSearchType = 'U'
	IF @SearchType = 'function' SET @SystemSearchType = 'FN'
	IF @SearchType = 'function1' SET @SystemSearchType = 'TF'	
	IF @SearchType = 'function2' SET @SystemSearchType = 'IF'	
	IF @SearchType = 'Trigger' SET @SystemSearchType = 'TR'	

	CREATE TABLE #TempNamesSelected(ObjName Varchar(100), ObjType varchar(10))

	IF LOWER(ISNULL(@SearchType,'table')) = 'table' BEGIN
		INSERT #TempNamesSelected 
		SELECT o.name, o.type FROM sys.columns c, sys.objects o
		WHERE c.name Like '%'+@SearchString+'%'
		AND c.object_id = o.object_id
		AND o.type='U'
		order by o.name
	END


	IF ISNULL(@SearchType,'') <> '' BEGIN
		DECLARE obj_cursor CURSOR FOR 
		SELECT ss.name + '.' + s.name AS name,s.Type
		FROM sys.objects s
		 INNER JOIN sys.schemas ss ON s.schema_id = ss.schema_id
		WHERE s.Type = @SystemSearchType
	END 
	ELSE BEGIN
		DECLARE obj_cursor CURSOR FOR 
		SELECT ss.name + '.' + s.name AS name,s.Type 
		FROM sys.objects s
		 INNER JOIN sys.schemas ss ON s.schema_id = ss.schema_id
		WHERE s.Type in ('P','FN','TF','IF','TR')
	END  


	IF LOWER(ISNULL(@SearchType,'')) <> 'table' BEGIN
		CREATE TABLE #temp(temptext text)
		OPEN obj_cursor
		FETCH NEXT FROM obj_cursor 
		INTO @ObjName, @ObjType
		WHILE @@FETCH_STATUS = 0
		BEGIN
			INSERT #temp
			Exec sp_helptext @ObjName
			IF Exists(SELECT * FROM #temp WHERE charIndex(@SearchString,temptext) >0)
				INSERT #TempNamesSelected Select @ObjName, @ObjType
			Truncate Table #temp
			FETCH NEXT FROM obj_cursor INTO @ObjName, @ObjType
	      	END
	   	CLOSE obj_cursor
	END     	

   	DEALLOCATE obj_cursor

	SELECT * FROM #TempNamesSelected order by ObjType, ObjName

	SET NOCOUNT ON
END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Master-System' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblGender'
GO
USE [master]
GO
ALTER DATABASE [Ecommerce] SET  READ_WRITE 
GO
