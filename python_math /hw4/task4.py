"""
Задание 4
Напишите функцию, которая возвращает список дат с 1 по вчерашний день текущего месяца. Если дан 1 день месяца,
то возвращается список дней прошлого месяца.

"""

from hw4.task2 import safeGetDateListBetween
from datetime import datetime


def fromFirsDayUntilYesterday():
    today = datetime.now()

    if today.day == 1:
        start = '{0}-{1}-{2}'.format(today.year, format(str(today.month - 1)), '01')
        end = '{0}-{1}-{2}'.format(today.year, format(str(today.month)), format(str(today.day)))
    else:
        start = '{0}-{1}-{2}'.format(today.year, format(str(today.month)), '01')
        end = '{0}-{1}-{2}'.format(today.year, format(str(today.month)), format(str(today.day - 1)))
    return safeGetDateListBetween(start, end)


def format(str):
    if len(str) < 2:
        return '0' + str
    else:
        return str

print(fromFirsDayUntilYesterday())