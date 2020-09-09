# problem: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?h_r=next-challenge&h_v=zen
#MySQL


#Oracle
select table2.submission_date, table2.Unique_Count, table1.hacker_id , hackers.name 
from hackers, ( select * from ( select submission_date, hacker_id ,row_number() over (partition by submission_date order by count desc, hacker_id asc) RN 
from ( select submission_date, hacker_id, count(*) as count
from submissions 
group by submission_date,hacker_id having count(*) >= 1 
order by submission_date)) 
where RN = 1) table1, ( select * from (SELECT submission_date, COUNT(DISTINCT hacker_id) Unique_Count 
FROM (SELECT a.submission_date, v.hacker_id, COUNT(DISTINCT v.submission_date) cnt 
FROM ( SELECT DISTINCT submission_date 
FROM Submissions ORDER BY 1 )A, submissions v WHERE v.submission_date <= a.submission_date 
GROUP BY a.submission_date, v.hacker_id ) 
WHERE TO_CHAR(submission_date,'DD') = cnt 
GROUP BY submission_date ORDER BY 1)) table2 
where hackers.hacker_id = table1.hacker_id and table1.submission_date = table2.submission_date 
order by table1.submission_date;
