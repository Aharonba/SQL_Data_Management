SELECT Products.ProductID, Products.ProductName, Products.SupplierID , Suppliers.Phone, (100 - UnitsInStock) AS `to order`
FROM Products LEFT JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitsInStock <10 OR UnitsOnOrder < 10
order by `to order` desc, SupplierID;


