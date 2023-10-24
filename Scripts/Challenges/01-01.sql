--Retrieve a list of employers including first and last names of their immediate managers

SELECT emp.title, emp.firstName || ' ' || emp.lastName AS EmployeeFullName, 
mng.firstName || ' ' || mng.lastName AS immediate_Manager_Name
FROM employee emp 
INNER JOIN employee mng
ON emp.managerId = mng.employeeId;