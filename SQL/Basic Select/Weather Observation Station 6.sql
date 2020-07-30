# problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
3 MySQL

# use regular expression

SELECT distinct CITY
FROM STATION
WHERE CITY RLIKE '^[a,e,i,o,u]';



# use like keywords

SELECT distinct CITY
FROM STATION
WHERE CITY like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%'
order by CITY;
