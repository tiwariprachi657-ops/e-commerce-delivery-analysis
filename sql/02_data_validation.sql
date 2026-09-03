
-- Basic data validation checks

-- Orders
SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT order_id) AS unique_order_ids
FROM orders;

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_ids,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS missing_order_dates,
    SUM(CASE WHEN order_value < 0 THEN 1 ELSE 0 END) AS negative_order_values
FROM orders;


-- Deliveries
SELECT
    COUNT(*) AS total_deliveries,
    COUNT(DISTINCT delivery_id) AS unique_delivery_ids
FROM deliveries;

SELECT
    SUM(CASE WHEN delivery_id IS NULL THEN 1 ELSE 0 END) AS missing_delivery_ids,
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN driver_id IS NULL THEN 1 ELSE 0 END) AS missing_driver_ids,
    SUM(
        CASE
            WHEN delivery_status IS NULL
              OR TRIM(delivery_status) = ''
            THEN 1 ELSE 0
        END
    ) AS missing_delivery_status
FROM deliveries;


-- Cancelled orders without a reason
SELECT
    COUNT(*) AS cancelled_orders_with_missing_reason
FROM orders
WHERE order_status = 'cancelled'
  AND (
      cancel_reason IS NULL
      OR TRIM(cancel_reason) = ''
  );


-- Delivery status distribution
SELECT
    delivery_status,
    COUNT(*) AS delivery_count
FROM deliveries
GROUP BY delivery_status
ORDER BY delivery_count DESC;