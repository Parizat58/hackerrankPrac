# problem: https://www.hackerrank.com/challenges/sql-projects/problem
# MySQL



# DATEDIFF() function in MySQL: Return the number of days between two date values: DATEDIFF(date1, date2);


SET sql_mode = '';
SELECT Start_Date, End_Date
from (Select Start_Date from Projects where Start_Date not in (select End_Date from Projects)) a, (Select End_Date FROM Projects where End_Date not in (select Start_Date from Projects)) b
where Start_Date < End_Date
group by Start_Date
order by DATEDIFF(End_Date, Start_Date), Start_Date;
