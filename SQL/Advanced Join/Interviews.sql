# problem: https://www.hackerrank.com/challenges/interviews/problem
# MySQL


#Oracle
select t1.contest_id, c.hacker_id, c.name, t1.st_submissions1, t1.sta_submissions1, t1.st_views1, t1.stu_views1 
from (select c.contest_id, sum(t.st_views) st_views1, sum(t.stu_views) stu_views1, sum(t.st_submissions) st_submissions1, sum(t.sta_submissions) sta_submissions1 
from (select v.college_id, v.st_views, v.stu_views, s.st_submissions, s.sta_submissions 
from (select c.college_id, sum(v.total_views) st_views, sum(v.total_unique_views) stu_views 
from challenges c, view_stats v where c.challenge_id = v.challenge_id group by c.college_id) v, (select c.college_id, sum(s.total_submissions) st_submissions, sum(s.total_accepted_submissions) sta_submissions from challenges c, submission_stats s where c.challenge_id = s.challenge_id group by c.college_id) s 
where v.college_id=s.college_id and (v.st_views<>0 or v.stu_views<>0 or s.st_submissions<>0 or s.sta_submissions<>0)) t, colleges c 
where t.college_id=c.college_id group by c.contest_id) t1, contests c where t1.contest_id = c.contest_id order by t1.contest_id;


