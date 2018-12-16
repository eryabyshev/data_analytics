"""
Задание 1
Используем файл keywords.csv.

Необходимо написать гео-классификатор, который каждой строке сможет выставить географическую
принадлежность определенному региону. Т. е. если поисковый запрос содержит название города региона,
то в столбце 'region' пишется название этого региона. Если поисковый запрос не содержит названия города,
то ставим 'undefined'.

Правила распределения по регионам Центр, Северо-Запад и Дальний Восток:

geo_data = {

    'Центр': ['москва', 'тула', 'ярославль'],

    'Северо-Запад': ['петербург', 'псков', 'мурманск'],

    'Дальний Восток': ['владивосток', 'сахалин', 'хабаровск']

}

"""

import pandas as pd
import yaml

pathToConfYaml = "/Users/mac/Developer/data_sciens/python_math /hw6/conf.yaml"
tagInCsv = "keywords"

with open(pathToConfYaml) as conf:
    thisConf = yaml.load(conf)
keywords = pd.read_csv(thisConf[tagInCsv])


class GeoAnalizator:
    def __init__(self):
        self.__geo_data = {
            'Центр': ['москв', 'тул', 'ярослав'],
            'Северо-Запад': ['петербур', 'псков', 'мурманск'],
            'Дальний Восток': ['владивосток', 'сахалин', 'хабаровск']
        }

    def getRegion(self, str, colName = "keyword"):
        str = str[colName]
        for key, value in self.__geo_data.items():
            for city in self.__geo_data[key]:
                if(city in str):
                    return key

        return 'undefined'


analizator = GeoAnalizator()
keywords['region'] = keywords.apply(lambda x: analizator.getRegion(x), axis=1)



