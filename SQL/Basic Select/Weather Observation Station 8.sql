# problem: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
# MySQL


# notes: The LEFT() function extracts a given number of characters from the left side of a supplied string. For example, LEFT('SQL Server', 3) returns SQL .

select distinct city from station 
where left(city,1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u');
