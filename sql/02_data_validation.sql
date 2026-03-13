
-- Basic row count validation after CSV import

SELECT COUNT(*) AS users_count FROM users;                         
SELECT COUNT(*) AS drivers_count FROM drivers;                     
SELECT COUNT(*) AS zones_count FROM zones;                         
SELECT COUNT(*) AS orders_count FROM orders;                         
SELECT COUNT(*) AS deliveries_count FROM deliveries;                
SELECT COUNT(*) AS ab_test_events_count FROM ab_test_events;        

