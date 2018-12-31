
import psycopg2
import yaml

class PostgresConnector:
    def __init__(self,  pathToConfYaml = "/Users/mac/Developer/data_sciens/python_math /hw7/task1/connection.yaml" ):
        with open(pathToConfYaml) as conf:
            self.__thisConf = yaml.load(conf)
        self.__connection = None
        self.__cursor = None

    def getConnectToPostgress(self):
        if self.__connection is None:
            params = {
                "host": self.__thisConf['host'],
                "port": self.__thisConf['port'],
                "user": self.__thisConf['user']
            }
            self.__connection = psycopg2.connect(**params)
        return self.__connection

    def getCursor(self):
        if self.__cursor is None:
            conn = self.getConnectToPostgress()
            psycopg2.extensions.register_type(
                psycopg2.extensions.UNICODE,
                conn
            )
            conn.set_isolation_level(
                psycopg2.extensions.ISOLATION_LEVEL_AUTOCOMMIT
            )
            self.__cursor = conn.cursor()
        return self.__cursor

    def commit(self):
        if self.__connection is None:
            raise Exception("There is not connection to db")
        self.getConnectToPostgress().commit()

    def create(self, sqlQuery):
        cursor = self.getCursor()
        cursor.execute(sqlQuery)
        self.commit()

    def select(self, sqlQuery):
        cursor = self.getCursor()
        cursor.execute(sqlQuery)
        rows = cursor.fetchall()
        return rows


    def drop(self, tableName):
        self.create("drop table {0}".format(tableName))










