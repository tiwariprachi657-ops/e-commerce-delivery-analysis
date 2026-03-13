-- =====================================================
-- City Order Volume Analysis
-- Shows number of orders by city
-- =====================================================

SELECT
    u.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_value) AS total_revenue
FROM orders o
JOIN users u
    ON o.user_id = u.user_id
GROUP BY u.city
ORDER BY total_orders DESC;
