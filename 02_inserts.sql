INSERT INTO artist_list(artist_name) VALUES 
('Обратный отс4ет'),
('Buddy Guy'),
('Guns and Roses'),
('Everlast'),
('Leonard Cohen'),
('Tenacious D'),
('DIO'),
('Антонио Вивальди'),
('Freddie Mercury'),
('Billy Idol');

INSERT INTO genres_list(genre_name) VALUES 
('Indi'),
('Blues'),
('Rock'),
('New Age'),
('Folk'),
('Acoustic'),
('Classic');

INSERT INTO album_list(album_name, release_date) VALUES 
('Зеро', '01-01-2020'),
('Глаза', '01-01-2023'),
('This is the Beginning: The Best of the Artistic, Cobra & USA Sessions', '01-01-1965'),
('Chinese Democracy', '01-01-2008'),
('The Life Acoustic', '01-01-2013'),
('Ten New Songs', '01-01-2001'),
('The Good, The Bad, And the Drugly', '01-01-2015'),
('Holy Diver', '01-01-1983'),
('Le quattro stagioni', '01-01-1725'),
('Living on My Own Single', '01-02-1982'),
('Dancing With Myself', '01-01-1979');

INSERT INTO track_list(track_name, album_id, duration) VALUES 
('Художник', 1, '00:03:23'),
('Хватит', 1, '00:03:23'),
('Глаза', 2, '00:04:18'),
('This I Love', 4, '00:05:34'),
('Black Jesus', 5, '00:03:44'),
('A Thousand Kisses Deep', 6, '00:06:28'),
('Last In Line', 7, '00:07:45'),
('Holy Diver', 8, '00:05:54'),
('Losing My Insanity', 8, '00:05:04'),
('Concerto For Violin And Strings In E, Op.8, No.1, RV.269 "La Primavera" - Allegro ("La Primavera")', 9, '00:03:26'),
('Living on My Own Single', 10, '00:03:05'),
('Dancing With Myself', 11, '00:03:43'),
('myself', 1, '00:03:23'),
('by myself', 1, '00:03:23'),
('bemy self', 1, '00:03:23'),
('myself by', 1, '00:03:23'),
('by myself by', 1, '00:03:23'),
('beemy', 1, '00:03:23'),
('раздва мой тричетыре', 1, '00:03:23'),
('раздва мойслитно тричетыре', 1, '00:03:23'),
('My own dinner', 1, '00:03:23'),
('premyne', 1, '00:03:23');

INSERT INTO compilation(comp_name, comp_release_date) VALUES 
('Make Saratov Great Again', '01-01-2021'),
('Guy and Cohen', '01-01-2018'),
('Tenacious and Everlast', '01-01-2020'),
('Old rock', '01-01-2015');

INSERT INTO genres_artist_agent (artist_id, genre_id) VALUES
(6, 3),
(1, 3),
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO artist_album_agent (artist_id, album_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11);

INSERT INTO comp_track_agent (comp_id, track_id) VALUES
(1, 1),
(1, 3),
(2, 5),
(2, 6),
(3, 5),
(3, 8),
(4, 4),
(4, 9);