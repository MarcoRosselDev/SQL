## SQL FUNCION AVG ()

La funcion AVG retorna el promedio de una columna, bajo o no un criterio WHERE.  
El promedio es la suma de x registros tipo numero dividido por la cantidad de registros.

Para los ejemplos utlilizaremos la tabla Products, este es un fragmento de la tabla como referencia:

### Tabla Products

Numero de registros: 77

| ProductID | ProductName                   | SupplierID | CategoryID | Unit                | Price |
| --------- | ----------------------------- | ---------- | ---------- | ------------------- | ----- |
| 1         | Chais                         | 1          | 1          | 10 box x 20 bags    | 18.00 |
| 2         | Chang                         | 1          | 1          | 24 -12 oz bottles   | 19.00 |
| 3         | Anissed Syrup                 | 1          | 4          | 12 - 550 ml bottles | 10.00 |
| 4         | Chef Anoton's Cajun Seasoning | 2          | 2          | 48 - 6 oz jars      | 22.00 |
| 5         | Nethwoods Cranberry Sauce     | 2          | 7          | 36 boxes            | 21.35 |

sintaxis :

> SELECT AVG(column_name)  
> FROM table_name  
> WHERE condition;

Ejemplo :  
Encuentra el promedio (avarage) de todos los productos

```sql
SELECT AVG(Price)
FROM Products;
```

output :  
Numero de registros: 1
| Expr1000 |
| -------- |
| 28.8664 |

## AVG > WHERE

Ejemplo espesificando una condicion:

```sql
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;
```

output :  
Numero de registros: 1
| Expr1000 |
| -------- |
| 37.9792 |

## AVG > AS

Ejemplo utilizando un nombre de columna mas descriptivo con la llave AS:

```sql
SELECT AVG(Price) AS [average price]
FROM Products;
```

output :  
Numero de registros: 1
| average price |
| -------- |
| 37.9792 |

## RETORNAR REGISTROS MAYORES AL PROMEDIO

```sql
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);
```

output :  
Numero de registros: 25
| ProductID | ProductName | SupplierID | CategoryID | Unit | Price |
| --------- | ----------------------------- | ---------- | ---------- | ------------------- | ----- |
| 7 | Uncle Bob's Organic Dried Pears | 3| 7 | 12 - 1 lb pkgs. | 30 |
| 8 | Northwoods Cranberry Sauce | 3 | 2 | 12 - 12 oz jars | 40 |
| 9 | Mishi Kobe Niku | 4 | 6 | 18 - 500 g pkgs. | 97 |
| 10| Ikura | 4 | 8 | 12 - 200 ml jars | 31 |
| 12 | Queso Manchego La Pastora | 5 | 4 | 10 - 500 g pkgs. | 38|

Como el promedio es 28.8664 retorna los registros con precio mayor a este, asi que se puede aplicar un AVG en el condicional.
