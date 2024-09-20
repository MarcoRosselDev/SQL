## SQL UPDATE

Syntaxis:

> UPDATE table_name  
> SET column1 = value1, column2 = value2, ...  
> WHERE condition;

Ojito con el WHERE, si no espesificamos un filtro WHERE este procedera a actualizar todos los registros de la tabla con los nuevos valores

Ejemplo:
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209 | Germany |
| 2 | Ana trumilllo Emparedados y helados | Ana Trujillo | Avda. de la Constitución 2222 | Mexico D.F | 05021 | Mexico |
| 3 | Antonio MorenoTaqueia | Antonio Moreno | Matadores 2312 | Mexico D.F | 05023 | Mexico |
| 4 | Around the Horn | Thomas Hardy | 120 Hanover Sq. | London | Wa1 1DP | UK |

```
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
```

Output:

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfred Schmidt                      | Maria Anders   | Obere Str. 57                 | Frankfurt  | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

## UPDATE MULTIPLES REGISTROS

En la condicion WHERE es donde determinamos cuantos registros seran actualizados.  
Por ejemplo la siguiente declaracion actualizara los nombres de todos los registros que tengan la nacionalidad Mexicana:

```
UPDATE Customers
SET CustomerName='Juan'
WHERE Country='Mexico';
```
