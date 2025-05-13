-- Q12: Churn rate - customers who haven’t placed any order in the last 6 months
SELECT 
    ROUND(
        (COUNT(churned.customer_id) * 100.0) / total.total_customers,
        2
    ) AS churn_rate_percentage
FROM 
    (SELECT c.customer_id
     FROM Customer c
     LEFT JOIN `Order` o 
       ON c.customer_id = o.customer_id 
       AND o.order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
     WHERE o.order_id IS NULL) AS churned,
     
    (SELECT COUNT(*) AS total_customers FROM Customer) AS total;
