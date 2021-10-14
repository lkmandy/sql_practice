-- Query the average population of all cities in CITY where District is California.
-- Exercise Link: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
select avg(population)
from city
where district = 'California';