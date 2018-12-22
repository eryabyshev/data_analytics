"""
1.Дан произвольный список, содержащий только числа.Выведите результат сложения всех чисел больше 10.
"""


def sumOnlyMoreTen(list):
    sum = 0
    for i in range(len(list)):
        try:
            if int(list[i]) >= 10:
                sum += int(list[i])
        except ValueError:
            continue
    return sum


numbers = [10, "12", 5, "10", '1@', 12]

print(sumOnlyMoreTen(numbers))