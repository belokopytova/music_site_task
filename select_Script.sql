--Задание №2

--Название и продолжительность самого длительного трека
SELECT name, duration FROM songs
WHERE duration = (SELECT MAX(duration) FROM songs);

--Название треков, продолжительность которых не менее 3,5 минут
SELECT name FROM songs
WHERE duration >= '00:03:30';


--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collections
WHERE year <= 2020 AND year >= 2018;


--Исполнители, чьё имя состоит из одного слова
SELECT name FROM singers
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»
SELECT name FROM songs
WHERE name ILIKE 'my %' OR name ILIKE 'мой %'
OR name ILIKE 'my' OR name ILIKE 'мой'
OR name ILIKE '% my %' OR name ILIKE '% мой %'
OR name ILIKE '% my' OR name ILIKE '% мой';


--Задание №3

--Количество исполнителей в каждом жанре
SELECT name, COUNT(singerid) FROM genres g       
JOIN singergenre s ON s.genreid = g.id   
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(name) FROM songs s
LEFT JOIN albums a ON a.id=s.album_id
WHERE album_id IN (SELECT id FROM albums WHERE year >=2019 AND year<=2020);

--Средняя продолжительность треков по каждому альбому
SELECT a.title, AVG(duration) FROM albums a 
JOIN songs s on a.id = s.album_id
GROUP BY a.title;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT s.name FROM singers s 
WHERE s.id NOT IN (SELECT s2.id FROM singers s2
JOIN albumsinger a ON a.singerid=s.id
JOIN albums al ON al.id=a.albumid
WHERE al.year = 2020);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT c.name from collections c 
JOIN collectionsong c2 ON c.id=c2.collectionid
JOIN songs s ON s.id=c2.songid
JOIN albums a ON a.id=s.album_id
JOIN albumsinger al ON al.albumid=a.id
JOIN singers si ON si.id = al.singerid
WHERE si.name = 'Баста';


