SELECT 
    OrderID,
    CustomerName,
    TRIM(product) AS Product
FROM 
    ProductDetail,
    JSON_TABLE(
        CONCAT('["', REPLACE(Products, ', ', '","'), '"]'),
        "$[*]" COLUMNS(product VARCHAR(100) PATH "$")
    ) AS jt;


SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM 
    OrderDetails;

SELECT 
    OrderID, 
    Product, 
    Quantity
FROM 
    OrderDetails;
