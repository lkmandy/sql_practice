-- Query the difference between the maximum and minimum populations in CITY.
-- Exercise Link: https://www.hackerrank.com/challenges/population-density-difference/problem
select (max(population) - min(population))
from city;