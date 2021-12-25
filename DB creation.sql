CREATE TABLE IF NOT EXISTS Genres (
	id serial primary key,
	name varchar(100) unique not null
);

CREATE TABLE IF NOT EXISTS Singers (
	id serial primary key,
	name varchar(40) unique not null
);

CREATE TABLE IF NOT EXISTS GenresSingers (
	id serial primary key,
	genre_id integer not null references Genres(id),
	singer_id integer not null references Singers(id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id serial primary key,
	name varchar(40) unique not null,
	release_date integer,
	content text not null
);

CREATE TABLE IF NOT EXISTS SingersAlbums (
	id serial primary key,
	singer_id integer not null references Singers(id),
	album_id integer not null references Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id serial primary key,
	name varchar(40) unique not null,
	release_date integer
);

CREATE TABLE IF NOT EXISTS Tracks (
	id serial primary key,
	name varchar(100) unique not null,
	length integer check(length>0),
	album_id integer references Albums(id)
);

CREATE TABLE IF NOT EXISTS TracksCollections (
	id serial primary key,
	track_id integer not null references Tracks(id),
	collection_id integer not null references Collections(id)
);