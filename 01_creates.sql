CREATE TABLE IF NOT EXISTS genres_list (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_list (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_artist_agent (
	genre_id INTEGER REFERENCES genres_list(genre_id),
	artist_id INTEGER REFERENCES artist_list(artist_id),
	CONSTRAINT id PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album_list (
	album_id SERIAL PRIMARY KEY,
	release_date DATE NOT NULL,
	album_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album_agent (
	artist_id INTEGER REFERENCES artist_list(artist_id),
	album_id INTEGER REFERENCES album_list(album_id),
	CONSTRAINT aag_id PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS track_list (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(255) NOT NULL,
	album_id INTEGER REFERENCES album_list(album_id),
	duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation (
	comp_id SERIAL PRIMARY KEY,
	comp_name VARCHAR(255) NOT NULL,
	comp_release_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS comp_track_agent (
	track_id INTEGER REFERENCES track_list(track_id),
	comp_id INTEGER REFERENCES compilation(comp_id),
	CONSTRAINT cta_id PRIMARY KEY (track_id, comp_id)
);