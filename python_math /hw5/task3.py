"""
Задание 3
Скачайте с сайта https://grouplens.org/datasets/movielens/ датасет любого размера. Определите какому фильму было
выставлено больше всего оценок 5.0.
"""

import pandas as pd
import yaml

yamlConf = "/Users/mac/Developer/data_sciens/python_math /hw5/conf/path.yaml"

with open(yamlConf) as conf:
    thisConf = yaml.load(conf)


raiting = pd.read_csv(thisConf['raitings'])
print(raiting.info())
movies = pd.read_csv(thisConf['movies'])
print(movies.info())

def idAndRaitingEquels(poin):
    temp = raiting.filter(items = ['movieId', 'rating'])
    return temp.query('rating =={}'.format(poin))

def getNameById(id, dataFrame):
     temp = dataFrame.filter(items = ['movieId', 'title'])
     return temp.query('movieId =={}'.format(id))

idAndRaitingEquelsFive = idAndRaitingEquels(5)
idOfMostPopular = int(str((idAndRaitingEquelsFive['movieId'].value_counts()).head(1)).split(" ")[0])

print(getNameById(idOfMostPopular, movies))







