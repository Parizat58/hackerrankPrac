# problem: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
# MySQL 


select count(name)
from city 
where population > 100000;
