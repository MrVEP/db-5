-- Количество исполнителей в каждом жанре:
	
SELECT name, COUNT (name)
FROM genres g
JOIN genressingers gs ON g.id = gs.genre_id
GROUP BY name;

	
-- Количество треков, вошедших в альбомы 2019-2020 годов:
	
SELECT COUNT(*)
FROM albums a
JOIN tracks t ON a.id = t.album_id
WHERE a.release_date BETWEEN 2019 AND 2020;

	
	
-- Средняя продолжительность треков по каждому альбому:
	
SELECT a.name, AVG(length)
FROM albums a
JOIN tracks t ON a.id = t.album_id
GROUP BY a.name;
	
	
-- Все исполнители, которые не выпустили альбомы в 2020 году(выбираю 2019 год, чтобы выборка не содержала всех исполнителей):
	
SELECT s.name
FROM singers s
WHERE s.name NOT IN(
	SELECT s2.name
	FROM singers s2
	JOIN singersalbums sa ON s2.id = sa.singer_id
	JOIN albums a ON sa.album_id = a.id
	WHERE a.release_date = 2019
);
	
	
-- Названия сборников, в которых присутствует конкретный исполнитель (для примера - это будет Caravan Palace):
	
SELECT c.name
FROM (
	SELECT s.id, s.name
	FROM singers s
	WHERE s.name = 'Caravan Palace'
) s
JOIN singersalbums sa ON s.id = sa.singer_id
JOIN tracks t ON sa.album_id = t.album_id
JOIN trackscollections tc ON t.id = tc.track_id
JOIN collections c ON tc.collection_id = c.id;
	
	
-- Название альбомов, в которых присутствуют исполнители более 1 жанра:
	
SELECT a.name
FROM (
	SELECT gs.singer_id
	FROM genressingers gs
	GROUP BY gs.singer_id
	HAVING COUNT(gs.singer_id) > 1
) gs
JOIN singersalbums sa ON gs.singer_id = sa.singer_id
JOIN albums a ON sa.album_id = a.id;
	
	
-- Наименование треков, которые не входят в сборники:
	
SELECT t.name
FROM tracks t
WHERE NOT t.id IN (
	SELECT track_id
	FROM trackscollections
);
	
	
-- Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько):
	
SELECT s.name
FROM singers s
JOIN singersalbums sa ON s.id = sa.singer_id
WHERE sa.album_id IN (
	SELECT t.album_id
	FROM tracks t
	WHERE t.length = (
		SELECT MIN(length)
		FROM tracks t
	)
);
	
	
-- Название альбомов, содержащих наименьшее количество треков:
	
SELECT a.name
FROM albums a
WHERE a.id IN (
	SELECT t.album_id
	FROM tracks t
	GROUP BY (t.album_id)
	HAVING COUNT (t.album_id) = (
		SELECT MIN(ml.count)
		FROM (
			SELECT t.album_id, COUNT (t.album_id)
			FROM tracks t
			GROUP BY (t.album_id)
		) ml
	)
);