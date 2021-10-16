-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- Exercise Link: https://www.hackerrank.com/challenges/japan-population/problem
select sum(population)
from city
where countrycode = 'jpn';