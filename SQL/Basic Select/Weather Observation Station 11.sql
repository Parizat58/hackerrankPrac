problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem?h_r=next-challenge&h_v=zen
MySQL



SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT RLIKE '^[aeiou]' or CITY not RLIKE '[aeiou]$';



