--Pull a report that totals the number of cars sold by each employee.
SELECT emp.employeeid, firstName, lastName, COUNT(*) AS T_Sales
FROM sales sa
INNER JOIN employee emp
ON sa.employeeid = emp.employeeid
GROUP BY emp.employeeid, firstName, lastName 
ORDER BY T_Sales DESC;