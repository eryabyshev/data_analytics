"""
Добавьте к задаче No6для словаря возможность (без преобразования словаря обратно в список) изменить группу студента.
Поиск по «ФИО» («ФИО» студента и новый номер группы необходимо ввести с клавиатуры)
"""


from lab.struct.task1 import listToDic

list = [[123, 'Ivanov', 18,'1443'],[324, 'Petrov', 21, '1223a'],[332, 'Sidorov', 21, '4445']]

students = listToDic(list)


def changeGroup(students):
    name = input("Enter name: ")

    for key, value in students.items():
        if name in students[key]:
            newGroup = input("Enter group: ")
            students[key][-1] = newGroup
            return
    print("Stutent {0} doesn't exist!".format(name))


changeGroup(students)
print(students)