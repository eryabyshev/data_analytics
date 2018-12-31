from hw7.task2 import getMovieIdWhereNumGreater15AndAvgEquelOrGreater3dot4OrderByAvg
from hw7.task3.MongoConnector import MongoConnector



def loadTagsInMongo():
    con = MongoConnector(dbName='movie', collection='tags')
    collection = con.getCollection()
    dataSource = '/Users/mac/Developer/data_sciens/python_math /hw7/task3/data/keywords.tsv'
    dataResult = []
    inList = set(getMovieIdWhereNumGreater15AndAvgEquelOrGreater3dot4OrderByAvg())
    with open(dataSource, 'r') as f:
        for line in f.readlines():
            movieId, tags = line.strip().split('\t')
            if int(movieId) in inList and len(tags) > 0:
                tags = eval(tags)
                for tag in tags:
                    tag.update({'movieId': movieId})
                dataResult.append(tag)
    collection.insert_many(dataResult)
