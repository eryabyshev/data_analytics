SELECT 'ФИО: Рябышев Евгений' as Studen ;


DROP TABLE IF EXISTS user_movies_agg;
-- array_agg: собрать в массив все фильмы, просмотренные пользователем (без повторов)
with movies_agg as(
    SELECT userID, array_agg(DISTINCT movieId) as user_views
    FROM ratings
    group by ratings.userid
    order by userid
    limit 1000
    )
-- таблица user_movies_agg, в которую сохраните результат предыдущего запроса
SELECT userID, user_views
       INTO public.user_movies_agg
FROM movies_agg;

SELECT * FROM user_movies_agg LIMIT 3;

create function cross_arr(a1 bigint[], a2 bigint[]) returns int[] as $$
declare
    ret bigint[];
begin
    if a1 is null then
        return a2;
    elseif a2 is null then
        return a1;
    end if;
    select array_agg(e) into ret
    from (
        select unnest(a1)
        intersect
        select unnest(a2)
    ) as dt(e);
    return ret;
end;
$$ language plpgsql;


SELECT agg.userId as u1, agg.userId as u2, agg.user_views as ar1, agg.user_views as ar2
from user_movies_agg as agg;


DROP TABLE IF EXISTS user_pairs;


with user_pairs as (
    SELECT agg1.userid as u1, agg1.user_views as r1, agg2.userid as u2, agg2.user_views as r2
    from user_movies_agg as agg1
    cross join user_movies_agg as agg2
  where agg1.userid <> agg2.userid
              )
select u1, u2, cross_arr(r1, r2)
INTO common_user_views FROM user_pairs;


SELECT * FROM common_user_views LIMIT 3;

CREATE FUNCTION diff_arr(a1 bigint[], a2 bigint[]) returns int[] as $$
DECLARE
    ret int[];
BEGIN
     if a1 is null then
        return a2;
    elseif a2 is null then
        return a1;
    end if;
    SELECT array_agg(e) INTO ret
    FROM (
     SELECT unnest(a1)
     EXCEPT
     SELECT unnest(a2)
    ) AS dt(e);
    RETURN ret;
END;
$$ language plpgsql;


select user_movies_agg.userid as user_from,
       common_user_views.u2 as user_to,
       diff_arr(user_movies_agg.user_views, common_user_views.cross_arr) as recommendations
from user_movies_agg
join common_user_views on user_movies_agg.userid = common_user_views.u1
