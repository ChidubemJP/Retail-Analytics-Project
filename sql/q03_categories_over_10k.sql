-- Q3: Product categories with over $10,000 in sales
SELECT 
    c.category_id, 
    c.category_name, 
    SUM(oi.quantity * oi.unit_price) AS Total_Sales
FROM Product p
JOIN Order_Item oi ON p.product_id = oi.product_id
JOIN Category c ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name
HAVING Total_Sales > 10000
ORDER BY Total_Sales DESC;
