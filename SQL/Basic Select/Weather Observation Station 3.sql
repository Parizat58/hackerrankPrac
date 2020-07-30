# problem: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
# MySQL

# NOTES: To minimize the output, retrieve each unique output record just once by adding the keyword DISTINCT

SELECT distinct CITY 
FROM STATION
WHERE (ID%2) = 0;
