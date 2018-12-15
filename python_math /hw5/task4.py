"""
Задание 4
По данным файла power.csv посчитайте суммарное потребление стран Прибалтики
(Латвия, Литва и Эстония) категорий 4, 12 и 21 за период с 2005 по 2010 года.
Не учитывайте в расчетах отрицательные значения quantity.
"""

import yaml
import pandas as pd

yamlConf = "/Users/mac/Developer/data_sciens/python_math /hw5/conf/path.yaml"

with open(yamlConf) as conf:
    thisConf = yaml.load(conf)

power = pd.read_csv(thisConf['power'])


def getOnlyBaltic(df, countris=['Latvia', 'Lithuania', 'Estonia'], category=[4, 12, 21], start = 2010, finish = 2015):

    filter = [getFilter('country', countris),
              getFilter('category', category),
              'year >= {0} and year <= {1}'.format(start, finish)]
    return (df.query(getBigFilter(filter))).query("quantity >= 0")





def getFilter(name, args):
    temp = '{0}=="{1}"'.format(name, args[0])
    result = temp
    for i in range(1, len(args)):
        temp = ' or {0}=="{1}"'.format(name, args[i])
        result += temp
    return result


def getBigFilter(filters):
    result = '(' + filters[0] + ')'
    for i in range(1, len(filters)):
        result += ' and (' + filters[i] + ')'
    return result


print(getOnlyBaltic(power)['quantity'].sum())
