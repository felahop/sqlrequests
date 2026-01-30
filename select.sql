-- Задание 2

SELECT name, duration_seconds FROM Tracks
ORDER BY duration_seconds DESC LIMIT 1;

SELECT name FROM Tracks
WHERE duration_seconds >= 210;

SELECT name FROM Collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name FROM Artists 
WHERE name NOT LIKE '% %';

SELECT name FROM Tracks
WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%мой%';

-- Задание 3

SELECT genre, COUNT(name) FROM genres g
JOIN genreartist ga ON g.id = ga.genre_id
JOIN artists a ON a.id = ga.artist_id
GROUP BY genre
ORDER BY COUNT(name) DESC;

SELECT COUNT(t.id) from tracks t
JOIN albums a ON a.id = t.album_id
WHERE release_year BETWEEN 2019 AND 2020;

SELECT a.name, AVG(t.duration_seconds) FROM albums a
JOIN tracks t ON a.id = t.album_id
GROUP BY a.name;

SELECT DISTINCT name FROM artists
WHERE name NOT IN (
	SELECT DISTINCT ar.name FROM artists ar
	JOIN artistalbum aa ON ar.id = aa.artist_id
	JOIN albums al ON al.id = aa.album_id
	WHERE al.release_year = 2020
);

SELECT DISTINCT c.name FROM collections c
JOIN trackcollection tc ON c.id = tc.collection_id
JOIN tracks t ON t.id = tc.track_id
JOIN albums al ON t.album_id = al.id 
JOIN artistalbum aa ON al.id = aa.album_id
JOIN artists ar ON ar.id = aa.artist_id
WHERE ar.name LIKE 'Eminem';

-- Задание 4

SELECT al.name FROM albums al
JOIN artistalbum aa ON al.id = aa.album_id
JOIN artists ar ON ar.id = aa.artist_id
JOIN genreartist ga ON ar.id = ga.artist_id
JOIN genres g ON g.id = ga.genre_id
GROUP BY al.name, ga.artist_id
HAVING COUNT(DISTINCT ga.genre_id) > 1;

SELECT DISTINCT t.name FROM tracks t
LEFT JOIN trackcollection tc ON t.id = tc.track_id
WHERE tc.collection_id IS NULL;

SELECT DISTINCT ar.name FROM artists ar
JOIN artistalbum aa ON ar.id = aa.artist_id
JOIN albums al ON al.id = aa.album_id
JOIN tracks t ON al.id = t.album_id
WHERE t.duration_seconds = (SELECT MIN(duration_seconds) FROM tracks);