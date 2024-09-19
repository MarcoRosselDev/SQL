## SQL INSERT INTO

Con INSERT INTO creamos un nuevo registro en una tabla, para esto tenemos dos formas de hacerlo.  
Una es si no proveeremos todos los datos para cada campo y la otra es si lo ingresaremos todo

1. No tenemos todos los datos  
   la sintaxis es la siguiente

   > INSERT INTO table_name (column1, column2, column3, ...)  
   > VALUES (value1, value2, value3, ...);

2. Todos los datos ?  
   la sintaxis es la siguiente

   > INSERT INTO table_name  
   > VALUES (value1, value2, value3, ...);

   Si contamos con todos los valores de cada columna no necesitamos especificar el nombre de la columna.  
    Pero devemos asegurarnos de cuidar el orden de ingreso de valores, que sea el mismo en la tabla.

Ejempolo:
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209 | Germany |
| 2 | Ana trumilllo Emparedados y helados | Ana Trujillo | Avda. de la Constitución 2222 | Mexico D.F | 05021 | Mexico |
| 3 | Antonio MorenoTaqueia | Antonio Moreno | Matadores 2312 | Mexico D.F | 05023 | Mexico |

```
INSERT INTO Cutomers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'Wa1 1DP', 'UK')
```

La tabla Customers queda asi:
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209 | Germany |
| 2 | Ana trumilllo Emparedados y helados | Ana Trujillo | Avda. de la Constitución 2222 | Mexico D.F | 05021 | Mexico |
| 3 | Antonio MorenoTaqueia | Antonio Moreno | Matadores 2312 | Mexico D.F | 05023 | Mexico |
| 4 | Around the Horn | Thomas Hardy | 120 Hanover Sq. | London | Wa1 1DP | UK |

No nesecitamos agregar el CustomerID, este se auto-incrementa automaticamente cuando agregamos un registro a una tabla
