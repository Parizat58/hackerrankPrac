# problem: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?h_r=next-challenge&h_v=zen
# MySQL



set @number = 0;
select repeat('* ', @number := @number +1)
from information_schema.tables
limit 20;
