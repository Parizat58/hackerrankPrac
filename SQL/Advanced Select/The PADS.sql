# problem: https://www.hackerrank.com/challenges/the-pads/problem
# MySQL


# usage of substr(): Extract a substring from a string (start at position 5, extract 3 characters): SELECT SUBSTR("SQL Tutorial", 5, 3) AS ExtractString;


select concat(name,'(', substr(occupation,1,1),')')
from occupations
order by name;
select concat('There are a total of ', count(1), ' ', lower(occupation), 's.')
from occupations
group by occupation
order by count(1) asc, occupation asc;
