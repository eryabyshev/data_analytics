"""
1. Пусть список студентов представлен в виде структуры [[No, ФИО, Возраст,Группа],[No, ФИО, Возраст, Группа],
[No, ФИО, Возраст, Группа]]. Преобразуйте список в словарь вида: {No: [ФИО, Возраст, Группа], No:[....], No: [....]}
"""


def listToDic(list):
    result = {}
    for i in list:
        key = i[0]
        value = i[1:]
        result[key] = value
    return result

list = [[123, 'Ivanov', 18,'1443'],[324, 'Petrov', 21, '1223a'],[332, 'Sidorov', 21, '4445']]

print(listToDic(list))