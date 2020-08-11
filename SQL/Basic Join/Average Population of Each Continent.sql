# problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
# MySQL
# he SQL FLOOR() function rounded up any positive or negative decimal value down to the next least integer value.
# SELECT FLOOR(25.75);  --output: 25
# The ROUND() function rounds a number to a specified number of decimal places.


select country.continent, floor(avg(city.population))
from city inner join country on city.countrycode = country.code
group by 1;

