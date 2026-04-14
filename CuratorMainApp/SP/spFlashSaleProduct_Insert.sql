CREATE PROCEDURE spFlashSaleProduct_Insert
(
    @FlashSaleId INT,
    @ProductID BIGINT,
    @SalePrice DECIMAL(10,2)
)
AS
BEGIN
    INSERT INTO tblFlashSaleProducts(FlashSaleId, ProductID, SalePrice)
    VALUES (@FlashSaleId, @ProductID, @SalePrice);
END