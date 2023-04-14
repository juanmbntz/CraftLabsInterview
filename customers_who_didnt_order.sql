SELECT CustomerName, Country, City
FROM Customers
WHERE CustomerID not in (SELECT CustomerID from Orders)
ORDER BY Country, City
;

-- not exist version
SELECT CustomerName, Country, City
FROM Customers cus
WHERE not exists (SELECT CustomerID from Orders ord WHERE ord.CustomerID = cus.CustomerID)
ORDER BY Country, City