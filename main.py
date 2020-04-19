import cx_Oracle

connection = cx_Oracle.connect("SulJis", "password")

cursor = connection.cursor()

queryGenres = """
SELECT GenresAnimes.genre, COUNT(GenresAnimes.genre) AS totalAnimes
FROM Animes
INNER JOIN GenresANIMES
ON Animes.animeId = GenresAnimes.animeId
GROUP BY GenresAnimes.genre
ORDER BY totalAnimes DESC"""

queryRatings = """
SELECT Animes.rating, ROUND(
                            (COUNT(Animes.rating)/(SELECT totalAnimes from totalCount))*100
                            )
                         AS percent
FROM Animes
GROUP BY Animes.rating
ORDER BY percent DESC"""

queryStudios = """
SELECT s.studio as studio, TRUNC(AVG(a.score),2) as averageScore
FROM
Animes a
INNER JOIN StudiosAnimes s
USING (animeId)
GROUP BY studio
ORDER BY averageScore"""

cursor.execute(queryGenres)
queryGenresResult = cursor.fetchall()
print("QUERY 1\n")
print("{:20}|{}".format("Genres", "Total"))
print("_____________________________________")
for row in queryGenresResult:
    print("{:20}|{:5}".format(row[0], row[1]))
print("\n")
cursor.execute(queryRatings)

queryRatingsResult = cursor.fetchall()
print("QUERY 2\n")
print("{:10}|{:7}".format("Rating", "Percent"))
print("_______________________")
for row in queryRatingsResult:
    print("{:10}|{:7}".format(row[0],row[1]))

print("\n")
cursor.execute(queryStudios)
queryStudiosResult = cursor.fetchall()

print("QUERY 3\n")
print("{:30}|{}".format("Studios", "Average score"))
print("____________________________________________")
for row in queryStudiosResult:
    print("{:30}|{:13}".format(row[0],row[1]))

cursor.close()
connection.close()
