"""
Задание 1

Дан список вида: data = [ [13, 25, 23, 34], [45, 32, 44, 47], [12, 33, 23, 95], [13, 53, 34, 35], ]
Напишите функцию, которая возвращает сумму элементов на диагонали. Т. е. 13+32+23+35.
"""

data = [[13, 25, 23, 34], [45, 32, 44, 47], [12, 33, 23, 95], [13, 53, 34, 35]]


def isSquare(matrix):
    return (len(matrix) == len(matrix[0]))

def isRightLine(line, sizeMustBe):
    return len(line) == sizeMustBe



def diagonalSum(matrix):
    size = len(matrix)
    sum = 0
    if(isSquare(matrix)):
        for i in range(size):
            if (isRightLine(matrix[i], size) == False):
                return
            else:
                sum += matrix[i][i]
        return sum

assert diagonalSum(data) == 103

data = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
assert diagonalSum(data) == 15

data = [[1], [2, 3], [4, 5, 6]]
assert diagonalSum(data) == None