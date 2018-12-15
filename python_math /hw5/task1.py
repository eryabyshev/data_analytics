import numpy as np

"""
Задание 1
Создайте numpy array с элементами от числа N до 0 (например, для N = 10 это будет array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])).
"""


def createNpArray(n):
    return np.arange(0, n)[::-1]


