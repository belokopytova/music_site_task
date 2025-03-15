--Задание №1

INSERT INTO albums 
VALUES 
(1,'Blonde', 2016), 
(2,'40', 2021), 
(3,'Evolve', 2017),
(4,'Titanic Rising', 2019),
(5,'Lover', 2019),
(6,'Раскраски для взрослых', 2018),
(7,'PHUNERAL', 2018),
(8,'Nicotine', 2020),
(9,'Юность', 2020),
(10,'Chromatica', 2020),
(11, 'Лакшери', 2016);


INSERT INTO songs 
VALUES 
(1,1,'Solo', 2016, '00:05:14'),
(2,1,'Nights', 2016, '00:02:51'),
(3,1,'Ivy', 2016, '00:02:24'),
(4, 2,'С самых низов', 2021, '00:05:20'),
(5,2,'Лампочка', 2021, '00:02:10'),
(6,3,'Next to me', 2017, '00:02:30'),
(7,3,'My friend', 2017, '00:04:32'),
(8,3,'Rise up', 2017, '00:03:20'),
(9,4,'Every Day', 2019, '00:04:30'),
(10,4,'Movies', 2019, '00:02:20'),
(11,5,'Cruel Summer', 2019, '00:02:58'),
(12,5,'The Man', 2019, '00:03:10'),
(13,6,'Русский ковчег', 2018, '00:03:33'),
(14,6,'Ночной ларек', 2018, '00:02:44'),
(15,7,'Мой кайф', 2018, '00:03:50'),
(16,8,'Anymore', 2020, '00:04:20'),
(17,8,'Lovesick', 2020, '00:02:54'),
(18,9,'Она не такая', 2020, '00:03:48'),
(19,9,'Мой дом', 2020, '00:02:38'),
(20,10,'Alice', 2020, '00:02:50'),
(21,10,'Free woman', 2020, '00:03:10'),
(22,10,'Babylon', 2020, '00:04:12'),
(23,11, 'Фонари', 2016, '00:03:39');

INSERT INTO genres
VALUES 
(1,'рок'),
(2,'хип-хоп'),
(3,'кантри'),
(4,'поп'),
(5,'диско'),
(6,'джаз');

INSERT INTO singers 
VALUES 
(1,'Frank Ocean', 6),
(2,'Баста', 2),
(3,'Imagine Dragons', 1),
(4,'Weyes Blood', 1),
(5,'Taylor Swift', 5),
(6,'Монеточка', 4),
(7,'PHARAOH', 2),
(8,'Trevor Daniel', 3),
(9,'Dabro', 1),
(10,'Lady Gaga', 4);

INSERT INTO albumsinger
VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(6,2),
(7,7),
(8,8),
(9,8),
(9,9),
(10,10),
(11,2);



INSERT INTO singergenre 
VALUES 
(1,6),
(2,2),
(3,1),
(4,1),
(5,5),
(6,4),
(7,2),
(7,4),
(8,3),
(9,1),
(10,4);

INSERT INTO collections 
VALUES 
(1,'Love', 2020),
(2,'русские песни', 2021),
(3,'хиты 2019', 2019),
(4,'best rock music', 2019),
(5,'top pop music', 2020);

INSERT INTO collectionsong 
VALUES 
(1,16),
(1,19),
(1,11),
(2,5),
(2,18),
(3,12),
(3,10),
(3,11),
(4,7),
(4,8),
(5,20),
(5,21),
(5,15);

