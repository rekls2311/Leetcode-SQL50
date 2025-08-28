--Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.
SELECT B.ID
FROM weather as a
join weather as b
ON A.recordDate <> B.recordDate
WHERE B.TEMPERATURE > A.TEMPERATURE and DATEDIFF(b.recordDate,a.recordDate) = 1
