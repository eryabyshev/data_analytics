create table filmes
(
  title        varchar(256),
  id           serial PRIMARY KEY,
  country      varchar(256),
  box_office   real,
  release_year timestamp
);

create table persons
(
  id serial,
  fio varchar(256)
);

create table persons2content
(
  person_id serial,
  film_id serial,
  person_type varchar(256)
);


insert into filmes
values('Побег из Шоушенка', 1, 'США', 59841469, '1994-1-1'::timestamp);

insert into persons
values (1, 'Фрэнк Дарабонт'),
       (2,'Фрэнк Дарабонт'),
       (3,'Стивен Кинг'),
       (4, 'Ники Марвин'),
       (5, 'Лиз Глоцер'),
       (6, 'Дэвид В. Лестер'),
       (7, 'Ричард Фрэнсис-Брюс');


insert into persons2content
values (1, 1, 'режиссер'),
       (2, 1, 'сценарий'),
       (3, 1, 'сценарий'),
       (4, 1, 'продюсер'),
       (5, 1, 'продюсер'),
       (6, 1, 'продюсер'),
       (7, 1, 'монтаж');

select fio, person_type, title
from persons
join persons2content on persons.id = persons2content.person_id
join filmes on persons2content.film_id = filmes.id;