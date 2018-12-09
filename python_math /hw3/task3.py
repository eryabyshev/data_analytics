import requests
"""
Задание 3

Напишите функцию, которая возвращает название валюты (поле 'Name') с максимальным значением курса с
помощью сервиса https://www.cbr-xml-daily.ru/daily_json.js
"""

def findValue(req, resultMap):
    for key, value in req.items():
        if("Name" in value and "Value" in value):
            resultMap[str(value["Name"])] = value["Value"]
        else:
            findValue(value, resultMap)

def findMax(map):
    max = 0
    result = ()
    for key, value in map.items():
        if value > max:
            max = value
            result = key, value
    return result


def doMaxVlueOfСurrency():
    url = 'https://www.cbr-xml-daily.ru/daily_json.js'
    req = requests.get(url)
    map = {}
    findValue(req.json()["Valute"], map)
    return findMax(map)

print(doMaxVlueOfСurrency())