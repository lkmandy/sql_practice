-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Exercise Link: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
select *
from city
where countrycode = 'jpn'