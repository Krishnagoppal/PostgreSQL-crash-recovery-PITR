UPDATE netflix_shows
SET rating = rating + 0.1
WHERE id <= 50000;

DELETE FROM netflix_shows
WHERE id <= 20000;

SELECT
    relname,
    n_live_tup,
    n_dead_tup
FROM pg_stat_user_tables
WHERE relname='netflix_shows';