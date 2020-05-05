DROP TABLE Animes CASCADE CONSTRAINTS;
DROP TABLE Ratings CASCADE CONSTRAINTS;
DROP TABLE Genres CASCADE CONSTRAINTS;
DROP TABLE Studios CASCADE CONSTRAINTS;
DROP TABLE GenresAnimes CASCADE CONSTRAINTS;
DROP TABLE StudiosAnimes CASCADE CONSTRAINTS;
DROP SEQUENCE animeSequence;
DROP VIEW totalCount;

--creating tables
CREATE TABLE Animes(
     animeId NUMBER(5) NOT NULL PRIMARY KEY
    ,title VARCHAR(100) NOT NULL
    ,episodes NUMBER NOT NULL
    ,rating VARCHAR(5) NOT NULL
    ,score NUMBER(5,2) NOT NULL
    , CHECK(score > 0 AND score <= 10 AND episodes > 0)
 );
 
CREATE TABLE Ratings(
    rating VARCHAR(5) PRIMARY KEY
);

CREATE TABLE Genres(
  genre VARCHAR(20) NOT NULL PRIMARY KEY
);

CREATE TABLE Studios(
  studio VARCHAR(50) NOT NULL PRIMARY KEY
);

CREATE TABLE GenresAnimes(
    genre VARCHAR(20) NOT NULL
   ,animeId NUMBER(5) NOT NULL
   ,CONSTRAINT GA_pk PRIMARY KEY (genre, animeId)
);

CREATE TABLE StudiosAnimes(
    studio VARCHAR(50) NOT NULL
   ,animeId NUMBER(5) NOT NULL
   ,CONSTRAINT SA_pk PRIMARY KEY (studio, animeId)
);

--connecting tables

ALTER TABLE Animes
    ADD CONSTRAINT rating_fk
    FOREIGN KEY(rating)
    REFERENCES Ratings(rating);


ALTER TABLE StudiosAnimes
    ADD (
    CONSTRAINT studio_fk
    FOREIGN KEY(studio)
    REFERENCES Studios(studio),

    CONSTRAINT studio_anime_fk
    FOREIGN KEY(animeId)
    REFERENCES Animes(animeId)
);

ALTER TABLE GenresAnimes
    ADD (
    CONSTRAINT genre_fk
    FOREIGN KEY(genre)
    REFERENCES Genres(genre),

    CONSTRAINT genre_anime_fk
    FOREIGN KEY(animeId)
    REFERENCES Animes(animeId)
);

--auto-increment pole animeId
CREATE SEQUENCE animeSequence;

CREATE OR REPLACE TRIGGER animes_on_insert
  BEFORE INSERT ON Animes
  FOR EACH ROW
BEGIN
  SELECT animeSequence.nextval
  INTO :new.animeId
  FROM dual;
END;

CREATE VIEW totalCount AS
    SELECT COUNT(Animes.animeId) as totalAnimes FROM Animes;
