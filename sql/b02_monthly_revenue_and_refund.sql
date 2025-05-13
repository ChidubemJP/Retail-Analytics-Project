-- BONUS: Show the total revenue and refund amount by month
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS Period, 
    ROUND(SUM(o.total_amount), 2) AS Revenue,
    ROUND(SUM(IFNULL(r.amount, 0)), 2) AS Refund
FROM `Order` o
LEFT JOIN Return_Table r ON o.order_id = r.order_id
GROUP BY Period
ORDER BY Period ASC;
