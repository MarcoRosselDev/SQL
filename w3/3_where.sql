-- comillas simples para texto
SELECT * FROM Customers WHERE Country='Mexico'
-- numeros no llevan comillas de ningun tipo
SELECT * FROM Customers WHERE CustomerID=1


--ejercicios
--Select all records where the CustomerID column has the value 32
SELECT * FROM Customers WHERE CustomerID=32;
--Select all records where the City column has the value "Berlin"
SELECT * FROM Customers WHERE City='Berlin';