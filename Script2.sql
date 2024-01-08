--music_service
--add genres
INSERT INTO Musical_genre (genre_id,genre_name)
VALUES ('1', 'Chanson'), ('2', 'Trance'), ('3','Pop');

-- add musician_performer
INSERT INTO Musician_performer (performer_id,performer_name)
VALUES ('1','Mikhail Krug'),
('2','Scooter'),
('3','Jastin Timberlake'),
('4','Ricky Marthin');

--add album
INSERT INTO Album (album_id,album_name,year_of_issue)
VALUES ('1', 'Жиган - лимон', '1994'),
('2', 'Age of Love', '1997'),
('3', 'Almas del Silencio', '2003'),
('4', 'Jastified', '2002');

--add track
INSERT INTO Track (track_id,track_name,duration,album)
VALUES ('1', 'Cry My A River', '4:48:00', '4'),
('2', 'Rock Your Body', '4:27:00', '4'),
('3', 'Кольщик', '4:47:00', '1'),
('4', 'Девочка - пай', '4:17:00', '1'),
('5', 'Choir Dance', '4:20:00', '2'),
('6', 'The Age of Love', '6:09:00', '2'),
('7', 'Tal Vez', '4:41:00', '3'),
('8', 'Jaleo', '3:43:00', '3');

--add collections
INSERT INTO collection (collection_id,collection_name,collection_release_year)
VALUES ('1', 'Золотой шансон','2019'),
('2', 'Techno party 2.0','1997'),
('3', 'Cago Belo Tekno #5','1997'),
('4', 'Mr. Music Hits 10. 2003','2003'),
('5', 'Mr. Music Hits 6. 2003','2003');

--communications1
insert into collections_tracks (collection,track)
values ('1', '3'),
       ('1', '4'),
       ('2', '5'),
       ('3', '6'),
       ('4', '1'),
       ('4', '7'),
       ('5', '2'),
       ('5', '8');
       
--communications2
insert into album_performer (album,performer)
values ('1', '1'), ('2', '2'), ('3', '4'), ('4', '3');

--communications3
insert into performer_genre (performer,genre_id)
values ('1', '1'), ('2', '2'), ('3', '3'), ('4', '3');