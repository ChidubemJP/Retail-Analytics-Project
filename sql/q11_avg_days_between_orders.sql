-- Q11: Average number of days between customer orders (for repeat buyers)
SELECT  
    customer_id,
    ROUND(AVG(days_since_last_order), 2) AS avg_days_between_orders
FROM (
    SELECT
        customer_id,
        order_id,
        order_date,
        LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date) AS previous_order_date,
        DATEDIFF(order_date, LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date)) AS days_since_last_order
    FROM `Order`
) AS order_gaps
WHERE days_since_last_order IS NOT NULL
GROUP BY customer_id;
