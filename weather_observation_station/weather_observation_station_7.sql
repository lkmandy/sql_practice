-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
select distinct city
from station
where city like '%[aeiou]';