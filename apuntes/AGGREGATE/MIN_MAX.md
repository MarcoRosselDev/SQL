## SQL FUNCION MIN Y MAX

La function MIN() retorna el valor mas pequeño de una columna seleccionada.  
La function MAX() retorna el valor mas grande de una columna seleccionada.

Sintaxis MIN:

> SELECT MIN(column_name)  
> FROM table_name  
> WHERE condition;

Ejemplo MIN:

```
SELECT MIN(Price)
FROM Products;
```

output:  
Number or Records: 1
| Expr1000 |
| -------- |
| 2.5 |

Sintaxis MAX

> SELECT MAX(column_name)  
> FROM table_name  
> WHERE condition;

Ejemplo MAX:

```
SELECT MAX(Price)
FROM Products;
```

output:  
Number or Records: 1
| Expr1000 |
| -------- |
| 263.5 |

## SQL AS

Cuando utilizamos MIN o MAX, la columna retornada no tiene un nombre descriptivo.  
Para darle un nombre descriptivo, usar la palabra clave AS:  
Por ejemplo:

```
SELECT MIN(Price) AS SmallestPrice
FROM Products;
```

output:  
Number or Records: 1
| SmallestPrice |
| -------- |
| 2.5 |

## SQL GROUP BY

Utilizamos la clausula GROUP BY, para retornar el valor MIN o MAX de una categoria de producto en una table:

```
SELECT MAX(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID

```

output:
| SmallestPrice | CategoryID |
| ----------------- | ---------- |
| 4.5 | 1 |
| 10 | 2 |
| 9.2 | 3 |
| 2.5 | 4 |
| 7 | 5 |
| 7.45 | 6 |
| 10 | 7 |
| 6 | 8 |

para una mejor comprencion esta es un fragmento de referencia de la tabla Products
| ProductID | ProductName | SupplierID | CategoryID | Unit | Price |
| --------- | ----------------------------- | ---------- | ---------- | ------------------- | ----- |
| 1 | Chais | 1 | 1 | 10 box x 20 bags | 18.00 |
| 2 | Chang | 1 | 1 | 24 -12 oz bottles | 19.00 |
| 3 | Anissed Syrup | 1 | 4 | 12 - 550 ml bottles | 10.00 |
| 4 | Chef Anoton's Cajun Seasoning | 2 | 2 | 48 - 6 oz jars | 22.00 |
| 5 | Nethwoods Cranberry Sauce | 2 | 7 | 36 boxes | 21.35 |
