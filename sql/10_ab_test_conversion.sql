-- A/B test conversion rate by user

WITH user_conversion AS (
    SELECT
        variant,
        user_id,
        MAX(converted_flag) AS converted
    FROM ab_test_events
    GROUP BY variant, user_id
)

SELECT
    variant,
    COUNT(*) AS total_users,
    SUM(converted) AS converted_users,

    ROUND(
        SUM(converted) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate_percent

FROM user_conversion

GROUP BY variant

ORDER BY conversion_rate_percent DESC;