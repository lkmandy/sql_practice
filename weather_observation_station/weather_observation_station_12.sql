-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-12/problem

select distinct city
from station
where city not like '[aeiou]%'
        and city not like '%[aeiou]';