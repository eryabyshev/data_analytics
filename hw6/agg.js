
use movies

print("Student : 'ФИО: Рябышев Евгений'")

print("tags count: ", 'расчёт количества тегов');

db.tags.find().count();

print("woman tags count: ", 'расчёт количества тегов woman');

db.tags.find(
    {name: 'woman'}
    ).count();


print("top counter of tags : теги самых просматриваемых фильмов")
db.tags.aggregate([
    {$group: {_id: "$name", count: {$sum: 1}}},
            { $sort: { "count": -1 }},
            { $limit: 3 }
    ]);



