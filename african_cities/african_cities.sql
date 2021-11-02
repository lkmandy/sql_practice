-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- Exercise Link: https://www.hackerrank.com/challenges/african-cities/problem
select ci.name
from city as ci
        join country as co on ci.countrycode = co.code
where continent = 'Africa';