-- What is the repeat purchase rate (customers who placed more than one order)?
SELECT customer_id, COUNT(order_id) AS No_Of_Orders
FROM `Order`
GROUP BY customer_id
HAVING No_Of_Orders > 1
ORDER BY No_Of_Orders DESC;
