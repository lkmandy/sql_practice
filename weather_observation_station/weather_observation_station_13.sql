--  Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880
--  and less than 137.2345. Truncate your answer to  decimal places.
--  Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
select convert(decimal(10, 4), sum(lat_n))
from station
where lat_n > 38.7880
        and lat_n < 137.2345;