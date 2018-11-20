\copy (SELECT * FROM flights) TO '/data/flights.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM city) TO '/data/city.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM rating) TO '/data/rating.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM company) TO '/data/company.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM cruise) TO '/data/cruise.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM person) TO '/data/person.csv'DELIMITER ',' CSV HEADER;
