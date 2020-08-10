# problem: https://www.hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_v=zen
# MySQL


select city.name
from city inner join country on city.countrycode = country.code
where country.continent = 'Africa';
