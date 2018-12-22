"""
1. Пусть дана матрица чисел размером NхN. Представьте данную матрицу ввиде списка. Выведите результат сложения всех элементов матрицы
"""

def matrixToList(matrix):
    result = []
    for i in matrix:
        result += i
    return result



matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(sum(matrixToList(matrix)))