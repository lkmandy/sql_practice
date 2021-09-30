-- Query all columns for all American cities in the CITY table with populations larger than 100000.
-- The CountryCode for America is USA. The CITY table is described as follows:
-- Exercise Link: https://www.hackerrank.com/challenges/revising-the-select-query/problem
Select *
From city
where (
                population > 100000
                and countrycode = 'USA'
        );