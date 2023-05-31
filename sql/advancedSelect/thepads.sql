-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1),")")
FROM OCCUPATIONS
ORDER BY CONCAT(NAME, "(", LEFT(OCCUPATION, 1),")");

SELECT CONCAT("There are a total of ", C, " ", O, "s.")
FROM (
    SELECT COUNT(OCCUPATION) C, LOWER(OCCUPATION) O
    FROM OCCUPATIONS
    GROUP BY LOWER(OCCUPATION)
    ORDER BY COUNT(OCCUPATION), LOWER(OCCUPATION)
) A;
