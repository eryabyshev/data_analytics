"""
Задание 2

Дополните функцию из первого задания проверкой на корректность дат. В случае неверного формата или
если start_date > end_date должен возвращаться пустой список.

"""
from hw4.task1 import getDateListBetween


def safeGetDateListBetween(start, finish):
    result = list()
    try:
        result = getDateListBetween(start, finish)
    except:
        result = list()
    finally:
        return result


print(safeGetDateListBetween('2018-12-10', '2018-12-01'))
print(safeGetDateListBetween('201§-12-01', '2018-12-01'))

print(safeGetDateListBetween('', '2111-12-02'))