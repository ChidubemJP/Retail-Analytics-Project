-- Q1: Total revenue generated in the last 12 months
SELECT 
  ROUND(SUM(total_amount), 2) AS Total_Revenue
FROM `Order`
WHERE order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH);

