--Get a list of salespeople with zero sales
SELECT emp.employeeid, firstName, lastName,s.salesId
FROM employee emp 
LEFT JOIN sales s 
ON emp.employeeid = s.employeeid
WHERE emp.title = 'Sales Person'
AND s.salesId ISNULL;

--OR 
SELECT employeeid, firstName, lastName, title, startDate
FROM employee 
WHERE title = 'Sales Person' AND employeeId NOT IN(SELECT employeeId FROM sales);

