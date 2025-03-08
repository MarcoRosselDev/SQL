# SQL JOIN

En mis palabras:
Son conectores de tablas para extraer info de las dos tablas y agregarlas a una nueva tabla para ser retornada.  
Los JOIN principales son:

1. INNER JOIN  
   <picture>
   <img alt='inner join image representation.' style='background-color: white;'  src='./join_imgs/img_inner_join.png'>
   </picture>

2. LEFT JOIN  
   <picture>
   <img alt='inner join image representation.' style='background-color: white;'  src='./join_imgs/img_left_join.png'>
   </picture>

3. RIGHT JOIN  
   <picture>
   <img alt='inner join image representation.' style='background-color: white;'  src='./join_imgs/img_right_join.png'>
   </picture>
4. FULL OUTER JOIN  
   <picture>
   <img alt='inner join image representation.' style='background-color: white;'  src='./join_imgs/img_full_outer_join.png'>
   </picture>

## INNER JOIN

Para ejemplificar INNER JOIN utilizaremos dos tablas, estas son un fragmento de cada una para referencia:

### Tabla customers:

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                 | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

### Tabla orders:

| OrderID | CustomerID | OrderDate  |
| ------- | ---------- | ---------- |
| 10308   | 2          | 1996-09-18 |
| 10309   | 37         | 1996-09-19 |
| 10310   | 77         | 1996-09-20 |

La columna CutomerID es la columna en comun de las dos tablas, por lo que podemos aplicar JOIN en estas dos tablas.

##

La idea es la siguiente  
<picture>
<img alt='inner join image representation.' style='background-color: white;'  src='./join_imgs/img_inner_join.png'>
</picture>

INNER JOIN retorna la informacion a escojer de los documentos que coinsidan en una columna en comun:

```sql
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```

output:

| OrderID | CustomerName                       | OrderDate  |
| ------- | ---------------------------------- | ---------- |
| 10308   | Ana Trujillo Emparedados y helados | 9/18/1996  |
| 10365   | Antonio Moreno Taquería            | 11/27/1996 |
| 10383   | Around the Horn                    | 12/16/1996 |

# SQL INNER JOIN

Sintaxis:

> SELECT column_name(s)  
> FROM table1  
> INNER JOIN table2  
> ON table1.column_name = table2.column_name;

### NOMBRAR LAS COLUMNAS

Es buena practica descibir el nombre de la tabla de la que se extraera la informacion:

```sql
SELECT Products.ProductID, Products.ProductName, Category.CategoryName
FROM Products
INNER JOIN Category ON Products.CategoryID=Category.CategoryID;
```

Esta query se puede aplicar sin espesificar el nombre de la tabla en la declaracion SELECT,  
devemos tener cuidado de no incluir una columna que este en ambas tablas, en ese caso nos lanzara un error.

## TRES UNIONES JOIN

La siguiente query selecciona todos los pedidos con informacion del cliente y del trasportista (una tercera tabla).

```sql
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
```

# SQL LEFT JOIN

Retorna todos los registros de la tabla izquierda.  
Sintaxis:

> SELECT column_name(s)  
> FROM table1  
> LEFT JOIN table2  
> ON table1.column_name = table2.column_name;

Esto significa que retornara un registro soli si matchea con la tabla de la izquierda, cosa que no se puede en INNER JOIN que omite el registro si uno de los dos esta vacio o null.
asi que esta tabla retornada tendra registros sin algunos campos sacados de la tabla 2.

Ejemplo:

```sql
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
```

# SQL RIGHT JOIN

Lo mismo pero con la derecha...

# SQL FULL OUTER JOIN

Si matchea en una tabla o en la otra retorna un registro.  
Esto genera una tabla muy larga a retornar, ojito.

sintaxis:

> SELECT column_name(s)  
> FROM table1  
> FULL OUTER JOIN table2  
> ON table1.column_name = table2.column_name  
> WHERE condition;

Ejemplo:

```sql
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
```
