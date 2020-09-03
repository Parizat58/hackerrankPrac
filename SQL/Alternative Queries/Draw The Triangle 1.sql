# problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
# MySQL


# REPEAT() repeats a string for a specified number of times. Both the string and the number of times that string to be repeated are supplied as arguments.
# REPEAT(str, count)
# The following MySQL statement repeats the string ‘**-‘ 15 times. 
# SELECT REPEAT('**-',15); 
#  for any sql query you need a table. Since, there is no given table in the question, we have to use something else. Thankfully, sql comes with information_schema.tables built-in.
# There are two ways to assign a value to a user-defined variable. The first way is to use the SET statement as follows: SET @variable_name := value;
# You can use either := or = as the assignment operator in the SET statement. For example, the statement assigns number 100 to the variable @counter. SET @counter := 100;
# 


set @number := 21;
select repeat('* ', @number := @number - 1)
from information_schema.tables;
