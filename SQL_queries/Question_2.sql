SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Employees.HomePhone, date_add( MAX(Orders.OrderDate), INTERVAL 7 DAY) AS `isulation end`
FROM Orders 
inner join Employees ON Orders.EmployeeID = Employees.EmployeeID 
WHERE OrderDate IN('1998-04-27', '1998-05-01', '1998-05-06') AND Employees.EmployeeID <> 7
GROUP BY Employees.EmployeeID, Employees.FirstName, Employees.LastName, Employees.HomePhone;
