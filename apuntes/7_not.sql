--example:
-- retornar todos los registros menos cuyo customerName no comience con la letra A:
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';
-- retornar todos los registros menos los que posean el id entre 10 y 60:
SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;
-- retornar todos los usuarios menos los que sean de Paris o London
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');
-- retornar todos los usuarios menos los id mayores a 50
SELECT * FROM Customers
WHERE NOT CustomerID > 50;
--exercices:
-- 1 retornar todos los registros menos menos los de la ciudad de Berlin
SELECT * FROM Customers
WHERE NOT City='Berlin'