-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard  key was broken until after completing the calculation. 
-- She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), 
-- and the actual average salary.
-- Write a query calculating the amount of error (i.e.:actual - miscalculated  average monthly salaries), and round it up to the next integer.
-- Exercise Link: https://www.hackerrank.com/challenges/the-blunder/problem
select ceiling(
                avg(salary * 1.0) - avg(cast(replace(salary, '0', '') as integer))
        )
from employees;