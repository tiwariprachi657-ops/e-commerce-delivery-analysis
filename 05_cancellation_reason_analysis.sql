-- =====================================================
-- Cancellation Reason Analysis
-- Shows the most common reasons for order cancellations
-- =====================================================

SELECT
    cancel_reason,
    COUNT(order_id) AS cancelled_orders
FROM orders
WHERE order_status = 'cancelled'
GROUP BY cancel_reason
ORDER BY cancelled_orders DESC;