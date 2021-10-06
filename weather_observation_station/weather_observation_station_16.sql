-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than. 
-- Round your answer to  decimal places.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
Select convert(decimal(20, 4), min(lat_n))
from station
where lat_n > 38.7780;

-- MYSQL Solution
-- select round(min(lat_n), 4)
-- from station
-- where lat_n > 38.7780;