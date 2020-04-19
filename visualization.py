import cx_Oracle

import chart_studio
import chart_studio.plotly as py

import plotly.graph_objs as go

import re

import chart_studio.dashboard_objs as dashboard

def fileId_from_url(url):
    raw_fileId = re.findall("~[A-z.]+/[0-9]+", url)[0][1: ]
    return raw_fileId.replace('/', ':')

chart_studio.tools.set_credentials_file(username='SulJis', api_key='ba0srCFl2O5OxT7ffZbW')
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
genres = []
totalAnimes = []
for row in queryGenresResult:
    genres.append(row[0])
    totalAnimes.append(row[1])

genresData = [go.Bar(
    x = genres,
    y = totalAnimes
)]

genresLayout = go.Layout(
    title='Genres and animes',
    xaxis=dict(
        title='Genres',
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ),
    yaxis=dict(
        title='Number of animes',
        rangemode='nonnegative',
        autorange=True,
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    )
)

genresBar = go.Figure(data = genresData, layout=genresLayout)

genresTotalAnimes = py.plot(genresBar, filename='genresBar')

cursor.execute(queryRatings)
queryRatingsResult = cursor.fetchall()

ratings = []
percents = []

for row in queryRatingsResult:
    ratings.append(row[0])
    percents.append(row[1])

ratingsData = [go.Pie(
    labels = ratings,
    values = percents)]

ratingsPie = go.Figure(data = ratingsData)
ratingsPercents = py.plot(ratingsPie, filename = "ratingsPie")

cursor.execute(queryStudios)
queryStudiosResult = cursor.fetchall()
studios = []
score = []
for row in queryStudiosResult:
    studios.append(row[0])
    score.append(row[1])

studiosData = [go.Bar(
    x = studios,
    y = score
)]

studiosLayout = go.Layout(
    title='Studios and average score',
    xaxis=dict(
        title='Studios',
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ),
    yaxis=dict(
        title='Average score',
        rangemode='nonnegative',
        autorange=True,
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    )
)

studiosBar = go.Figure(data = studiosData, layout=studiosLayout)

studiosAvgScores = py.plot(studiosBar, filename='studiosBar')

cursor.close()
connection.close()

dboard = dashboard.Dashboard()
genresBarId = fileId_from_url(genresTotalAnimes)
ratingsPieId = fileId_from_url(ratingsPercents)
studiosBarId = fileId_from_url(studiosAvgScores)

box_1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': genresBarId,
    'title': 'Genres and total number of animes'
}
box_2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': ratingsPieId,
    'title': "Age ratings"
}

box_3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': studiosBarId,
    'title': "Studios and average score",
}

dboard.insert(box_1)
dboard.insert(box_2, 'below', 1)
dboard.insert(box_3, 'left', 2)
py.dashboard_ops.upload(dboard, 'My First Dashboard with Python')
