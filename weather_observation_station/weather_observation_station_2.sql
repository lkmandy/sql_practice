-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
-- MS SQL Server
select cast(round(sum(lat_n), 2) as decimal(10, 2)) as "lat",
        cast(round(sum(long_w), 2) as decimal(10, 2)) as "lon"
from station;

-- Alternative MySQL 
-- select round(sum(lat_n), 2) as "lat",
--         round(sum(long_w), 2) as "lon"
-- from station;