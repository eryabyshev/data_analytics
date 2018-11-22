--drop table flights;
--drop table city;
--drop table rating;
--drop table cruise;
--drop table company;
--drop table person;


create table flights(
  id integer,
  cruise_number integer,
  delay integer,
  departure timestamp,
  arrival timestamp
);


create table city(
  code varchar(255),
  name text
);

create table rating(
  person_id integer,
  flight_id integer,
  point integer
);

create table cruise(
  code varchar(100),
  number integer,
  arrival varchar(100),
  departure varchar(100)
);


create table company(
  code varchar(100),
  name varchar(255)
);

create table person(
  id integer,
  firstname varchar(100),
  lastname varchar(100)
);