-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes 
-- first when ordered alphabetically. 
-- Exercise Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- Return the city with the shortest name and number of characters
(
        select city,
                length(city)
        from station
        order by length(city) asc,
                city asc
        limit 1
) -- Make query one
union
-- Return the city with the longest name and number of characters
-- limit keyword is used to get the top most  row as output
(
        select city,
                length(city)
        from station
        order by length(city) desc,
                city desc
        limit 1
);