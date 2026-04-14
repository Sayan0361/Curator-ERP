CREATE PROCEDURE spFeaturedProduct_Insert
(
    @CustomerID BIGINT,
    @ProductID BIGINT,
    @DisplayOrder INT
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO tblFeaturedProducts(CustomerID, ProductID, DisplayOrder)
    VALUES (@CustomerID, @ProductID, @DisplayOrder);
END