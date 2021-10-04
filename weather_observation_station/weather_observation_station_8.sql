-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as 
-- both their first and last characters. Your result cannot contain duplicates.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
select distinct city
from station
where city like '[aeiou]%[aeiou)]';
