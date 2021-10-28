-- Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the 
-- respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) 
-- are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
select convert(
                decimal(10, 4),
                sqrt(
                        square(max(lat_n) - min(lat_n)) + square(max(long_w) - min(long_w))
                )
        )
from station;