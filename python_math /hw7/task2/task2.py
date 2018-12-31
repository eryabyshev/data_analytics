"""
Нужно подключиться с помощью интерфейсов SQLAlchemy к новой таблице movies_top.
С помощью механизмов ORM написать запрос , который
2.1) выберите контент у которого больше 15 оценок (используйте filter)
2.2) средний рейтинг больше 3.5 (filter ещё раз)
2.3) отсортировать по среднему рейтингу (используйте order_by())
id этих фильмов сохраняем в массив top_rated_content_ids
"""
from hw7.task2 import getMovieIdWhereNumGreater15AndAvgEquelOrGreater3dot4OrderByAvg

print(getMovieIdWhereNumGreater15AndAvgEquelOrGreater3dot4OrderByAvg())