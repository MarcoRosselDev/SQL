--1 Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20.
SELECT * FROM Products
WHERE price BETWEEN 10 AND 20;

--2 Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

--3 Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';