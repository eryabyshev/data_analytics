import yaml
from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, Float, MetaData, String
from sqlalchemy.orm import mapper
from sqlalchemy.orm import sessionmaker
from sqlalchemy import func
from sqlalchemy.sql import label
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class MovieTop(Base):
    __tablename__ = 'movies_top'
    movieid = Column(Integer, primary_key=True)
    ratings_num = Column(Integer)
    ratings_avg = Column(Float)

    def __repr__(self):
        return "<MovieTop('%s','%s', '%s')>" % (self.movieid, self.ratings_num, self.ratings_avg)



class MovieTopSession:
    def __init__(self, config = '/Users/mac/Developer/data_sciens/python_math /hw7/task2/connection.yaml'):
        with open(config) as conf:
            thisConf = yaml.load(conf)
        self.__engine = create_engine('{0}://{1}:@{2}:{3}'.format(
            thisConf['engine'], thisConf['user'], thisConf['host'], thisConf['port']
        ))
        self.__metadata = MetaData()
        self.__metadata.create_all(self.__engine)
        Session = sessionmaker(bind=self.__engine)
        self.__session = Session()

    def getSession(self):
        return self.__session

    def getEngine(self):
        return self.__engine


