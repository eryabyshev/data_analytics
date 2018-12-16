"""
Задание 2
Напишите функцию, которая классифицирует фильмы из материалов занятия по следующим правилам:
    - оценка 2 и меньше - низкий рейтинг
    - оценка 4 и меньше - средний рейтинг
    - оценка 4.5 и 5 - высокий рейтинг

Результат классификации запишите в столбец class
"""

import pandas as pd
import yaml

pathToConfYaml = "/Users/mac/Developer/data_sciens/python_math /hw6/conf.yaml"

with open(pathToConfYaml) as conf:
    thisConf = yaml.load(conf)
rating = pd.read_csv(thisConf['ratings'])



def getRaiting(rating):
    if rating <= 2:
        return 'low rating'
    elif rating <= 4:
        return 'average rating'
    else:
        return 'high rating'

rating['class'] = rating.apply(lambda x: getRaiting(x['rating']), axis=1)

