-- Q4: Top 5 customers by total spending
SELECT 
    c.customer_id, 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    ROUND(SUM(o.total_amount), 2) AS Total_Spend
FROM Customer c
JOIN `Order` o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY Total_Spend DESC
LIMIT 5;
