problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
MySQL


SELECT NAME
FROM STUDENTS
WHERE Marks > 75
order by RIGHT(NAME, 3), ID asc;
