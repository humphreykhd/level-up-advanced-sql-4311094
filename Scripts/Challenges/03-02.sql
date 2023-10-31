--Create a report that shows the amount of sales per employee for each month in 2021

SELECT firstName ||' '|| lastName AS Full_Name, 
ROUND(SUM(salesAmount),2) AS total_sales,
COUNT(*)AS Number_of_sales, 
CASE WHEN strftime('%m',soldDate) = '01' THEN 'January'
      WHEN strftime('%m',soldDate) = '02' THEN 'February'
          WHEN strftime('%m',soldDate) = '03' THEN 'March'
              WHEN strftime('%m',soldDate) = '04' THEN 'April'
                  WHEN strftime('%m',soldDate) = '05' THEN 'May'
                      WHEN strftime('%m',soldDate) = '06' THEN 'June'
                          WHEN strftime('%m',soldDate) = '07' THEN 'July'
                              WHEN strftime('%m',soldDate) = '08' THEN 'August'
                                  WHEN strftime('%m',soldDate) = '09' THEN 'September'
                                      WHEN strftime('%m',soldDate) = '10' THEN 'October'
                                          WHEN strftime('%m',soldDate) = '11' THEN 'November'
                                              WHEN strftime('%m',soldDate) = '12' THEN 'December'
  ELSE 'Other'
END
AS Month
FROM sales s
INNER JOIN employee e 
ON s.employeeId = e.employeeId
WHERE strftime('%Y', soldDate) = '2021'
GROUP BY s.employeeid,Month
ORDER BY s.employeeid ASC;
