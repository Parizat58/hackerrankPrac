# problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
# MySQL



# Round the number to 2 decimal places:SELECT ROUND(135.375, 2);
# The ROUND() function rounds a number to a specified number of decimal places.
# ROUND(number, decimals)



select round(sum(lat_n), 2)as lat, round(sum(long_w),2) as lon
from station;
