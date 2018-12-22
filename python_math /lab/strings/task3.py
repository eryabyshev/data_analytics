"""
3. Сгенерируйте и выведитеcлучайнуюстроку размером 6 символов, содержащуютолько цифры. Строка должна содержать хотя бы однуцифру 3
"""

import random

def insert(number, replacer = '3'):
    if not '3' in str(number):
        temp = str(number)
        plase = random.randint(0, len(temp) - 1)
        temp = temp[:plase] + replacer + temp[plase + 1:]
        return temp
    return str(number)

def getRandomStrСonsistingOnlyNumber():
    number = random.randint(100000, 999999)
    return insert(number)


print(getRandomStrСonsistingOnlyNumber())