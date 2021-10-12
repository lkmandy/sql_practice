-- Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION 
-- is greater than 38.7780 . Round your answer to  decimal places.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
Select top 1 convert(decimal(20, 4), long_w)
from station
where lat_n > 38.7780
order by lat_n;
