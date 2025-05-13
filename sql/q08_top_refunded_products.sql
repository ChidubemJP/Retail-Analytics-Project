-- Q8: Products with the highest refund amounts
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(r.amount) AS Refund_Amount
FROM Product p
JOIN Return_Table r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
ORDER BY Refund_Amount DESC;
