SELECT DISTINCT CustomerName
FROM Customers cus
INNER JOIN Orders ord
	ON cus.CustomerID = ord.CustomerID
ORDER BY CustomerName ASC
;


