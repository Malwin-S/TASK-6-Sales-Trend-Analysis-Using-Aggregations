SELECT
	strftime('%Y', OrderDate) AS OrderYear,
	strftime('%m', OrderDate) AS OrderMonth,
	SUM(Quantity) AS TotalQuantity,
	AVG(Discount) AS AverageDiscount
FROM
	"SalesData"
GROUP BY
	strftime('%Y', OrderDate), strftime('%m', OrderDate)
ORDER BY
	OrderYear, OrderMonth
;
