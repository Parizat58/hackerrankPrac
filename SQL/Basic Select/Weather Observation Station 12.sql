problem: https://www.hackerrank.com/challenges/weather-observation-station-12/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
MySQL



SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT RLIKE '^[aeiou]' and CITY NOT RLIKE '[aeiou]$';

