"""
2. Пусть задан список, содержащий строки.Выведите все строки, заканчивающиеся буквой r.
"""


def strEnd(list, lettter = 'r'):
    for i in list:
        if i[-1] == lettter:
            print(i)

list = ['1qaz', '2wsx', '3edr', '4qad', '5qwer']

strEnd(list)