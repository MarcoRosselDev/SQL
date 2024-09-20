## SQL DELETE

DELETE elimina un registro de una tabla

Sintaxis:

> DELETE FROM table_name  
> WHERE conditiono;

Si no tenemos cuidado con WHERE se eliminaran todos los registros de la tabla, asi que ojito cuidado.

Ejemplo:
Tabla Customers

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                 | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

```sql
DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste';
```

Tabla Customers output:

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

### DELETE TODOS LOS REGISTROS

Es posible eliminar todos los registros si eliminar la tabla, esto significa que la estructura, atributos y index quedan intactos.  
El comando es el siguiente

```sql
DELETE FROM Customers;
```

### DELETE TABLA

para eliminar una tabla utilizamos la declaracion DROP TABLE

```sql
DROP TABLE Customers;
```
