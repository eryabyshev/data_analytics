

from hw7.task1.postgresConnector import PostgresConnector
from hw7.task1 import doTableMoviesTop
from hw7.task2.moviesTop import MovieTopSession, MovieTop


def getMovieIdWhereNumGreater15AndAvgEquelOrGreater3dot4OrderByAvg():
    sql = """
    select count(*) from information_schema.tables
    where table_name = 'movies_top';
    """
    ps = PostgresConnector()
    result = ps.select(sql)[0][0]

    if result == 0:
        doTableMoviesTop(ps)

    moviesTop = MovieTopSession()
    session = moviesTop.getSession()

    resultOfQuery = session.query(MovieTop).filter(MovieTop.ratings_num > 15).filter(MovieTop.ratings_avg >= 3.5).order_by(MovieTop.ratings_avg)

    top_rated_content_ids = []
    for i in resultOfQuery:
        top_rated_content_ids.append(i.movieid)
    return top_rated_content_ids



