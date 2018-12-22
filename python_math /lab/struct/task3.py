"""
Добавьте к задаче No6 для словаря возможность (без преобразования словаря обратно в список) изменить возраст
студента.
"""

from lab.struct.task1 import listToDic

list = [[123, 'Ivanov', 18,'1443'],[324, 'Petrov', 21, '1223a'],[332, 'Sidorov', 21, '4445']]

students = listToDic(list)

def changeAge(students):
    name = input("Enter name: ")

    for key, value in students.items():
        if name in students[key]:
            age = input("Enter age: ")
            students[key][-2] = age
            return
    print("Stutent {0} doesn't exist!".format(name))


changeAge(students)
print(students)