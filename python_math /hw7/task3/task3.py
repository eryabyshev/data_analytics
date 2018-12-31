"""
Нужно подключиться к Pymongo и и выгрузить список тегов для списка популярного контента,
полученный на предыдущем шаге.

В выборку должны попать теги фильмов из массива top_rated_content_ids и модификатор $in.
"""
from hw7.task3 import loadTagsInMongo
loadTagsInMongo()