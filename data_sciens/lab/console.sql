
--1. Развернуть базу данных с использованием Docker контейнера (создать таблицы и заполнить их).Использовать бдPostgreSQL.
create table departament(
  id integer PRIMARY KEY,
  name varchar(255)
);

create table employee(
  id integer PRIMARY KEY,
  departament_id integer,
  chief_doc_id integer,
  name varchar(255),
  num_public integer
);

insert into departament values (1, 'Therapy'),
                               (2, 'Neurology'),
                               (3, 'Cardiology'),
                               (4, 'Gastroenterology'),
                               (5, 'Hematology'),
                               (6, 'Oncology');

insert into employee values (1, 1, 1, 'Kate', 4),
                            (2, 1, 1, 'Lidia', 2),
                            (3, 1, 1, 'Alexey', 1),
                            (4, 1, 2, 'Pier', 7),
                            (5, 1, 2, 'Aurel', 6),
                            (6, 1, 2, 'Klaudia', 1),
                            (7, 2, 3, 'Klaus', 12),
                            (8, 2, 3, 'Maria', 11),
                            (9, 2, 4, 'Kate', 10),
                            (10, 3, 5, 'Peter', 8),
                            (11, 3, 5, 'Sergey', 9),
                            (12, 3, 6, 'Olga', 12),
                            (13, 3, 6, 'Maria', 14),
                            (14, 4, 7, 'Irina', 2),
                            (15, 4, 7, 'Grit', 10),
                            (16, 4, 7, 'Vanessa', 16),
                            (17, 5, 8, 'Sascha', 21),
                            (18, 5, 8, 'Ben', 22),
                            (19, 6, 9, 'Jessy', 19),
                            (20, 6, 9, 'Ann', 18);


--2. Создать следующие SQL-запросы:

-- 2.1 Вывести список названий департаментов и количество главных врачей в каждом из этих департаментов

select d.name, count(DISTINCT e2.id)
from departament as d
       left join employee as e1 on d.id = e1.departament_id
       left join employee as e2 on e1.chief_doc_id = e2.id
group by d.name;

-- 2.2 Вывести список департамент id в которых работаю 3 и более сотрудника

select temp.id
from (select d.id, d.name, count(e.id) as quantyty
             from departament as d
                    left join employee as e on e.departament_id = d.id
             group by d.id
     ) as temp
where temp.quantyty >= 3
order by temp.id;


-- 2.3 Вывести список департамент id с максимальным количеством публикаций
with total_public as (
                      select d.id, sum(e.num_public) as total
                      from departament as d
                             left join employee as e on d.id = e.departament_id
                      group by d.id
                      order by total desc
                      )

select d.id
from total_public as d
where d.total in (select max(total_public.total)
                  from total_public)


-- 2.4 Вывести список имен сотрудников и департаментов с минимальным количеством публикаций в своем департаментe
-- (не очень понял формулировку)

with temp as(
            select d_id, d_name, e_name, public
            from (
                 select d.id as d_id, d.name as d_name, e1.name as e_name, e1.num_public as public
                 from employee as e1
                        left join departament as d on d.id = e1.departament_id
                 ) as inside
            )
select d_id, d_name, e_name, public
from temp
where public = (select min(public) from temp);




-- 2.5 Вывести список названий департаментов и среднее количество публикаций для тех департаментов,
-- в которых работает более одного главного врача

select *
from (with chif_doc_in_dep as(

    select d.id, count(DISTINCT e2.id) as total
    from departament as d
           left join employee as e1 on d.id = e1.departament_id
           left join employee as e2 on e1.chief_doc_id = e2.id
    group by d.id
),
    avg_pupl as(
      select d.id, avg(e1.num_public) as avg
      from employee as e1 join departament as d on d.id = e1.departament_id
      group by d.id
  )


select d.name, a.avg, c.total
from departament as d
       join avg_pupl as a on d.id = a.id
       join chif_doc_in_dep as c on c.id = a.id) as temp
where total > 1















