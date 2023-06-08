-- Задание 2
-- 1. Название и продолжительность самого длительного трека.
SELECT track_name 
FROM track_list tl
WHERE duration = (SELECT max(duration) FROM track_list)

-- 2. Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name 
FROM track_list tl
WHERE duration >= '00:03:30'

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT comp_name 
FROM compilation c 
WHERE EXTRACT (YEAR FROM comp_release_date) BETWEEN 2019 AND 2020

-- 4. Исполнители, чьё имя состоит из одного слова
SELECT artist_name 
FROM artist_list al 
WHERE (LENGTH(artist_name) - LENGTH(REPLACE(artist_name, ' ', ''))) = 0

-- 5. Название треков, которые содержат слово «мой» или «my».
SELECT track_name
FROM track_list tl 
WHERE track_name ~* '\ymy\y'
	OR track_name ~* '\yмой\y';

	
-- Задание 3
-- 1. Количество исполнителей в каждом жанре.
SELECT gl.genre_name, count(gaa.artist_id)
FROM genres_artist_agent gaa 
	JOIN genres_list gl 
	ON gaa.genre_id = gl.genre_id
GROUP BY gl.genre_name
	
-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(tl.track_id) 
FROM track_list tl 
	JOIN album_list al 
	ON tl.album_id  = al.album_id 
WHERE EXTRACT (YEAR FROM al.release_date) BETWEEN 2019 AND 2020

-- 3. Средняя продолжительность треков по каждому альбому
SELECT al.album_name, avg(tl.duration)
FROM album_list al 
	JOIN track_list tl 
	ON tl.album_id = al.album_id 
GROUP BY al.album_name

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT art_l.artist_name
FROM artist_list art_l
	JOIN artist_album_agent aaa 
	ON art_l.artist_id = aaa.artist_id
	JOIN album_list al_l 
	ON al_l.album_id = aaa.album_id
WHERE art_l.artist_name != (
	SELECT art_l.artist_name
	FROM artist_list art_l
		JOIN artist_album_agent aaa 
		ON art_l.artist_id = aaa.artist_id
		JOIN album_list al_l 
		ON al_l.album_id = aaa.album_id
		WHERE EXTRACT (YEAR FROM al_l.release_date) = 2020);
	
-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT DISTINCT c.comp_name
FROM compilation c 
	JOIN comp_track_agent cta 
	ON c.comp_id = cta.comp_id 
	JOIN track_list tl 
	ON tl.track_id = cta.track_id 
	JOIN artist_album_agent aaa 
	ON tl.album_id = aaa.album_id 
	JOIN artist_list al 
	ON al.artist_id = aaa.artist_id 
WHERE al.artist_name = 'Обратный отс4ет'