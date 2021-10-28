-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
select distinct city
from station
where city like '[aeiou]%';

-- Alternative implementation using MySQL
-- Select distinct(city)
-- from station
-- where substr(city, 1, 1) in ('a', 'e', 'i', 'o', 'u');