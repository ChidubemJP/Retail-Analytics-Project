-- Q10: Monthly revenue trend over the past year
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS Period, 
    ROUND(SUM(total_amount), 2) AS Revenue
FROM `Order`
WHERE order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
GROUP BY Period
ORDER BY Period ASC;
