INSERT INTO netflix_shows(title,genre,rating)
SELECT
    'Movie_'||g,
    'Action',
    ROUND((random()*5)::numeric,1)
FROM generate_series(1,100000) g;

SELECT COUNT(*) FROM netflix_shows;