
"""
Необходимо с помощью Psycorg выполнить создание таблицы movies_top c помощью
конструкции
SELECT *  INTO movies_top FROM (ЗАПРОС);
Где ЗАПРОС имеет следующий вид:

-три поля: movieId (id фильма), ratings_num(число рейтингов), ratings_avg (средний рейтинг фильма)
-В выборку должны попасть только фильмы, у которых средний рейтинг выше 3.
"""

from hw7.task1 import doTableMoviesTop, PostgresConnector

db = PostgresConnector()

doTableMoviesTop(db)

sql = "select * from movies_top"
result = db.select(sql)
print(result)
db.drop("movies_top")