with top_rated as
(
      select movieId, avg
    from (
        select links.movieid as movieId, count(links.movieid) as counter, avg(ratings.rating) as avg
        from links join ratings on ratings.movieid = links.movieid
        group by links.movieid
        having count(links.movieid) > 50
        order by avg DESC
        ) as temp
    limit 150
)select top_rated.movieId, tags INTO top_rated_tags from top_rated join keywords on top_rated.movieId = keywords.movieid