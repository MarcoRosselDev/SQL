## SQL FUNCION COUNT()

Retorna la cantidad de documentos que matchean con un espsifico criterio.  
Por ejemplo:

Encuentra el total de registros en la tabla Products

```sql
SELECT COUNT(*)
FROM Products;
```

Number or Records: 1
| Expr1000 |
| -------- |
| 77 |

Syntaxis:

> SELECT COUNT(column_name)  
> FROM table_name  
> WHERE condition;

### ESPESIFICAR COLUMNA

Podemos espesificar la columna como parametro en reemplazo de :

> ( \* ) --> ( column_name )

Pero tener en cuenta que NULL no sera contado.

Por ejemplo:  
Encuentra la cantidad de registro que el ProductName no sea NULL:

```
SELECT COUNT(ProductName)
FROM Products;
```

### COUNT > WHERE

Agregando condiciones:

```sql
SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20
```

Number or Records: 1
| Expr1000 |
| -------- |
| 37 |

### IGNORAR DUPLICADOS EN EL CONTEO

Ignoramos los duplicados con llave DISTINCT dentro de la funcion COUNT().  
Los registros con el mismo valor seran contados como 1.

```sql
SELECT COUNT(DISTINCT Price)
FROM Products;
```

Number or Records: 1
| COUNT(DISTINCT Price) |
| -------- |
| 62 |

### ALIAS

Darle un nombre al conteo de columnas con la llave AS.  
Por ejemplo:

Nombra la columna "Number of records"

```sql
SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;
```

| Number of records |
| ----------------- |
| 77                |

### GROUP BY

Aqui usamos la funcion COUNT para retornar el numero de registros para cada categoria de la tabla products.

fragmento de referencia de la tabla Products:

| ProductID | ProductName                   | SupplierID | CategoryID | Unit                | Price |
| --------- | ----------------------------- | ---------- | ---------- | ------------------- | ----- |
| 1         | Chais                         | 1          | 1          | 10 box x 20 bags    | 18.00 |
| 2         | Chang                         | 1          | 1          | 24 -12 oz bottles   | 19.00 |
| 3         | Anissed Syrup                 | 1          | 4          | 12 - 550 ml bottles | 10.00 |
| 4         | Chef Anoton's Cajun Seasoning | 2          | 2          | 48 - 6 oz jars      | 22.00 |
| 5         | Nethwoods Cranberry Sauce     | 2          | 7          | 36 boxes            | 21.35 |

consulta :

```sql
SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;
```

output:

| Number of records | CategoryID |
| ----------------- | ---------- |
| 12                | 1          |
| 17                | 2          |
| 6                 | 3          |
| 5                 | 4          |
| 7                 | 5          |
| 13                | 6          |
| 5                 | 7          |
