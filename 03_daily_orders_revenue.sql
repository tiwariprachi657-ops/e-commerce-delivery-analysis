-- =====================================================
-- Daily Orders and Revenue Trend
-- Shows how many orders and total revenue per day
-- =====================================================

SELECT
    DATE(order_date) AS order_day,
    COUNT(order_id) AS total_orders,
    SUM(order_value) AS total_revenue
FROM orders
GROUP BY order_day
ORDER BY order_day;