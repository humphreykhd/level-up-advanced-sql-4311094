--Display a report for employees who have sold more than five cars this year

SELECT emp.employeeid, firstName, lastName, COUNT(*) AS Number_of_Sales  
FROM employee emp
INNER JOIN sales sa 
ON emp.employeeid = sa.employeeid
WHERE sa.soldDate >= date('now','start of year')
GROUP BY sa.employeeid
HAVING Number_of_Sales > 5
ORDER BY Number_of_Sales DESC;



