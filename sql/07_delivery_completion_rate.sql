
-- Delivery success rate

SELECT
    COUNT(DISTINCT CASE
        WHEN d.delivery_status = 'delivered'
        THEN d.order_id
    END) AS delivered_orders,

    COUNT(DISTINCT o.order_id) AS total_orders,

    ROUND(
        COUNT(DISTINCT CASE
            WHEN d.delivery_status = 'delivered'
            THEN d.order_id
        END) * 100.0
        / COUNT(DISTINCT o.order_id),
        2
    ) AS delivery_success_rate_percent

FROM orders o
LEFT JOIN deliveries d
    ON o.order_id = d.order_id;
    ON o.order_id = d.order_id;