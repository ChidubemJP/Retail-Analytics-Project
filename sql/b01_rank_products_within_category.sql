-- BONUS: Rank products within each category by total units sold
SELECT 
    c.category_name, 
    p.product_name, 
    SUM(oi.quantity) AS Quantity_Sold,
    RANK() OVER (PARTITION BY c.category_name ORDER BY SUM(oi.quantity) DESC) AS sales_rank
FROM Product p
JOIN Category c ON p.category_id = c.category_id
JOIN Order_Item oi ON p.product_id = oi.product_id
GROUP BY c.category_name, p.product_name
ORDER BY c.category_name, sales_rank;
