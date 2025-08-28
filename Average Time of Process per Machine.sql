--Write a solution to find the average time each machine takes to complete a process.

--The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

--The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Return the result table in any order.
--First way:
SELECT A1.MACHINE_ID, ROUND(AVG(A1.TIMESTAMP - A2.TIMESTAMP),3) AS processing_time
FROM Activity AS A1 JOIN ACTIVITY AS A2
ON A1.ACTIVITY_TYPE <> A2.ACTIVITY_TYPE AND A1.machine_id = A2.MACHINE_ID AND A1.ACTIVITY_TYPE ='end' AND A2.ACTIVITY_TYPE ='start'
group by a1.machine_id;

--Second Way:


with cte as(
SELECT *
FROM ACTIVITY
WHERE ACTIVITY_TYPE = 'start'),

cte2 as (
SELECT *
FROM ACTIVITY
WHERE ACTIVITY_TYPE = 'end'
)

select cte2.machine_id , round(avg(cte2.timestamp - cte.timestamp),3) as processing_time
from cte
join cte2
ON cte.machine_id = cte2.machine_id
group by cte2.machine_id
