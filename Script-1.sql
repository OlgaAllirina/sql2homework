CREATE table if not exists Musical_genre (
	genre_id SERIAL primary key,
	genre_name VARCHAR(60) UNIQUE not NULL
	);

CREATE table if not exists Musician_performer (
	performer_id SERIAL primary key,
	performer_name VARCHAR(60) not NULL
	);

CREATE table if not exists Album (
	album_id SERIAL primary key,
	album_name VARCHAR(80) not NULL,
	year_of_issue VARCHAR(4) NOT null
	);

CREATE table if not exists Track (
	track_id SERIAL primary key ,
	track_name VARCHAR(60) not NULL,
	duration time not null,
	album INTEGER not NULL REFERENCES Album(album_id)
	);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY key,	
	collection_name VARCHAR(40) NOT null,
	collection_release_year VARCHAR(4) NOT null
	);

CREATE TABLE IF NOT EXISTS Performer_Genre (
	genre INTEGER NOT NULL references Musical_genre(genre_id),
	performer INTEGER NOT NULL references Musician_performer(performer_id),
	CONSTRAINT pk_genre_performer PRIMARY key (genre, performer)
	);

CREATE table if not exists Album_performer (
	album INTEGER not NULL REFERENCES Album(album_id),
	performer INTEGER not NULL REFERENCES Musician_performer(performer_id),
	CONSTRAINT pk_albums_performer PRIMARY KEY (album, performer)
	);

CREATE TABLE IF NOT EXISTS collections_tracks (
	track integer NOT NULL REFERENCES Track(track_id),
	collection integer NOT NULL REFERENCES Collection(collection_id),
	CONSTRAINT pk_collections_tracks PRIMARY KEY (track, collection)
	);



