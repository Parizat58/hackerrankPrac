# problem: https://github.com/Parizat58/hackerrankPrac/new/master/SQL/Basic%20Join
# MySQL

# The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions
# The COUNT() function returns the number of rows that matches a specified criterion.

select h.hacker_id, h.name
from Submissions s inner join Challenges c on s.challenge_id = c.challenge_id 
inner join Difficulty d on c.difficulty_level = d.difficulty_level
inner join Hackers h on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc;
