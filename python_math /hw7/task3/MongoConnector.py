import yaml
from pymongo import MongoClient

class MongoConnector:
    def __init__(self, dbName, collection, config = '/Users/mac/Developer/data_sciens/python_math /hw7/task3/connection.yaml'):
        with open(config) as conf:
            thisConf = yaml.load(conf)
        self.__client = MongoClient(thisConf['host'], int(thisConf['port']))
        self.__db = self.__client[dbName]
        self.__collection = self.__db[collection]


    def getDb(self):
        return self.__client[self.__db]

    def getCollection(self):
        return self.__collection





