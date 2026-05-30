-- Active Sessions
SELECT * FROM pg_stat_activity;

-- Database Size
SELECT pg_size_pretty(
pg_database_size('netflix_db'));

-- Table Size
SELECT pg_size_pretty(
pg_total_relation_size('netflix_shows'));

-- Dead Tuples
SELECT
relname,
n_live_tup,
n_dead_tup
FROM pg_stat_user_tables;