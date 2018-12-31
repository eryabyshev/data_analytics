


from hw7.task1.postgresConnector import PostgresConnector


def doTableMoviesTop(db):
    sql = """
    select movieid, count(rating) as ratings_num, avg(rating) as ratings_avg
    into movies_top from ratings
    group by movieid
    having avg(rating) > 3;
    """
    db.create(sql)


