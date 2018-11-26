
"""
1. Даны 2 строки long_phrase и short_phrase. Напишите код, который проверяет действительно ли длинная
фраза long_phrase длиннее короткой short_phrase. И выводит True или False в зависимости от результата
сравнения.
"""


long_phrase = 'Насколько проще было бы писать программы, если бы не заказчики'
short_phrase = '640Кб должно хватить для любых задач. Билл Гейтс (по легенде)'

if len(long_phrase) > len(short_phrase):
    print("long_phrase is longer")
else:
    print("short_phrase is longer")

"""
2. Дана строка text. Определите какая из двух букв встречается в нем чаще - 'а' или 'и'.
text = 'Если программист в 9-00 утра на работе, значит, он там и ночевал'
"""
text = 'Если программист в 9-00 утра на работе, значит, он там и ночевал'

if(len(text) - len(text.replace("а", "")) > len(text) - len(text.replace("и", ""))):
    print("a")
else:
    print("и")
print("more common")


"""
3. Дано значение объема файла в байтах. Напишите перевод этого значения в мегабайты в формате:
'Объем файла равен 213.68Mb'
"""
def convertToMb(byte):
    result = byte / 10**6
    return f"{result:.2f}Mb"

print(convertToMb(1236568789))


"""
4. Выведите на экран значение синуса 30 градусов с помощью метода math.sin.
"""

import math

def sinToDegreeFromRad(a):
    angle = (a * math.pi) / 180
    return math.sin(angle)

print(f'{sinToDegreeFromRad(30):.2}')

