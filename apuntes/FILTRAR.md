## SQL SELECT

Retorna datos de la tabla Customers

```
SELECT CustomerName, City FROM Customers;
```

### Syntax

> SELECT column1, column2, ...  
> FROM table_name;

### SELECT ALL

Retorna toda la tabla customers

```
SELECT * FROM Customers;
```

## SQL SELECT DISTINCT

Solo retorna valores distintos.  
Por ejemplo la siguiente consulta retorna todos los paises diferentes en la tabla customers

```
SELECT DISTINCT Country FROM Customers;
```

output: (No retorna paises repetidos)

| Country   |
| --------- |
| Argentina |
| Austria   |
| Belgium   |
| Brazil    |
| Canada    |
| Denmark   |

Podemos convinarlo con la palabra clave COUNT para retornar la cantidad de paises en la tabla

```
SELECT COUNT(DISTINCT Country) FROM Customers;
```

> Nota: COUNT(DISTINCT column_name) no lo soporta la base de datos de Microsoft Access

## SQL WHERE

Se utiliza para filtrar registros.  
Retorna solo registros que pasen una condicion espesifica.
Ejemplo:

```
SELECT * FROM Customers WHERE Country='Mexico';
```

Syntax :

> SELECT column1, column2, ...  
> FROM table_name  
> WHERE condition;

> WHERE se convina tambien con UPDATE, DELETE, etc.

### TEXTO Y NUMEROS CON WHERE

Text:  
SQL requiere que los textos se escriban rodeados por comillas simples (la mayoria de los systemas de db tambien soportan comillas dobles pero sera mejor seguir con comillas simples)

```
SELECT * FROM Customers WHERE Country='Chile';
```

Number:  
SQL requiere que los numeros no lleven comillas de ningun tipo, como:

```
SELECT * FROM Customers WHERE CustomerID=1;
```

### OPERADORES CON WHERE

Podemos utilizar los siguientes operadores para filtrar

| Operador | Descripcion                                                | ENGLISH               |
| -------- | ---------------------------------------------------------- | --------------------- |
| =        | igual                                                      | egual                 |
| >        | mayor que,                                                 | greater than          |
| <        | menor que                                                  | less than             |
| >=       | mayor o igual                                              | greater than or equal |
| <=       | menor o igual                                              | less than or equal    |
| <>       | desigual , en algunas verciones de SQL se escribe !=       | Not equal             |
| BETWEEN  | entre sierto range                                         | between               |
| LIKE     | busqueda por un patron de referencia                       | LIKE                  |
| IN       | para espesificar multiples posibles valores de una columna | IN                    |

## SQL ORDER BY

La palabra clave ORDER BY se utliza para ordenear los resultados en forma ascendente o descendente.  
Por ejemplo:

```
SELECT * FROM Products ORDER BY price DESC;
SELECT * FROM Products ORDER BY price ASC;
```

Syntax:

> SELECT column1, column2, ...  
> FROM table_name  
> ORDER BY column1, column2, ... ASC|DESC;

### ORDEN ALFABETICO

Para valores de type String se ordenan de manera alfabética.

```
SELECT * FROM Products ORDER BY ProductName DESC;
```

### ORDEN POR MULTIPLES COLUMNAS

El siguiente comando ordena por Paises y Nombre de usuario.  
Esto significa que si el pais se repite entonces se considera el nombre de usuario como criterio de ordenamiento alfabético.

```
SELECT * FROM Products ORDER BY Country, ProductName DESC;
```

### ORDEN POR MULTIPLES COLUMNAS Y CON ASC Y DESC

```
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
```

## SQL AND

La sentencia WHERE puede tener uno o muchos operadores AND.  
El operador AND se utiliza para filtrar registros basados en más de una condición.  
Por ejemplo:  
Retornar todos los customers que sean de Spain y su customerName comience con la letra G:

```
SELECT * FROM Customers WHERE Country='Spain' AND CustomerName LIKE 'G%';
```

Sintaxis:

> SELECT column1, column2, ...  
> FROM table_name  
> WHERE condition1 AND condition2 AND condition3 ...;

### AND VS OR

AND retorna registros si todas las condiciones son TRUE.  
OR retorna registros si cualquira de las condiciones son TRUE.

### CONBINANDO AND Y OR

```
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
```

> Si le sacamos los parentesis retornara los customers de nacionalidad Spain y los que comincen el customername con g o r, por lo que es importante los parentesis

> con parentecis retorna 3 registros.  
> sin parentecis retorna 10 registros.

## SQL OR

Syntaxis:

> SELECT column1, column2, ...  
> FROM table_name  
> WHERE condition1 OR condition2 OR condition3 ...;

Ejemplo: Retorna todos los registros donde la ciudad sea Berlin o CustomerName comince con la letra G o la nacionalidad sea Norway

```
SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';
```

## SQL NOT

Se convina con otros operadores para filtrar por un resultado negativo al deseado, por ejempolo queremos los registros que no sean de españa:

```
SELECT * FROM Customers
WHERE NOT Country='Spain';
```

Esto retornara todos los registros menos los de nacionalidad Española

Sintaxis:

> SELECT column1, column2, ...  
> FROM table_name  
> WHERE NOT condition;
