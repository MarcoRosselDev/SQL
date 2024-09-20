--1 Seleccionar todos los registros donde Customersla PostalCodecolumna esté vacía.

SELECT * FROM Customers WHERE PostalCodecolumna IS NULL;

--2.Select all records from the Customers where the PostalCode column is NOT empty

SELECT * FROM Customers WHERE PostalCode IS NOT NULL;