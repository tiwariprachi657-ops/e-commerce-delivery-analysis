-- Delivery timing analysis for completed deliveries

SELECT
    CASE
        WHEN delay_minutes < 0 THEN 'Early'
        WHEN delay_minutes = 0 THEN 'On Time'
        WHEN delay_minutes <= 30 THEN '1-30 min late'
        WHEN delay_minutes <= 60 THEN '31-60 min late'
        WHEN delay_minutes <= 120 THEN '61-120 min late'
        ELSE '120+ min late'
    END AS delay_category,

    COUNT(*) AS delivery_count

FROM deliveries

WHERE delivery_status = 'delivered'
  AND delay_minutes IS NOT NULL

GROUP BY delay_category

ORDER BY
    CASE delay_category
        WHEN 'Early' THEN 1
        WHEN 'On Time' THEN 2
        WHEN '1-30 min late' THEN 3
        WHEN '31-60 min late' THEN 4
        WHEN '61-120 min late' THEN 5
        WHEN '120+ min late' THEN 6
    END;