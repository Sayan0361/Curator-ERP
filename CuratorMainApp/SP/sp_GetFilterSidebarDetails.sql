CREATE OR ALTER PROC sp_GetFilterSidebarDetails
    @CustomerID udt_ID
AS
BEGIN
    -- Brands grouped by category & subcategory
    SELECT 
    pb.Brand,
    COUNT(DISTINCT p.ProductName) AS ProductCount
	FROM tblProduct p
	JOIN tblProductBrand pb ON p.BrandID = pb.BrandID
	GROUP BY 
		pb.Brand

    -- Sizes
    SELECT DISTINCT 
        ps.SizeID, 
        ps.Size
    FROM tblProduct p
    JOIN tblProductSize ps ON p.SizeID = ps.SizeID;
END;