CREATE PROCEDURE spFlashSale_Insert
(
    @CustomerID BIGINT,
    @SaleEndTime DATETIME,
    @IsActive BIT
)
AS
BEGIN
    INSERT INTO tblFlashSales (CustomerID, SaleEndTime, IsActive)
    VALUES (@CustomerID, @SaleEndTime, @IsActive);

    SELECT SCOPE_IDENTITY() AS FlashSaleId;
END