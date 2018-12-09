"""
Задание 5
Напишите функцию, возвращающую сумму первых n чисел Фибоначчи
"""

def fib(n):
    first = 1
    second = 1
    sum = 0

    for i in range(n - 1):

        temp = first + second
        first = second
        second = temp

        sum += first
    return sum + 1

print(fib(5))

assert fib(1) == 1
assert fib(2) == 2
assert fib(3) == 4
assert fib(4) == 7
assert fib(5) == 12