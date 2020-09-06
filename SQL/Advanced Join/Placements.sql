# problem: https://www.hackerrank.com/challenges/placements/problem?h_r=next-challenge&h_v=zen
# MySQL



Select S.name
from (Students S join Friends F on S.id = F.id
     join Packages P1 on S.ID=P1.ID
     join Packages P2 on F.Friend_ID=P2.ID)
     Where P2.Salary > P1.Salary
Order By P2.Salary;
