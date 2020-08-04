problem: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
MySQL

SELECT distinct CITY
FROM STATION
WHERE CITY NOT RLIKE '^[aeiou]';

