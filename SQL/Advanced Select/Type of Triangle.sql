problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
MySQL


# use case statement: they operate a lot like simple IF…ELSE statements.



SELECT CASE 
        WHEN A >= (B + C) OR B >= (A + C) OR C >= (A + B) THEN 'Not A Triangle'
        WHEN A = B AND A = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;
