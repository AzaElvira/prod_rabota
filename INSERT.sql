
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














Insert into artist(id_artist, artist_name) values (1, N'The Slot');
Insert into artist(id_artist, artist_name) values (2, N'Madonna');
Insert into artist(id_artist, artist_name) values (3, N'Lana Del Rey');
Insert into artist(id_artist, artist_name) values (4, N'Taylor Swift');
Insert into artist(id_artist, artist_name) values (5, N'Within Temptation');
Insert into artist(id_artist, artist_name) values (6, N'As I Lay Dying');
Insert into artist(id_artist, artist_name) values (7, N'In Flames');
Insert into artist(id_artist, artist_name) values (8, N'Michael Jackson');
Insert into artist(id_artist, artist_name) values (9, N'Slipknot');



Insert into albums (id_album, album_name, album_release_year) values (1, N'200 кВт', '20181130');
Insert into albums (id_album, album_name, album_release_year) values (2, N'Инстинкт выживания', '20210226');

Insert into albums (id_album, album_name, album_release_year) values (3, N'Rebel Heart', '20150306');
Insert into albums (id_album, album_name, album_release_year) values (4, N'Madame X', '20190614');

Insert into albums (id_album, album_name, album_release_year) values (5, N'Norman Fucking Rockwell!', '20180830');
Insert into albums (id_album, album_name, album_release_year) values (6, N'Chemtrails Over the Country Club', '20210319');

Insert into albums (id_album, album_name, album_release_year) values (7, N'Lover', '20190823');
Insert into albums (id_album, album_name, album_release_year) values (8, N'Folklore', '20200724');

Insert into albums (id_album, album_name, album_release_year) values (9, N'Hydra', '20140131');
Insert into albums (id_album, album_name, album_release_year) values (10, N'Resist', '20190201');

Insert into albums (id_album, album_name, album_release_year) values (11, N'Awakened', '20120925');
Insert into albums (id_album, album_name, album_release_year) values (12, N'Shaped by Fire', '20190920');

Insert into albums (id_album, album_name, album_release_year) values (13, N'Battles', '20161111');
Insert into albums (id_album, album_name, album_release_year) values (14, N'I, the Mask', '20190301');

Insert into albums (id_album, album_name, album_release_year) values (15, N'Thriller', '19821130');
Insert into albums (id_album, album_name, album_release_year) values (16, N'Bad', '19870831');

Insert into albums (id_album, album_name, album_release_year) values (17, N'.5: The Gray Chapter', '20141017');
Insert into albums (id_album, album_name, album_release_year) values (18, N'We Are Not Your Kind', '20190809');







Insert into tracks (id_track, track_name, track_duration, id_album_t) values (1, N'200 кВт', '00:03:26', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (2, N'Кукушка', '00:04:14', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (3, N'ЗОЖ мой', '00:04:19', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (4, N'Я выберу Солнце', '00:03:56', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (5, N'Естественный отбор', '00:03:50', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (6, N'Сколько денег', '00:03:45', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (7, N'На Марс', '00:04:33', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (8, N'Не все равно', '00:04:25', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (9, N'#ЯЩЕТАЮ', '00:03:54', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (10, N'Система', '00:04:20', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (11, N'Ильич (Son of a bitch)', '00:03:17', 1);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (12, N'Вселенная', '00:03:53', 1);

--slot
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (13, N'Introduction', '00:01:17', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (14, N'Инстинкт выживания', '00:03:58', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (15, N'Норма', '00:04:31', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (16, N'17 лет', '00:03:43', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (17, N'Чернуха', '00:03:52', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (18, N'Москва', '00:04:28', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (19, N'Джокер и Харли Квинн', '00:03:40', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (20, N'OBEY', '00:04:00', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (21, N'Big Bang', '00:03:49', 2);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (22, N'Стадия гнева', '00:04:09', 2);

--madonna
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (23, N'Living for Love', '00:03:38', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (24, N'Devil Pray', '00:04:05', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (25, N'Ghosttown', '00:04:08', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (26, N'Unapologetic Bitch', '00:03:50', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (27, N'Illuminati', '00:03:43', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (28, N'Bitch I`m Madonna', '00:03:47', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (29, N'Hold Tight', '00:03:37', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (30, N'Joan of Arc', '00:04:01', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (31, N'Iconic', '00:04:33', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (32, N'HeartBreakCity', '00:03:33', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (33, N'Body Shop', '00:03:39', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (34, N'Holy Water', '00:04:09', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (35, N'Inside Out', '00:04:23', 3);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (36, N'Wash All Over Me', '00:04:00', 3);

--madonna
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (37, N'Medellín', '00:04:58', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (38, N'Dark Ballet', '00:04:14', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (39, N'God Control', '00:06:19', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (40, N'Future', '00:03:53', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (41, N'Batuka', '00:04:57', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (42, N'Killers Who Are Partying', '00:05:28', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (43, N'Crave', '00:03:21', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (44, N'Crazy', '00:04:02', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (45, N'Come Alive', '00:04:02', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (46, N'Faz Gostoso', '00:04:05', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (47, N'Bitch I`m Loca', '00:02:50', 4);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (48, N'I Don`t Search I Find', '00:04:08', 4);

--lana del rey
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (49, N'Norman Fucking Rockwell', '00:04:08', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (50, N'Mariners Apartment Complex', '00:04:06', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (51, N'Venice Bitch', '00:09:38', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (52, N'Fuck It I Love Youruen', '00:03:38', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (53, N'Doin` Time', '00:03:22', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (54, N'Love Song', '00:03:49', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (55, N'Cinnamon Girlruen', '00:05:00', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (56, N'How to Disappear', '00:03:48', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (57, N'California', '00:05:05', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (58, N'The Next Best American Record', '00:05:49', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (59, N'The Greatestruen', '00:05:00', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (60, N'Bartender', '00:04:23', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (61, N'Happiness Is a Butterfly', '00:04:32', 5);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (62, N'Hope Is a Dangerous Thing for a Woman Like Me to Have – but I Have It', '00:05:24', 5);

--lana del rey
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (63, N'White Dress', '00:05:33', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (64, N'Chemtrails Over the Country Club', '00:04:31', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (65, N'Tulsa Jesus Freak', '00:03:35', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (66, N'Let Me Love You Like A Woman', '00:03:21', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (67, N'Wild at Heart', '00:04:06', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (68, N'Dark But Just a Game', '00:03:55', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (69, N'Not All Who Wander Are Lost', '00:04:07', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (70, N'Yosemite', '00:05:04', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (71, N'Breaking Up Slowly', '00:02:57', 6);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (72, N'Dance Till We Die', '00:04:03', 6);

--Taylor Swift
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (73, N'I Forgot That You Existed', '00:02:51', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (74, N'Cruel Summer', '00:02:58', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (75, N'Lover', '00:03:41', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (76, N'The Man', '00:03:10', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (77, N'The Archer', '00:03:31', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (78, N'I Think He Knows', '00:02:53', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (79, N'Miss Americana & The Heartbreak Prince', '00:03:54', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (80, N'Paper Rings', '00:03:42', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (81, N'Cornelia Street', '00:04:47', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (82, N'Death By A Thousand Cuts', '00:03:19', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (83, N'London Boy', '00:03:10', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (84, N'Soon You`ll Get Better', '00:03:22', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (85, N'False God', '00:03:20', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (86, N'You Need To Calm Down', '00:02:51', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (87, N'Afterglow', '00:03:43', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (88, N'ME!', '00:03:13', 7);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (89, N'Daylight', '00:04:53', 7);

--Taylor Swift
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (90, N'The 1', '00:03:30', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (91, N'Cardigan', '00:03:59', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (92, N'The Last Great American Dynasty', '00:03:51', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (93, N'Exile', '00:04:45', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (94, N'My Tears Ricochet', '00:04:15', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (95, N'Mirrorball', '00:03:29', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (96, N'Seven', '00:03:28', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (97, N'August', '00:04:21', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (98, N'This Is Me Trying', '00:03:15', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (99, N'Illicit Affairs', '00:03:10', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (100, N'Invisible String', '00:04:12', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (101, N'Mad Woman', '00:03:57', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (102, N'Epiphany', '00:04:49', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (103, N'Betty', '00:04:54', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (104, N'Peace', '00:03:54', 8);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (105, N'Hoax', '00:03:40', 8);

-- within temptation
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (106, N'Let Us Burn', '00:05:31', 9);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (107, N'Dangerous', '00:04:53', 9);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (108, N'And We Run ', '00:03:50', 9);

-- within temptation
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (109, N'The Reckoning', '00:04:11', 10);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (110, N'Endless War', '00:04:10', 10);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (111, N'Raise Your Banner', '00:05:34', 10);

-- as I lay dying
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (112, N'Cauterize', '00:03:37', 11);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (113, N'A Greater Foundation', '00:03:46', 11);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (114, N'Resilience', '00:04:07', 11);

-- as I lay dying
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (115, N'Burn to Emerge', '00:00:52', 12);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (116, N'Blinded', '00:03:22', 12);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (117, N'Shaped by Fire', '00:03:38', 12);

-- In flames
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (118, N'Drained', '00:04:06', 13);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (119, N'The End', '00:03:58', 13);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (120, N'Like Sand', '00:03:43', 13);

-- In flames
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (121, N'Voices', '00:04:47', 14);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (122, N'I, the Mask', '00:03:41', 14);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (123, N'Call My Name', '00:03:33', 14);

-- Michael Jackson
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (124, N'Wanna Be Starting Something', '00:06:03', 15);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (125, N'Baby Be Mine', '00:04:20', 15);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (126, N'The Girl Is Mine', '00:03:42', 15);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (127, N'Thriller', '00:05:57', 15);
-- Michael Jackson
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (128, N'Bad', '00:04:07', 16);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (129, N'The Way You Make Me Feel', '00:04:59', 16);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (130, N'Speed Demon', '00:04:01', 16);

-- Slipknot
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (131, N' XIX', '00:03:10', 17);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (132, N'Sarcastrophe', '00:05:06', 17);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (133, N'AOV', '00:05:32', 17);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (134, N'The Devil in I', '00:05:42', 17);

-- Slipknot
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (135, N'Insert Coin', '00:01:38', 18);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (136, N'Unsainted', '00:04:20', 18);
Insert into tracks (id_track, track_name, track_duration, id_album_t) values (137, N'Birth of the Cruel', '00:04:35', 18);



Insert into genres (id_genre, genre_name) values (1, N'nu metal');
Insert into genres (id_genre, genre_name) values (2, N'rapcore');
Insert into genres (id_genre, genre_name) values (3, N'alternative metal');
Insert into genres (id_genre, genre_name) values (4, N'pop');
Insert into genres (id_genre, genre_name) values (5, N'dance pop');
Insert into genres (id_genre, genre_name) values (6, N'indie pop');
Insert into genres (id_genre, genre_name) values (7, N'Symphonic metal');
Insert into genres (id_genre, genre_name) values (8, N'metalcore');



Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (1, 1);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (1, 2);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (1, 3);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (2, 4);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (2, 5);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (3, 4);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (3, 6);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (4, 4);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (5, 7);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (6, 3);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (6, 8);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (7, 7);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (7, 3);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (8, 4);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (8, 5);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (9, 1);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (9, 2);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (9, 3);
Insert into genr_2_artist(id_artist_ag, id_genre_ag) values (9, 8);



Insert into artist_2_album(id_artist_aa, id_album_aa) values (1, 1);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (1, 2);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (2, 3);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (2, 4);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (3, 5);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (3, 6);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (4, 7);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (4, 8);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (5, 9);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (5, 10);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (6, 11);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (6, 12);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (7, 13);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (7, 14);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (8, 15);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (8, 16);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (9, 17);
Insert into artist_2_album(id_artist_aa, id_album_aa) values (9, 18);



Insert into compilation_albums(id_collection, collection_title, collection_date) values (1, N'collection_1', '20170101');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (2, N'collection_2', '20170302');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (3, N'collection_3', '20180821');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (4, N'collection_4', '20180912');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (5, N'collection_5', '20190604');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (6, N'collection_6', '20201213');
Insert into compilation_albums(id_collection, collection_title, collection_date) values (7, N'collection_7', '20210724');

	
	
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (1, 1);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (1, 5);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (1, 10);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (1, 15);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (2, 20);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (2, 25);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (2, 30);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (2, 35);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (3, 40);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (3, 45);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (3, 50);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (3, 55);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (4, 60);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (4, 65);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (4, 70);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (4, 75);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (5, 80);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (5, 85);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (5, 90);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (5, 95);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (6, 100);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (6, 105);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (6, 110);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (6, 115);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (7, 120);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (7, 125);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (7, 130);
Insert into compilation_tracks(id_collection_ct, id_track_ct) values (7, 135);








select album_name, album_release_year from albums
	where album_release_year >= '20180101' and album_release_year <= '20190101';

select track_name, track_duration from tracks
	order by track_duration desc
	limit 1;

select track_name, track_duration from tracks
	where track_duration >= '00:03:30';
	
select collection_title, collection_date from compilation_albums
	where collection_date >= '20180101' and collection_date <= '20201231';
	
select id_artist, artist_name from artist
	where artist_name not like '%% %%';
	
select track_name from tracks
	where track_name like '%%my%%';
	
select track_name from tracks
	where track_name like '%%My%%';
	
select track_name from tracks
	where track_name like '%%мой%%';









