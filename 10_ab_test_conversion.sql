-- =====================================================
-- A/B Test Conversion Analysis
-- Measures conversion rate for experiment variants
-- =====================================================

SELECT
    variant,
    COUNT(user_id) AS total_users,
    SUM(converted_flag) AS conversions,
    ROUND(
        SUM(converted_flag) * 100.0 / COUNT(user_id),
        2
    ) AS conversion_rate_percent
FROM ab_test_events
GROUP BY variant
ORDER BY conversion_rate_percent DESC;