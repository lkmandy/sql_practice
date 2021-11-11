-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
-- Output one of the following statements for each record in the table:
-- - Equilateral: It's a triangle with 3 sides of equal length.
-- - Isosceles: It's a triangle with 2 sides of equal length.
-- - Scalene: It's a triangle with 3 sides of differing lengths.
-- - Not A Triangle: The given values of A, B, and C don't form a triangle.
-- Exercise Link: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
select case
                when a + b > c and b + c > a and a + c > b then 
                case
                        when a = b and b = c then 'Equilateral'
                        when a = b or b = c or a = c then 'Isosceles'
                        else 'Scalene'
                end
                else 'Not A Triangle'
        end
from Triangles;