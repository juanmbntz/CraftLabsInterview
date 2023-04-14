
SELECT 
prd.ProductName,
sum(det.Quantity * prd.Price) as total_amount
FROM OrderDetails det
LEFT JOIN Products prd
	ON prd.ProductID = det.ProductID
GROUP BY prd.ProductName
;