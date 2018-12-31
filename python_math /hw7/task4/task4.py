"""
Из списка выгруженных тегов составим Pandas DataFrame.
4.1 Сгруппируйте по названию тега с помощью group_by
4.2 Для каждого тега вычислите, в каком количестве фильмов он встречается
4.3 Оставьте top-5 самых популярных тегов
"""
import pandas as pd

from hw7.task3.MongoConnector import MongoConnector

mongo = MongoConnector(dbName='movie', collection='tags')
data = mongo.getCollection().find()
df = pd.DataFrame(list(data))

result = df.groupby('name').count().reset_index().sort_values('id', ascending=False).head(5)['name'].values.tolist()
print(result)


