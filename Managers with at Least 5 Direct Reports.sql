--Option 1: subquery
select name
from employee
where id in (select managerId
from employee
group by managerId
having count(managerId) >=5)

--option 2: Join

# Write your MySQL query statement below
select e1.name
from employee AS e1
JOIN employee as e2 ON e1.id = e2.managerId
group by e1.id
HAVING COUNT(e2.managerId) >=5
