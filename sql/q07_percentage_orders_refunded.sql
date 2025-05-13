-- Q7: Percentage of orders that were refunded
SELECT 
    ROUND((COUNT(r.order_id) * 100.0) / COUNT(o.order_id), 2) AS Return_Percentage
FROM `Order` o
LEFT JOIN Return_Table r ON o.order_id = r.order_id;
