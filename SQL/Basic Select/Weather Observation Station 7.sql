# problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
# MySQL


SELECT distinct CITY
FROM STATION
WHERE CITY like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u'
ORDER BY CITY;





SELECT distinct CITY
FROM STATION
WHERE CITY RLIKE '[a,e,i,o,u]$'
ORDER BY CITY;
