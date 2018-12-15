"""
Задание 2
Создайте диагональную матрицу с элементами от N до 0. Посчитайте сумму ее значений на диагонали.
"""

import numpy as np

def doDioganalMatrix(n):
    return np.diag(np.arange(n), k=0)

def getSumOfMatrix(matrix):
    sum = 0
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            sum += matrix[i][j]
    return sum

matrix = doDioganalMatrix(6)
print(getSumOfMatrix(matrix))