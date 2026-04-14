CREATE PROCEDURE spHomePage_Get
(
    @CustomerID BIGINT
)
AS
BEGIN
    -- Featured
    SELECT 
        p.ProductID,
        p.ProductName,
        p.ImageURL,
        p.Price,
        'Featured' AS Section
    FROM tblFeaturedProducts fp
    JOIN tblProduct p ON fp.ProductID = p.ProductID
    WHERE fp.CustomerID = @CustomerID

    UNION ALL

    -- Flash Sale
    SELECT 
        p.ProductID,
        p.ProductName,
        p.ImageURL,
        fsp.SalePrice AS Price,
        'FlashSale' AS Section
    FROM tblFlashSales fs
    JOIN tblFlashSaleProducts fsp ON fs.FlashSaleId = fsp.FlashSaleId
    JOIN tblProduct p ON fsp.ProductID = p.ProductID
    WHERE fs.CustomerID = @CustomerID
      AND fs.IsActive = 1
      AND GETDATE() < fs.SaleEndTime
END