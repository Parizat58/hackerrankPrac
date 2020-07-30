# problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
# MySQL


# Notes: String function and operators: char_length() return number of characters in argument
# You can also solve the problem efficiently by using a UNION that combines the output of two separate
SELECT statements.




SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;
