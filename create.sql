CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	PRIMARY KEY (genre_id, artist_id),
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL CHECK (release_year >= 1950)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	PRIMARY KEY (artist_id, album_id),
	artist_id INTEGER REFERENCES Artists(id),
	album_id INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration_seconds INTEGER NOT NULL CHECK (duration_seconds >= 30),
	album_id INTEGER NOT NULL REFERENCES Albums(id) 
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL CHECK (release_year >= 1950)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	PRIMARY KEY (track_id, collection_id),
	track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collections(id)
);