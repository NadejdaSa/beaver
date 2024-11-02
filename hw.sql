CREATE TABLE IF NOT EXISTS genre_list(
genre_of_music_id SERIAL PRIMARY KEY,
genre_name VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS music_group(
group_id SERIAL PRIMARY KEY,
group_name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS genregroup(
genre_of_music_id SERIAL REFERENCES genre_list(genre_of_music_id),
group_id SERIAL REFERENCES music_group(group_id)
);
CREATE TABLE IF NOT EXISTS album(
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(30) NOT NULL,
year_of_production SERIAL NOT NULL
);
CREATE TABLE IF NOT EXISTS group_album(
album_id SERIAL REFERENCES album(album_id),
group_id SERIAL REFERENCES music_group(group_id)
);
CREATE TABLE IF NOT EXISTS collection(
collection_id SERIAL PRIMARY KEY,
name_collection VARCHAR(30) NOT NULL,
year_of_realization SERIAL NOT NULL
);
CREATE TABLE IF NOT EXISTS track_list(
track_list_id SERIAL PRIMARY KEY,
track_name VARCHAR(30) NOT NULL,
duration SERIAL NOT NULL,
album_id SERIAL NOT NULL,
FOREIGN KEY (album_id) REFERENCES album (album_id)
);
CREATE TABLE IF NOT EXISTS collection_track(
collection_id SERIAL REFERENCES collection(collection_id),
track_list_id SERIAL REFERENCES track_list(track_list_id)
);