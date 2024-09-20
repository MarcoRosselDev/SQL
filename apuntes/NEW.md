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

### TODOS LOS DATOS

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

Este seria el comando sinplificado si contamos con todos los valores, el resultado seria el mismo de arriba

```
INSERT INTO Cutomers
VALUES ('Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'Wa1 1DP', 'UK')
```

### ALGUNOS DATOS

Ejemplo:
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209 | Germany |
| 2 | Ana trumilllo Emparedados y helados | Ana Trujillo | Avda. de la Constitución 2222 | Mexico D.F | 05021 | Mexico |
| 3 | Antonio MorenoTaqueia | Antonio Moreno | Matadores 2312 | Mexico D.F | 05023 | Mexico |

```
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');
```

La tabla Customers quedaria asi:

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                 | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Cardinal                            | null           | null                          | Stavanger  | null       | Norway  |

### INSERTAR MULTIPLES REGISTROS

Es posible insertar multiples registros en una declaracion.  
La sintaxis es la misma pero multiplicamos los valores:

Ejemplo:

```
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
```

## SQL NULL

El valor NULL se le da a un valor en un registro que no es obligatorio y no se entrego al ser creado.

¿Pero como encuentro un valor NULL ?  
para comprobar si un campo es NULL o no devemos hacecr uso de las palabras reservadas IS NULL y IS NOT NULL

Sintaxis IS NULL:

> SELECT column_names  
> FROM table_name  
> WHERE column_name IS NULL;

Sintaxis IS NOT NULL:

> SELECT column_names  
> FROM table_name  
> WHERE column_name IS NOT NULL;

Por ejempolo el siguiente comando retorna los registros que tengan NULL en la propiedad direccion:

```
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL
```
