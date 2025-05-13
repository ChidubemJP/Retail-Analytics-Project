-- Q9: Customers who returned a product but never ordered again after their refund
SELECT 
    r.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    r.refund_date
FROM Return_Table r
JOIN Customer c ON r.customer_id = c.customer_id
LEFT JOIN `Order` o 
    ON o.customer_id = r.customer_id 
    AND o.order_date > r.refund_date
WHERE o.order_id IS NULL;
