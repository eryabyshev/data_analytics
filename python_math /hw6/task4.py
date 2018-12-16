"""
Задание 4
Есть мнение, что "раньше снимали настоящее кино, не то что сейчас". Ваша задача проверить это утверждение, используя файлы с рейтингами фильмов из материалов занятия. Т. е. проверить верно ли, что с ростом года выпуска фильма его средний рейтинг становится ниже.

При этом мы не будем затрагивать субьективные факторы выставления этих рейтингов, а пройдемся по следующему алгоритму:

1. В переменную years запишите список из всех годов с 1950 по 2010.

2. Напишите функцию production_year, которая каждой строке из названия фильма выставляет год выпуска. Не все названия фильмов содержат год выпуска в одинаковом формате, поэтому используйте следующий алгоритм:
    - для каждой строки пройдите по всем годам списка years
    - если номер года присутствует в названии фильма, то функция возвращает этот год как год выпуска
    - если ни один из номеров года списка years не встретился в названии фильма, то возвращается 1900 год

3. Запишите год выпуска фильма по алгоритму пункта 2 в новый столбец 'year'

4. Посчитайте средний рейтинг всех фильмов для каждого значения столбца 'year' и отсортируйте результат по убыванию рейтинга
"""
import pandas as pd
import yaml
import re
import matplotlib.pyplot as plt

pathToConfYaml = "/Users/mac/Developer/data_sciens/python_math /hw6/conf.yaml"

with open(pathToConfYaml) as conf:
    thisConf = yaml.load(conf)
movies = pd.read_csv(thisConf['movies'])
rating = pd.read_csv(thisConf['ratings'])

def production_year(str):
    match = re.search(r'[(](\d{4})[)]', str)
    return match[0].strip(')').strip('(') if match else '1900'


movies['year'] = movies.apply(lambda x: production_year(x['title']), axis=1)

totalFrame = rating.merge(movies, on='movieId', how='left').filter(items=['year', 'rating'])
yearRatin = totalFrame.groupby('year').mean().reset_index()


plt.plot(yearRatin['year'], yearRatin['rating'])
plt.show()
