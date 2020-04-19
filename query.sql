--FIRST QUERY

SELECT GenresAnimes.genre, COUNT(GenresAnimes.genre) AS totalAnimes
FROM Animes
INNER JOIN GenresANIMES
ON Animes.animeId = GenresAnimes.animeId
GROUP BY GenresAnimes.genre
ORDER BY totalAnimes DESC;

--SECOND QUERY (totalCount - це view, що містить кількість усіх аніме, створено у create.sql)
SELECT Animes.rating, ROUND(
                            (COUNT(Animes.rating)/(SELECT totalAnimes from totalCount))*100
                            )
                         AS percent
FROM Animes
GROUP BY Animes.rating
ORDER BY percent DESC;

--THIRD QUERY

SELECT s.studio as studio, TRUNC(AVG(a.score),2) as averageScore
FROM
Animes a
INNER JOIN StudiosAnimes s
USING (animeId)
GROUP BY studio
ORDER BY averageScore;
