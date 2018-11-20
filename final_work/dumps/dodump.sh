pg_dump -h $APP_POSTGRES_HOST -U postgres -t flights > /data/flights.sql
pg_dump -h $APP_POSTGRES_HOST -U postgres -t city > /data/city.sql
pg_dump -h $APP_POSTGRES_HOST -U postgres -t cruise > /data/cruise.sql
pg_dump -h $APP_POSTGRES_HOST -U postgres -t rating > /data/rating.sql
pg_dump -h $APP_POSTGRES_HOST -U postgres -t company > /data/company.sql
pg_dump -h $APP_POSTGRES_HOST -U postgres -t person > /data/person.sql


