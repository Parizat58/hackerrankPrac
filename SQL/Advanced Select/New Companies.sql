#problem: https://www.hackerrank.com/challenges/the-company/problem
#MySQL: 

# solution without joins
select C.company_code, C.founder, count(distinct L.lead_manager_code), count(distinct S.senior_manager_code), count(distinct M.manager_code), count(distinct E.employee_code)
from Company C, Lead_Manager L, Senior_Manager S, Manager M, Employee E
where C.company_code = L.company_code 
and L.lead_manager_code = S.lead_manager_code
and S.senior_manager_code = M.senior_manager_code
and M.manager_code = E.manager_code
group by C.company_code, C.founder
order by C.company_code;




# solution with joins
select C.company_code, 
       C.founder, 
       COUNT(DISTINCT E.lead_manager_code), 
       COUNT(DISTINCT E.senior_manager_code), 
       COUNT(DISTINCT E.manager_code), 
       COUNT(DISTINCT E.employee_code) 
              from Company C
              INNER JOIN Employee E ON C.company_code = E.company_code
              GROUP BY C.company_code, C.founder
              ORDER BY C.company_code ASC;

