-- Создание таблицы "genres"
CREATE TABLE genres (
    id VARCHAR PRIMARY KEY,
    name VARCHAR
);

-- Создание таблицы "performers"
CREATE TABLE performers (
    id VARCHAR PRIMARY KEY,
    pseudonym VARCHAR,
    genreld VARCHAR,
    FOREIGN KEY (genreld) REFERENCES genres(id)
);

-- Создание таблицы "performers_albums"
CREATE TABLE performers_albums (
    performer_id VARCHAR,
    album_id VARCHAR,
    FOREIGN KEY (performer_id) REFERENCES performers(id),
    FOREIGN KEY (album_id) REFERENCES albums(id),
    PRIMARY KEY (performer_id, album_id)
);

-- Создание таблицы "Music_Website_ERD"
CREATE TABLE music_website_erd (
    string VARCHAR,
    pk VARCHAR
);

-- Создание таблицы "albums"
CREATE TABLE albums (
    id VARCHAR PRIMARY KEY,
    title VARCHAR,
    release_year INTEGER CHECK (release_year >= 1900),
    artistld VARCHAR
);

-- Создание таблицы "tracks"
CREATE TABLE tracks (
    id VARCHAR PRIMARY KEY,
    name VARCHAR,
    duration INTEGER CHECK (duration > 0),
    albumld VARCHAR
);

-- Создание таблицы "performers_genres"
CREATE TABLE performers_genres (
    performer_id VARCHAR,
    genre_id VARCHAR,
    FOREIGN KEY (performer_id) REFERENCES performers(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    PRIMARY KEY (performer_id, genre_id)
);

-- Создание таблицы "albums_tracks"
CREATE TABLE albums_tracks (
    album_id VARCHAR,
    track_id VARCHAR,
    FOREIGN KEY (album_id) REFERENCES albums(id),
    FOREIGN KEY (track_id) REFERENCES tracks(id),
    PRIMARY KEY (album_id, track_id)
);
