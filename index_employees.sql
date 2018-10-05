USE employees;

DESCRIBE employees;

USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (album_name, artist_name);

