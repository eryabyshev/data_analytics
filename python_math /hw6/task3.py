"""
Задание 3
Посчитайте среднее значение Lifetime киноманов (пользователи, которые поставили 100 и более рейтингов). Под Lifetime
понимается разница между максимальным и минимальным значением timestamp для каждого пользователя. Ответ дайте в днях.
"""

import pandas as pd
import yaml

pathToConfYaml = "/Users/mac/Developer/data_sciens/python_math /hw6/conf.yaml"

with open(pathToConfYaml) as conf:
    thisConf = yaml.load(conf)
rating = pd.read_csv(thisConf['ratings'])


def getDaysBetween(start, finish):
    day = 24 * 360000
    return round((finish - start) / day , 2)

ratings_count = rating.groupby('userId').count().reset_index()
userIdOver100 = ratings_count[ratings_count['movieId'] > 100]['userId'].tolist()
minMaxTime = (rating[rating['userId'].isin(userIdOver100)]).groupby('userId').agg(['min', 'max'])['timestamp']

minMaxTime['lifetime'] = minMaxTime.apply(lambda x: getDaysBetween(x['min'], x['max']), axis=1)




