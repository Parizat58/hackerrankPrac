# problem: https://www.hackerrank.com/challenges/the-report/problem?h_r=next-challenge&h_v=zen
# MySQL

# if statement in MySQL: The if statement has three forms: simple if-then statement, if_then-else statement, and if-then-elseif-else statement
[Tutorial](https://www.mysqltutorial.org/mysql-if-statement/)
 
# case statement in MySQL: So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

 
select 
case when grade < 8 then null else name
end as name, grade, marks 
from students, grades
where marks between min_mark and max_mark
order by grade desc, name, marks;
