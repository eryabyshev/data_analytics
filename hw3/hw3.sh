#!/usr/bin/env bash

psql --host $APP_POSTGRES_HOST  -U postgres -c \
    "DROP TABLE IF EXISTS keywords"

echo "Create table keywords..."
psql --host $APP_POSTGRES_HOST -U postgres -c '
  CREATE TABLE keywords (
    movieId bigint,
    tags text
  );'

echo "Load data from keywords.csv..."
psql --host $APP_POSTGRES_HOST -U postgres -c \
    "\\copy keywords FROM '/data/keywords.csv' DELIMITER ',' CSV HEADER"

echo "Check of download"
psql --host $APP_POSTGRES_HOST -U postgres -c "SELECT COUNT(*) as num_ratings FROM keywords"


psql --host $APP_POSTGRES_HOST  -U postgres -c \
    "DROP TABLE IF EXISTS top_rated_tags"
echo "Create table top_rated_tags.sql"
psql --host $APP_POSTGRES_HOST -U postgres -f /home/top_rated_tags.sql

echo "Import table to /data/"
psql --host $APP_POSTGRES_HOST -U postgres -c \
    "\\copy (select * from top_rated_tags) to '/data/keywords.csv' with delimiter as E','"
