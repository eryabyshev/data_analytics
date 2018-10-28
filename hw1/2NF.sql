-- SECOND NORMAL FORM
--work with main table
create table NF2
(
  film_id   serial PRIMARY KEY,
  film_name VARCHAR(256), producer VARCHAR(256)
);

insert into NF2 (film_name, producer)
values('Энни Холл', 'Вуди Аллен'),
      ('Быть Джоном Малковичем', 'Спайк Джонс'),
      ('Любовь и смерть', 'Вуди Аллен');

select * from NF2;

--work with oscar table
create table oscar
(
  film_id serial PRIMARY KEY,
  have    boolean
);
insert into oscar values (1, true), (2, true), (3, false);
select * from oscar;

--work with rating table
create table rating_table
(
  film_id     serial PRIMARY KEY,
  film_rating serial
);
insert into rating_table values (1, 8), (2, 7), (3, 8);
select * from rating_table;

--join
select film_name, producer, have, film_rating
from NF2
join oscar on NF2.film_id = oscar.film_id
join rating_table on NF2.film_id = rating_table.film_id


