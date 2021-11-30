-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- Exercise Link: https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=false 
select sum(ci.population)
from city as ci
        join country as co on ci.countrycode = co.code
where co.continent = 'Asia';