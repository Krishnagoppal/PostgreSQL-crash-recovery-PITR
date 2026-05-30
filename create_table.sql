CREATE DATABASE netflix_db;

\c netflix_db

CREATE TABLE netflix_shows (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    rating NUMERIC(3,1)
);