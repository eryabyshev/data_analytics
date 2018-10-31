SELECT column_name, column_default, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'links';

create table links_parted
(
  movieid bigint,
  imdbid varchar(256),
  tmdbid varchar(256)
);

create table links_parted_even
(
  check (movieid % 2 = 0)
)inherits (links_parted);

create table links_parted_odd
(
  check (movieid % 2 <> 0)
)inherits (links_parted);


create rule links_even as on insert to links_parted
where (movieid % 2 = 0)
do instead insert into links_parted_even values (new.*);


create rule links_odd as on insert to links_parted
where (movieid % 2 <> 0)
do instead insert into links_parted_odd values (new.*);


insert into links_parted values (10, 'even', 'even');
insert into links_parted values (11, 'odd', 'odd');

select * from links_parted
where movieid = 10 or movieid = 11;

select * from links_parted_even;
select * from links_parted_odd;

