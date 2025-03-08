--1 Insert the missing parts in the JOIN clause to join the two tables Orders and Customers, using the CustomerID field in both tables as the relationship between the two tables.
SELECT * FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID

--2 Elija la JOIN cláusula correcta para seleccionar todos los registros de las dos tablas donde haya una coincidencia en ambas tablas.
SELECT * FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

--3 Choose the correct JOIN clause to select all the records from the Customers table plus all the matches in the Orders table.
SELECT *
FROM Orders
RIGHT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
