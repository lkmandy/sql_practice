-- Query the average population for all cities in CITY,
-- rounded down to the nearest integer.
-- Exercise Link: https: / / www.hackerrank.com / challenges / average - population / problem
select round(avg(population), 0)
from city;