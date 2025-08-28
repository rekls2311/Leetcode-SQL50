--Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

SELECT A.NAME, B.BONUS
FROM EMPLOYEE AS A
LEFT JOIN BONUS AS B
ON A.empId = B.empId
WHERE B.BONUS < 1000 OR B.BONUS IS NULL
