"""
Задание 6

Напишите функцию, преобразующую произвольный список вида ['2018-01-01', 'yandex', 'cpc', 100] в словарь
{'2018-01-01': {'yandex': {'cpc': 100}}}
"""

list = ['2018-01-01', 'yandex', 'cpc', 100]


def doDictFromList(list, dict = None, counter = len(list) - 1):
    if counter == len(list) - 1 :
        dict = {list[-2]: list[-1]}
        return doDictFromList(list, dict, counter - 2)
    else:
        dict = {list[counter]: dict}
        if(counter == 0):
            return dict
        else:
            return doDictFromList(list, dict, counter - 1)


assert doDictFromList(list, dict) == {'2018-01-01': {'yandex': {'cpc': 100}}}

