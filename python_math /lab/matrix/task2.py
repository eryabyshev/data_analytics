"""
2. Пусть дана матрица чисел размером NхM. Найти столбец матрицы с максимальной суммой элементов.
"""
import sys

def getMaxColum(matrix):
    width = len(matrix)
    height = len(matrix[0])
    results = []
    for j in range(height):
        temp = 0
        for i in range(width):
            temp += matrix[i][j]
        results.append(temp)
    return getPlaceOfMaxValue(results)




def getPlaceOfMaxValue(list):
    max = -sys.maxsize -1
    best = -1
    for i in range(len(list)):
        if(list[i] > max):
            max = list[i]
            best = i
    return best


matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(getMaxColum(matrix))