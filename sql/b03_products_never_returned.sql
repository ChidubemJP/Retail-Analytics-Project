-- BONUS: Identify products that have been ordered but never returned
SELECT DISTINCT 
    p.product_id, 
    p.product_name
FROM Product p
JOIN Order_Item oi ON p.product_id = oi.product_id
JOIN `Order` o ON oi.order_id = o.order_id
LEFT JOIN Return_Table r ON p.product_id = r.product_id
WHERE r.return_id IS NULL;
