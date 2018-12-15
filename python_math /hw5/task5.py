"""
Задание 5
Решите систему уравнений:
4x + 2y + z = 4
x + 3y = 12
5y + 4z = -3
"""

import numpy as np


cof = [[4, 2, 1], [1, 3, 0], [0, 5, 4]]
vector = [4, 12, -3]

def equation(cof, vector):
    matrix = np.array(cof)
    det = np.linalg.det(matrix)
    if det == 0:
        return

    return np.linalg.solve(matrix, vector)


print(equation(cof, vector))
