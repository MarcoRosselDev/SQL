## SQL FUNCION SUM()

La funcion sum retorna la suma de las columnas que tengan valor tipo numero y pasen una condicion WHERE si se requiere:

Sintaxis:

> SELECT SUM(column_name)  
> FROM table_name  
> WHERE condition;

Ejemplo:

Fragmento de la tabla OrderDetails para el ejemplo:

| OrderDetailID | OrderID | ProductID | Quantity |
| ------------- | ------- | --------- | -------- |
| 1             | 10248   | 11        | 12       |
| 2             | 10248   | 42        | 10       |
| 3             | 10248   | 72        | 5        |
| 4             | 10248   | 14        | 9        |
| 5             | 10249   | 51        | 40       |

```sql
SELECT SUM(Quantity)
FROM OrderDetails;
```

output:  
Number of Records: 1

| Expr1000 |
| -------- |
| 12743    |

## WHERE

ejemplo:

```sql
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;
```

output:
| Expr1000 |
| -------- |
| 182 |

## ALIAS

```sql
SELECT SUM(Quantity) AS total
FROM OrderDetails;
```

output:
| total |
| -------- |
| 12743 |

## GROUP BY

ejemplo:

```sql
SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;
```

output:

> Solo un fragmento de el output

Numero de registros : 196
| Total Quantity | OrderID |
| -------------- | ------- |
| 10248 | 27 |
| 10249 | 49 |
| 10250 | 60 |
| 10251 | 41 |
