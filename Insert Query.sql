--Заполнение жанров (5 жанров):

INSERT INTO
	Genres (name)
VALUES
	('Rock'),
	('Rap'),
	('Pop'),
	('Electronic'),
	('Jazz');


-- Заполнение исполнителей (8 исполнителей):

INSERT into
	Singers (name)
VALUES
	('Sin Shake Sin'),
	('Eminem'),
	('AJR'),
	('Caravan Palace'),
	('Frank Sinatra'),
	('The Killers'),
	('KONGOS'),
	('A-ha');


-- Заполнение связей жанр-исполнитель:

INSERT into
	GenresSingers (genre_id, singer_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(3, 8),
	(4, 8),
	(4, 3);


-- Заполнение альбомов (8 альбомов):

INSERT into
	Albums (name, release_date, content)
VALUES
	('Lunatics And Slaves', 2014, 'tracklist'),
	('The Eminem Show', 2002, 'tracklist'),
	('The Click (Deluxe)', 2018, 'tracklist'),
	('Chronologic', 2019, 'tracklist'),
	('My Way', 1969, 'tracklist'),
	('Day & Age', 2008, 'tracklist'),
	('Lunatic', 2014, 'tracklist'),
	('Hunting High And Low', 1985, 'tracklist');


-- Заполнение связей исполнитель-альбом:

INSERT into
	SingersAlbums (singer_id, album_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);


-- Заполнение треков (16 треков):

INSERT into
	Tracks (name, length, album_id)
VALUES
	('Lunatics And Slaves', 192, 1),
	('Idiocracy', 235, 1),
	('Without Me', 290, 2),
	('Till I Collapse', 297, 2),
	('Weak', 201, 3),
	('Burn The House Down', 212, 3),
	('Miracle', 216, 4),
	('Moonshine', 213, 4),
	('My Way', 276, 5),
	('For Once In My Life', 171, 5),
	('A Dustland Fairytale', 225, 6),
	('Goodnight, Travel Well', 411, 6),
	('I''m Only Joking', 224, 7),
	('Come With Me Now', 211, 7),
	('Take On Me', 225, 8),
	('The Sun Always Shines On TV', 302, 8),
	('Special Collectionless Track For Query 7', 999, 1);


-- Заполнение сборников (8 сборников):

INSERT into
	Collections (name, release_date)
VALUES
	('EVEN the chances', 2014),
	('ODD one out', 2002),
	('ROCKy road', 2018),
	('breaking the FOURTH wall', 2019),
	('jack of ALL trades', 1969),
	('the BICENTENNIAL man', 2008),
	('ONE hit wonder', 2014),
	('ALPHA and OMEGA', 1985);


--  Заполнение связей трек-сборник:

INSERT into
	TracksCollections (track_id, collection_id)
VALUES
	(1, 2),
	(2, 1),
	(3, 2),
	(4, 1),
	(5, 2),
	(6, 1),
	(7, 2),
	(8, 1),
	(9, 2),
	(10, 1),
	(11, 2),
	(12, 1),
	(13, 2),
	(14, 1),
	(15, 2),
	(16, 1),
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(5, 5),
	(6, 5),
	(7, 5),
	(8, 5),
	(9, 5),
	(10, 5),
	(11, 5),
	(12, 5),
	(13, 5),
	(14, 5),
	(15, 5),
	(16, 5),
	(4, 4),
	(8, 4),
	(12, 4),
	(16, 4),
	(1, 3),
	(2, 3),
	(11, 3),
	(12, 3),
	(13, 3),
	(14, 3),
	(2, 6),
	(3, 6),
	(4, 6),
	(5, 6),
	(6, 6),
	(7, 6),
	(8, 6),
	(9, 6),
	(11, 6),
	(13, 6),
	(14, 6),
	(15, 6),
	(9, 7),
	(1, 8),
	(16, 8);