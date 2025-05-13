-- Q6: Customers who placed orders but never made a payment
SELECT 
    c.customer_id, 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Customer c
JOIN `Order` o ON c.customer_id = o.customer_id
LEFT JOIN Payment p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;
