"""
Задание 3
Дан поток дат в формате YYYY-MM-DD, в которых встречаются некорректные значения:
stream = ['2018-04-02', '2018-02-29', '2018-19-02']
Напишите функцию, которая проверяет эти даты на корректность.
Т. е. для каждой даты возвращает True (дата корректна) или False (некорректная дата).
"""
from datetime import datetime

stream = ['2018-04-02', '2018-02-29', '2018-19-02']

def dateChcker(date):
    try:
        datetime.strptime(date, '%Y-%m-%d')
        return (date, True)
    except ValueError:
        return (date, False)


print([dateChcker(x) for x in stream])