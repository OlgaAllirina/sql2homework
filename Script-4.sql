--Задание 3
--Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

--Количество исполнителей в каждом жанре.
select mg.genre_name, count(pg.performer)
from musical_genre mg 
left join performer_genre pg on mg.genre_id = pg.genre_id 
group by mg.genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select track_name, year_of_issue
from track t 
left join album a on a.album_id = t.album
where year_of_issue between '2019' and '2020';

--Средняя продолжительность треков по каждому альбому.
select album_name, avg(duration)
from track t  
right join album a on a.album_id = t.album 
group by album_name 
order by avg(duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.
select performer_name, year_of_issue
from musician_performer mp 
left join album_performer ap on mp.performer_id = ap.performer 
left join album a on ap.album  = a.album_id
where year_of_issue != '2020';

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select performer_name, collection_name
from collection c 
left join album al on c.collection_id  = al.album_id 
left join album_performer ap on al.album_id  = ap.album 
left join musician_performer mp on mp.performer_id  = ap.performer  
where performer_name = 'Scooter';
