--1 task
select track_name,duration
from track 
where duration = (select MAX(duration) from track);

--2 task
select track_name
from track
where duration >= '3:30:00';

--3 task
select collection_name
from collection 
where collection_release_year between '2018' and  '2020';

--4 task
select performer_name
from musician_performer 
where not name like '%% %%';

--5 task
select * from track where track_name like '%мой%' or track_name like '%My%' or track_name like '%my%';
