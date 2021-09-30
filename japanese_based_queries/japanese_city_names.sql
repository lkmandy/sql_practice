-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Exercise Link: https://www.hackerrank.com/challenges/japanese-cities-name/problem
select name
from city
where countrycode = 'jpn';