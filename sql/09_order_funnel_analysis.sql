-- =====================================================
-- Order Funnel Analysis
-- Shows how orders move through the lifecycle
-- =====================================================

SELECT
    order_status,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;
