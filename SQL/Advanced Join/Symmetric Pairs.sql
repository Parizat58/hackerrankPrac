# problem: https://www.hackerrank.com/challenges/symmetric-pairs/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
# MySQL


select distinct f1.x, f1.y
from functions f1
join functions f2
where f1.y=f2.x 
and f1.x=f2.y
and f1.x<f1.y

union

select x, y
from functions
where x=y
group by x,y
having count(*)>1

order by x;


