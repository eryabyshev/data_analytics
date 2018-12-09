"""
Задание 2

Дан список чисел, часть из которых имеют строковый тип или содержат буквы. Напишите функцию, которая возвращает сумму
квадратов элементов, которые могут быть числами. data = [1, '5', 'abc', 20, '2']
"""

data = [1, '5', 'abc', 20, '2']

def isNumber(x):
    try:
        int(x)
    except:
        return False
    return True


def sumSquar(list):
    sum = 0
    for i in list:
        if isNumber(i):
            sum += int(i) ** 2
    return sum

assert sumSquar(data) == 430

data = ['1q2', '@', '7[']
assert sumSquar(data) == 0