SELECT 'ФИО: Рябышев Евгений' as Studen ;

--Оконные функции.
--Вывести список пользователей в формате userId, movieId, normed_rating, avg_rating где

--userId, movieId - без изменения
--для каждого пользователя преобразовать рейтинг r в нормированный - normed_rating=(r - r_min)/(r_max - r_min), где r_min и r_max соответственно минимально и максимальное значение рейтинга у данного пользователя
--avg_rating - среднее значение рейтинга у данного пользователя
--Вывести первые 30 таких записей

select  userId, movieId,
        avg(rating) OVER (PARTITION BY userid ORDER BY movieid) as avg_rating,
        rating - MIN(rating) over(ORDER BY rating) /

            (MAX(rating) over(PARTITION BY userid) -
        MIN(rating) over(PARTITION BY userid)) as normed_rating
from ratings
limit 30;

--ETL
--создания таблички keywords


create table keywords
(
  id serial,
  tags varchar(255)
)







