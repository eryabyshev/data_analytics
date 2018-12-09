
"""
Задание 1
Напишите функцию date_range, которая возвращает список дней между датами start_date и end_date.
Даты должны вводиться в формате YYYY-MM-DD.

"""
from datetime import datetime
from datetime import timedelta

def getDateListBetween(start, finish):
    startDt = datetime.strptime(start, '%Y-%m-%d')
    list = []
    temp = startDt
    while temp.strftime('%Y-%m-%d') < finish:
        temp += timedelta(days = 1)
        list.append(temp.strftime('%Y-%m-%d'))
    return list


print(getDateListBetween('2018-10-01', '2018-12-10'))