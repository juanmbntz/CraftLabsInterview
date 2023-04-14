with temp_1 as (
SELECT 
prd.ProductName,
SUM(det.Quantity) as total_quantity
FROM OrderDetails det
LEFT JOIN Products prd
	ON prd.ProductID = det.ProductID
GROUP BY prd.ProductName
ORDER BY total_quantity DESC
)
SELECT * FROM temp_1 LIMIT 5
;