-- Driver performance based on successful deliveries
USE ecommerce_delivery_analytics;
SELECT
    d.driver_id,
    dr.driver_name,

    COUNT(
        CASE
            WHEN d.delivery_status = 'delivered'
            THEN d.delivery_id
        END
    ) AS successful_deliveries,

    ROUND(
        AVG(
            CASE
                WHEN d.delivery_status = 'delivered'
                 AND d.delay_minutes > 0
                 AND d.delay_minutes <= 240
                THEN d.delay_minutes
            END
        ),
        2
    ) AS avg_delay_minutes

FROM deliveries d
JOIN drivers dr
    ON d.driver_id = dr.driver_id

GROUP BY
    d.driver_id,
    dr.driver_name

ORDER BY successful_deliveries DESC;