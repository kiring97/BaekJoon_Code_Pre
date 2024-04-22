SELECT user_id, product_id
FROM (
    SELECT user_id, product_id, COUNT(*) AS purchase_count
    FROM ONLINE_SALE
    GROUP BY user_id, product_id
    HAVING purchase_count > 1
) AS repeated_purchases
ORDER BY user_id ASC, product_id DESC;
