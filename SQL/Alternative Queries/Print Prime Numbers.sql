# problem: https://www.hackerrank.com/challenges/print-prime-numbers/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
# MySQL



# GROUP_CONCAT() function returns a string with concatenated non-NULL value from a group, Returns NULL when there are no non-NULL values.


SELECT GROUP_CONCAT(NUMB SEPARATOR '&')
FROM (
    SELECT @num:=@num+1 as NUMB FROM
    information_schema.tables t1,
    information_schema.tables t2,
    (SELECT @num:=1) tmp
) tempNum
WHERE NUMB<=1000 AND NOT EXISTS(
        SELECT * FROM (
            SELECT @nu:=@nu+1 as NUMA FROM
                information_schema.tables t1,
                information_schema.tables t2,
                (SELECT @nu:=1) tmp1
                LIMIT 1000
            ) tatata
        WHERE FLOOR(NUMB/NUMA)=(NUMB/NUMA) AND NUMA<NUMB AND NUMA>1
    );
