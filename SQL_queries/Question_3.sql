SELECT Customers.CustomerID, Orders.OrderID, Orders.OrderDate, Orders.Freight AS TotalAmount,
AVG (Freight) OVER (PARTITION BY CustomerID ORDER BY OrderDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Cumulative_Avg_per_customer,
AVG (Freight) OVER () AS Total_avg_order_cost
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY CustomerID, OrderDate;


