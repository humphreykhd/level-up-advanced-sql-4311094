--Summarize sales per year using a CTE (Common Table Expression)
--Create a report showing the total sales per year

SELECT ROUND(SUM(salesAmount),2)AS total_sales, strftime('%Y', soldDate) AS per_year
FROM sales
GROUP BY per_year
ORDER BY per_year DESC;