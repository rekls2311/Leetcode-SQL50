--Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.
SELECT PRODUCT.PRODUCT_NAME, SALES.YEAR, SALES.PRICE
FROM SALES
JOIN PRODUCT
ON SALES.PRODUCT_ID = PRODUCT.PRODUCT_ID
