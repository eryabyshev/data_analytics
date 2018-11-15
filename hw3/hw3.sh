#!/usr/bin/env bash

psql --host $APP_POSTGRES_HOST  -U postgres -c \
    "DROP TABLE IF EXISTS keywords"

echo "Create table keywords..."
psql --host $APP_POSTGRES_HOST -U postgres -c '
  CREATE TABLE keywords (
    movieId bigint,
    tags text
  );'

echo "Load data from keywords.table.csv..."
psql --host $APP_POSTGRES_HOST -U postgres -c \
    "\\copy keywords FROM '/data/keywords.table.csv' DELIMITER ',' CSV HEADER"

echo "Check of download"
psql --host $APP_POSTGRES_HOST -U postgres -c "SELECT COUNT(*) as num_ratings FROM keywords"


psql --host $APP_POSTGRES_HOST  -U postgres -c \
    "DROP TABLE IF EXISTS top_rated_tags"


echo "Create table top_rated_tags.sql"
psql --host $APP_POSTGRES_HOST -U postgres -c "with top_rated as
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
)select top_rated.movieId, tags INTO top_rated_tags from top_rated join keywords on top_rated.movieId = keywords.movieid"

echo "Import table to /data/"
psql --host $APP_POSTGRES_HOST -U postgres -c \
    "\\copy (select * from keywords) to '/data/keywords.tsv' with delimiter as E'\t'"
