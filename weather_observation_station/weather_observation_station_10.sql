-- Query the list of CITY names from STATION that do not end with vowels.
-- Your result cannot contain duplicates.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
select distinct city
from station
where city not like '%[aeiou]';