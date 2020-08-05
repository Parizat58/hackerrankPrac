problem: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
MySQL



SELECT DISTINCT CITY 
FROM STATION 
WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u');




SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT RLIKE '[aeiou]$';





