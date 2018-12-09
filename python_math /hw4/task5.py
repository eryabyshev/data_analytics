"""
Задание 5

Напишите функцию, которая возвращает точную дату в формате YYYY-MM-DD по фразе:
1. 'today' - сегодняшнюю дату
2. 'last monday' -  прошлый понедельник
3. 'last day' - Последний день текущего месяца
"""
from datetime import datetime
from datetime import timedelta

def exactDate(command):

    try:
        comands = {
            'today': getToday,
            'last monday': getLastMonday,
            'last day': getLastDay
        }
        return comands[command]().strftime('%Y-%m-%d')
    except KeyError:
        return None




def getToday():
    return datetime.now()

def getLastMonday():
    day = getToday()
    i = 1
    while day.strftime('%w') != '1':
        day -= timedelta(days = i)
        i+=1
    return day


def getLastDay():
    day = getToday()
    if(day.month == 12):
        return datetime(day.year, 12, 31)
    else:
        nextMoth = day.replace(month = day.month + 1).replace(day=1)
    return nextMoth - timedelta(days=1)


print(exactDate('today'))
print(exactDate('last monday'))
print(exactDate('last day'))