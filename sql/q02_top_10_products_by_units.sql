-- Q2: Top 10 products by total units sold
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(oi.quantity) AS Units_Sold
FROM Product p
JOIN Order_Item oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY Units_Sold DESC
LIMIT 10;

