import unittest
import numpy as np

from hw5.task1 import createNpArray
from hw5.task2 import doDioganalMatrix
from hw5.task2 import getSumOfMatrix
from hw5.task5 import  getCofFromStr

class TestOfHomeWork4Methods(unittest.TestCase):

    def testCreateNpArrayTest(self):
        a = np.array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
        b = createNpArray(10)
        self.assertEqual(type(a), type(b))

        for i in range(len(a)):
            self.assertEqual(a[i], b[i])

    def testGetSumOfMatrixTest(self):

        matrix = []
        sum = [1, 3, 6, 10, 15]
        for i in range(2, 7):
            matrix.append(doDioganalMatrix(i))

        for i in range(len(matrix)):
            self.assertEqual(sum[i], getSumOfMatrix(matrix[i]))



