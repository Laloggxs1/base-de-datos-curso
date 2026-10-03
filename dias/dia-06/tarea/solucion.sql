ALTER SYSTEM SET max_connections = 200;
SELECT pg_reload_conf();


SELECT count(*) FORM pg_stat_activity;
SELECT * FROM pg_stat_activity
WHERE state = 'active';
