# problem: https://www.hackerrank.com/challenges/weather-observation-station-13/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
# MySQL


# The TRUNCATE() function truncates a number to the specified number of decimal places.  SELECT TRUNCATE(345.156, 0);  output: 345


select truncate(sum(lat_n), 4)
from station
where  lat_n between 38.7880 and 137.2345;
