--Find the least and most expensice car sold by each employee this year
SELECT emp.employeeid, firstName, lastName,
MIN(salesAmount) AS least_expensive,
Max(salesAmount) AS most_expensive, 
AVG(salesAmount) AS Average_price,
SUM(salesAmount) AS Total_Amount,
COUNT(salesAmount) AS Number_of_cars_sold
FROM employee emp
INNER JOIN sales sa 
ON emp.employeeId = sa.employeeId
WHERE sa.soldDate >= date('now','start of year')
GROUP BY sa.employeeid
ORDER BY sa.employeeid DESC;