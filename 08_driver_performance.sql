-- =====================================================
-- Driver Performance Analysis
-- Measures delivery workload and average delay per driver
-- =====================================================

SELECT
    d.driver_id,
    dr.driver_name,
    COUNT(d.delivery_id) AS total_deliveries,
    ROUND(AVG(GREATEST(d.delay_minutes,0)),2) AS avg_delay_minutes
FROM deliveries d
JOIN drivers dr
    ON d.driver_id = dr.driver_id
GROUP BY d.driver_id, dr.driver_name
ORDER BY total_deliveries DESC;