-- POPULATING RATINGS
INSERT INTO Ratings(rating) VALUES ('R');
INSERT INTO Ratings(rating) VALUES ('PG-13');
INSERT INTO Ratings(rating) VALUES ('PG');

--POPULATING GENRES
INSERT INTO Genres(genre) VALUES ('Action');
INSERT INTO Genres(genre) VALUES ('Military');
INSERT INTO Genres(genre) VALUES ('Adventure');
INSERT INTO Genres(genre) VALUES ('Comedy');
INSERT INTO Genres(genre) VALUES ('Drama');
INSERT INTO Genres(genre) VALUES ('Magic');
INSERT INTO Genres(genre) VALUES ('Fantasy');
INSERT INTO Genres(genre) VALUES ('Shounen');
INSERT INTO Genres(genre) VALUES ('Supernatural');
INSERT INTO Genres(genre) VALUES ('Romance');
INSERT INTO Genres(genre) VALUES ('School');
INSERT INTO Genres(genre) VALUES ('Sci-Fi');
INSERT INTO Genres(genre) VALUES ('Parody');
INSERT INTO Genres(genre) VALUES ('Samurai');
INSERT INTO Genres(genre) VALUES ('Historical');
INSERT INTO Genres(genre) VALUES ('Thriller');
INSERT INTO Genres(genre) VALUES ('Slice of Life');
INSERT INTO Genres(genre) VALUES ('Sports');
INSERT INTO Genres(genre) VALUES ('Mecha');
INSERT INTO Genres(genre) VALUES ('Super Power');
INSERT INTO Genres(genre) VALUES ('Space');
INSERT INTO Genres(genre) VALUES ('Seinen');
INSERT INTO Genres(genre) VALUES ('Mystery');
INSERT INTO Genres(genre) VALUES ('Police');
INSERT INTO Genres(genre) VALUES ('Psychological');

--POPULATING STUDIOS
INSERT INTO Studios(studio) VALUES ('Bones');
INSERT INTO Studios(studio) VALUES ('Bandai Namco Pictures');
INSERT INTO Studios(studio) VALUES ('White Fox');
INSERT INTO Studios(studio) VALUES ('Magic Bus');
INSERT INTO Studios(studio) VALUES ('Sunrise');
INSERT INTO Studios(studio) VALUES ('Gainax');
INSERT INTO Studios(studio) VALUES ('Studio Ghibli');
INSERT INTO Studios(studio) VALUES ('Toei Animation');
INSERT INTO Studios(studio) VALUES ('CoMix Wave Films');
INSERT INTO Studios(studio) VALUES ('Kyoto Animation');
INSERT INTO Studios(studio) VALUES ('Sentai Filmworks');
INSERT INTO Studios(studio) VALUES ('Madhouse');
INSERT INTO Studios(studio) VALUES ('David Production');
INSERT INTO Studios(studio) VALUES ('Tatsunoko Production');

--POPULATING ANIMES
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Fullmetal Alchemist: Brotherhood', '64', 'R', 9.25);
INSERT INTO Animes(title, episodes, rating, score) VALUES('Kimi no Na Wa.', 1, 'PG-13', 9.19);
INSERT INTO Animes(title, episodes, rating, score) VALUES('Gintama', 51, 'R', 9.16);
INSERT INTO Animes(title, episodes, rating, score) VALUES('Steins;Gate', 23, 'PG-13', 9.14);
INSERT INTO Animes(title, episodes, rating, score) VALUES('Clannad: After Story', 24, 'PG-13', 9.01);
INSERT INTO Animes(title, episodes, rating, score) VALUES('Haikyuu!!: Karasuno Koukou VS Shiratorizawa Gakuen Koukou', 10, 'PG-13', 8.9);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Code Geass: Hangyaku no Lelouch R2', 25, 'R', 8.95);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Sen to Chihiro no Kamikakushi', 1, 'PG', 8.92);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Cowboy Bebop', 26, 'R', 8.81);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Tengen Toppa Gurren Lagann', 27, 'PG-13', 8.74);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('One Punch Man', 12, 'R', 8.73);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Death Note', 37, 'R', 8.67);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('JoJo no Kimyou na Bouken: Diamond wa Kudakenai', 39, 'R', 8.64);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Violet Evergarden', 13, 'PG-13', 8.57);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('One Piece', 930, 'PG-13', 8.54);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Mob Psycho 100', 12, 'PG-13', 8.51);
INSERT INTO Animes(title, episodes, rating, score) VALUES ('Neon Genesis Evangelion', 24, 'PG-13', 8.31);

--POPULATING GENRESANIMES
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Military', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Magic', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Fantasy', 1);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 1);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('School', 2);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 2);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Romance', 2);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 2);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Historical', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Parody', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Samurai', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 3);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 3);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 4);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Thriller', 4);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Slice of Life', 5);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 5);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 5);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Romance', 5);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 5);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 6);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sports', 6);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 6);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('School', 6);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 6);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 7);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 7);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Mecha', 7);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Military', 7);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 7);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Super Power', 7);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 8);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 8);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 8);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 9);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 9);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 9);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 9);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Space', 9);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 9);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 10);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 10);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Mecha', 10);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 10);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 10);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Parody', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Super Power', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 11);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Seinen', 11);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Mystery', 12);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Police', 12);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Psychological', 12);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 12);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Thriller', 12);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 12);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 13);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 13);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 13);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 13);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 13);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 13);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Slice of Life', 14);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 14);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Fantasy', 14);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Adventure', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Super Power', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Fantasy', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 15);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Shounen', 15);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Slice of Life', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Supernatural', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Comedy', 16);

INSERT INTO GenresAnimes(genre, animeId) VALUES ('Action', 17);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Sci-Fi', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Psychological', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Drama', 16);
INSERT INTO GenresAnimes(genre, animeId) VALUES ('Mecha', 16);

--POPULATING STUDIOSANIMES
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Bones', 1);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('CoMix Wave Films', 2);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Bandai Namco Pictures', 3);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('White Fox', 4);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Kyoto Animation', 5);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Sentai Filmworks', 6);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Sunrise', 7);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Studio Ghibli', 8);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Sunrise', 9);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Gainax', 10);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Madhouse', 11);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Madhouse', 12);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('David Production', 13);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Kyoto Animation', 14);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Toei Animation', 15);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Bones', 16);

INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Gainax', 17);
INSERT INTO StudiosAnimes(studio, animeId) VALUES ('Tatsunoko Production', 17);
