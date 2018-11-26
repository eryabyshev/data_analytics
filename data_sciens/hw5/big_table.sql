SELECT 'ФИО: Рябышев Евгений' as Studen ;
--Используя функцию определения размера таблицы, вывести top-5 самых больших таблиц базы.
select table_name, pg_size_pretty(pg_database_size(current_database())) as size
from information_schema.tables
order by  size DESC
limit 5;