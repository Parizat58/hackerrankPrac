# problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem
# MySQL

select H.hacker_id, H.name, sum(score) as total_score
from Hackers as H inner join 
(select hacker_id, max(score) as score from submissions group by challenge_id, hacker_id) max_score

on H.hacker_id = max_score.hacker_id
group by H.hacker_id, name
having total_score >0
order by total_score desc, H.hacker_id;
