SELECT album_name FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT album_name FROM albums
WHERE release_date < '1980';
UPDATE albums
SET release_date = '1800'
WHERE release_date < '1980';
SELECT * FROM albums;

SELECT album_name FROM albums
WHERE artist_name='Michael Jackson';
UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
SELECT * FROM albums;