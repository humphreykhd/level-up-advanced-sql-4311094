--Get a list of all sales and all customers even if some of the data has been removed.
--List all customers and their sales

SELECT cus.firstName, cus.lastName, cus.email, sa.salesAmount FROM Customer cus 
JOIN sales sa 
ON cus.customerid = sa.customerid

UNION
--UNION customers that does not have sales data
SELECT cus.firstName, cus.lastName, cus.email, sa.salesAmount FROM Customer cus 
LEFT JOIN sales sa 
ON cus.customerid = sa.customerid
WHERE sa.salesId ISNULL

UNION
-- Union Sales data that does not have customers
SELECT cus.firstName, cus.lastName, cus.email, sa.salesAmount FROM sales sa 
LEFT JOIN customer cus
ON cus.customerid = sa.customerid
WHERE cus.customerid ISNULL