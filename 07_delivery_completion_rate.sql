-- =====================================================
-- Delivery Completion Rate
-- Measures delivery success compared to total orders
-- =====================================================

SELECT
    COUNT(DISTINCT d.order_id) AS delivered_orders,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        COUNT(DISTINCT d.order_id) * 100.0 /
        COUNT(DISTINCT o.order_id),
        2
    ) AS delivery_success_rate_percent
FROM orders o
LEFT JOIN deliveries d
    ON o.order_id = d.order_id;