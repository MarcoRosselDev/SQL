SELECT Country FROM Customers -- reptorna todos los paises 
-- pero queremos omitir lor repetidos para saber la cantidad espesifica de paises
SELECT DISTINCT Country FROM Customers
-- retorna los paises
SELECT COUNT(DISTINCT Country) FROM Customers -- si queremos solo la cantidad
