### SQL BETWEEN

BETWEEN nos sirver para matchear querys entre un rango de dos valores dados.  
Los valores pueden ser numericos, de texto o fechas.

Sintaxis

> SELECT column_name(s)  
> FROM table_name  
> WHERE column_name **BETWEEN value1 AND value2** ;

Ejemplo:  
Retornar todos los productos con un precio entre 10 y 20 dolares:

```sql
SELECT * FROM Produscts
WHERE price BETWEEN 10 AND 20;
```

## NOT BETWEEN

Para retornar los valores fuera del rango previo, aplicamos **NOT BETWEEN** .

Ejemplo:  
Reotrar todos los productos que no tengan el precio entre 10 y 20 dolares:

```sql
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
```

## BETWEEN WITH IN

Retornar los registros en el rango de precio entre 10 - 20 dolars y la CategoriID puede ser 1, 2, o 3.

```sql
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1, 2, 3);
```

## BETWEEN VALORES DE TEXTO

Retornar todos los registros con un ProductName alfaveticamente entre 'Carnarvon Tigers' y 'Mozzarella di Giovanni':

```sql
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni';
ORDER BY ProductName
```

output:

| ProductID | ProductName                            | SupplierID | CategoryID | Unit              | Price |
| --------- | -------------------------------------- | ---------- | ---------- | ----------------- | ----- |
| 18        | Carnarvon Tigers                       | 7          | 8          | 16 kg pkg.        | 62.5  |
| 2         | Chang                                  | 1          | 1          | 24 -12 oz bottles | 19.00 |
| ?         | ... mas registros en el rango de texto |            |            |                   |       |
| 72        | Mozzarella di Giovanni                 | 14         | 4          | 24 - 200 g pkgs.  | 34.8  |

## BETWEEN FECHAS

La siguiente consulta retorna los registros entre las fechas '01-July-1996' y '31-July-1996':

```sql
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
```

o puede ser:

```sql
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
```
