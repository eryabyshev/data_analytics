"""
Задание 1

Дан список с визитами по городам и странам. Напишите код, который возвращает отфильтрованный список geo_logs,
содержащий только визиты из России. Считайте, что список geo_logs легко помещается в оперативной памяти.
"""

geo_logs = [

            {'visit1': ['Москва', 'Россия']},

            {'visit2': ['Дели', 'Индия']},

            {'visit3': ['Владимир', 'Россия']},

            {'visit4': ['Лиссабон', 'Португалия']},

            {'visit5': ['Париж', 'Франция']},

            {'visit6': ['Лиссабон', 'Португалия']},

            {'visit7': ['Тула', 'Россия']},

            {'visit8': ['Тула', 'Россия']},

            {'visit9': ['Курск', 'Россия']},

            {'visit10': ['Архангельск', 'Россия']}

]

def visitsFrpmRussia(geoLog):
    result = []

    for i in geoLog:
        for key in i:
            if("Россия" in i[key]):
                result.append(i)
    return result


print(visitsFrpmRussia(geo_logs))

"""
Задание 2
Выведите на экран все уникальные гео-ID из значений словаря ids. Т. е. список вида [213, 15, 54, 119, 98, 35]
"""

ids = {'user1': [213, 213, 213, 15, 213], 'user2': [54, 54, 119, 119, 119], 'user3': [213, 98, 98, 35]}


def showUniqId(ids):
    result = set()
    for key in ids:
        result = result.union(ids[key])
    print(list(result))

showUniqId(ids)


"""
Задание 3

Список поисковых запросов. Получить распределение количества слов в них. 
Т. е. поисковых запросов из одного слова 5%, из двух - 7%, из трех - 3% итд.
"""

map = dict()

queries = [

    'смотреть сериалы онлайн',

    'новости спорта',

    'афиша кино',

    'курс доллара',

    'сериалы этим летом',

    'курс по питону',

    'сериалы про спорт',

]



def fillMap(list):
    for i in queries:
        key = len(i.split(" "))
        if key in map:
            map[key] += 1
        else:
            map[key] = 1




def getWordDistribution(map, listLen):
    for key, value in map.items():
        print(key, "word(s) : ", round((value / listLen) * 100, 2), "%")

fillMap(queries)
getWordDistribution(map, len(queries))

"""
Задание 4 *

Дана статистика рекламных каналов по объемам продаж. Напишите скрипт, который возвращает название канала с максимальным объемом.

Т. е. в данном примере скрипт должен возвращать 'yandex'.
"""


stats = {'facebook': 55, 'yandex': 120, 'vk': 115, 'google': 99, 'email': 42, 'ok': 98}

def getChamelWithBestIndicator(map):
    max = 0
    best = str()
    for i in stats:
        if stats[i] > max:
            best = i
            max = stats[i]
    return best


print(getChamelWithBestIndicator(stats))


"""
Задание 5 *

Дан поток логов по количеству просмотренных страниц для каждого пользователя. Список отсортирован по ID пользователя. 
Вам необходимо написать алгоритм, который считает среднее значение просмотров на пользователя. Т. е. надо посчитать 
отношение суммы всех просмотров к количеству уникальных пользователей. Учтите, что весь список stream не помещается в 
оперативную память, т. е. его нужно обрабатывать поэлементно в цикле.
"""
stream = [

    '2018-01-01,user1,3',

    '2018-01-07,user1,4',

    '2018-03-29,user1,1',

    '2018-04-04,user1,13',

    '2018-01-05,user2,7',

    '2018-06-14,user3,4',

    '2018-07-02,user3,10',

    '2018-03-21,user4,19',

    '2018-03-22,user4,4',

    '2018-04-22,user4,8',

    '2018-05-03,user4,9',

    '2018-05-11,user4,11',

]



def groupByUser(strem):
    result = dict()

    for i in stream:
        temp = i.split(",")
        user = temp[1]
        point = int(temp[2])
        if user in result:
            result[user].append(point)
        else:
            result[user] = [point]
    return result


def getDistribution(map):
    for key, value in map.items():
        print(key, round(sum(value) / len(value), 2))

getDistribution(groupByUser(stream))


"""
Задание 6 *

Дана статистика рекламных кампаний по дням. Напишите алгоритм, который по паре дата-кампания ищет значение численного 
столбца. Т. е. для даты '2018-01-01' и 'google' нужно получить число 25. Считайте, что все комбинации дата-кампания 
уникальны, а список stats легко помещается в оперативной памяти.
"""

stats = [

    ['2018-01-01', 'google', 25],

    ['2018-01-01', 'yandex', 65],

    ['2018-01-01', 'market', 89],

    ['2018-01-02', 'google', 574],

    ['2018-01-02', 'yandex', 249],

    ['2018-01-02', 'market', 994],

    ['2018-01-03', 'google', 1843],

    ['2018-01-03', 'yandex', 1327],

    ['2018-01-03', 'market', 1764],

]


def doMap(stats):
    result = {}
    for i in stats:
        key = (i[0], i[1])
        value = int(i[2])
        result[key] = value
    return result

companyStatistic = doMap(stats)

print(companyStatistic[('2018-01-01', 'google')])


def doMapExpendet(stats):
    result = {}
    for i in stats:
        *key, value = i
        result[tuple(key)] = value
    return result

map = doMapExpendet(stats)
print(map[('2018-01-01', 'google')])