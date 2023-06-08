CREATE TABLE IF NOT exists albums(
    id serial PRIMARY key,
    album_name varchar(100) NOT NULL unique,
    album_release_year varchar(100)
);

CREATE TABLE IF NOT exists tracks(
    id serial PRIMARY key,
    id_album integer references albums(id),
    track_name varchar(100) NOT NULL unique,
    track_duration varchar(100) integer references
);

CREATE TABLE IF NOT exists artist(
    id serial PRIMARY key,
    artist_name varchar(100) NOT NULL unique
);   

CREATE TABLE IF NOT exists genres(
    id serial PRIMARY key,
    genre_name varchar(100) NOT NULL unique
);

CREATE TABLE IF NOT exists compilation_tracks(
    id serial PRIMARY KEY,
    id_collection integer references compilation_albums(id),
    id_track integer references tracks(id)
);

CREATE TABLE IF NOT exists compilation_albums(
    id serial PRIMARY KEY,
    collection_title varchar(100) NOT NULL unique,
    collection_date varchar(100) 
);

CREATE TABLE IF NOT exists artist_2_album(
    id serial PRIMARY KEY,
    id_artist integer references artist(id),
    id_album integer references albums(id)
);

CREATE TABLE IF NOT exists genr_2_artist(
    id serial PRIMARY KEY,
    id_genre integer references genres(id),
    id_artist integer references artist(id)
);

