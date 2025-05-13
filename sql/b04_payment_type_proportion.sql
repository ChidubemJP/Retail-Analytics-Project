-- BONUS: Show the proportion of payments by type (e.g., PayPal vs. Credit Card)
SELECT 
    payment_type,
    COUNT(payment_id) AS payment_count,
    ROUND(
        (COUNT(payment_id) * 100.0) / SUM(COUNT(payment_id)) OVER (),
        2
    ) AS proportion_percentage
FROM Payment
GROUP BY payment_type
ORDER BY proportion_percentage DESC;
