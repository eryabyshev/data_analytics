-- add new COLUMN in NF2 table

ALTER TABLE  NF2 add column country_id serial;

update nf2
set country_id = 1
where film_id =1;

update nf2
set country_id = 1
where film_id =2;

update nf2
set country_id = 2
where film_id =3;

CREATE TABLE country
(
 country_id serial PRIMARY KEY,
 name VARCHAR (256)
);

insert into country values (1, 'USA');
insert into country values (2, 'Russia');

select film_name, oscar.have, country.name
from nf2
join oscar on nf2.film_id = oscar.film_id
join country on nf2.country_id = country.country_id;