# problem: https://www.hackerrank.com/challenges/the-blunder/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
# MySQL


# CEIL() function is used to get the smallest integer which is greater than, or equal to, the specified numeric expression.
# Replace "T" with "M": REPLACE('SQL Tutorial', 'T', 'M');
# The SQL FLOOR() function rounded up any positive or negative decimal value down to the next least integer value.


select ceil(avg(salary)-avg(replace(salary, '0', '')))
from EMPLOYEES; 
