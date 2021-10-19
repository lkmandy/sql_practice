-- Query a count of the number of cities in CITY having a Population larger than 100,000.
-- Exercise Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
select count(ID)
from city
where population > 100000;