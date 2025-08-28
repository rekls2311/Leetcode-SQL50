
SELECT B.ID
FROM weather as a
join weather as b
ON A.recordDate <> B.recordDate
WHERE B.TEMPERATURE > A.TEMPERATURE and DATEDIFF(b.recordDate,a.recordDate) = 1
