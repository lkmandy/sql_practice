-- Query the total population of all cities in CITY where District is California.
-- Exercise Link: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
select sum(population)
from city
where district = 'California';