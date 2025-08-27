--Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.ID = EmployeeUNI.ID
