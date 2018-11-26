SELECT 'ФИО: Рябышев Евгений' as Studen ;

--1.1
select * from ratings limit 10;
--1.2
select * from links
where imdbid like '%42'
and movieid between 100 and 1000
limit 10;

--2.1
select links.imdbid
from links join ratings on links.movieid = ratings.movieid
where ratings.rating = 5
limit 10;

--3.1
select count(*)
from (
       select distinct links.movieid, ratings.movieid
       from links
       left join ratings on links.movieid = ratings.movieid
       where ratings.movieid is null
     ) as temp;

--3.2

select distinct userid, avg(rating) as avgtemp
from ratings
group by (userid)
having avg(rating) > 3.5
order by avg(rating) desc
limit 10;

--4.1
select imbdId, avg_r
from (
  select imdbid as imbdId, avg(ratings.rating) as avg_r
  from  links join ratings on links.movieid = ratings.movieid
  group by imdbid
  having  avg(ratings.rating) > 3.5
       ) as temp
limit 10;

--4.2
select avg(counter)
from(
  select userid, count(userid) as counter
from ratings
group by userid
having count(userid) > 10
      ) as temp;










