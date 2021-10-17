-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
select distinct
cast(
        percentile_disc(0.5) 
        within group (order by lat_n) over() 
        as decimal(10, 4)
)
from station;

-- Oracle Solution
-- select round(median(lat_n),4)
-- from station;