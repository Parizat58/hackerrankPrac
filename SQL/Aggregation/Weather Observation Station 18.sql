# problem: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
# MySQL


# ABS() function is used to get the absolute value of a number passed as an argument. ABS(-17.36); input 17.36

select round(abs(min(lat_n)-max(lat_n))+abs(min(long_w)-max(long_w)),4) 
from station;
