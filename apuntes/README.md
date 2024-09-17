## SQL Intro

SQL es un standar, por ahi hay diferentes versiones de SQL, pero para ser compativles con el standar ANSI, todos soportan los comandos basicos:

- SELECT
- UPDATE
- DELETE
- INSERT
- WHERE

> la mayoria de los lenguajes SQL tienen sus propias propiedades extendidas añadido al SQL esptandar

### RDBMS

RDBMS = relational database management system (un software visual para administrar la base de datos).

La informacion en los RDBMS es almacenada en objetos llamados tablas.  
Una tabla es una coleccion de datos relacionados que consisten en filas y columnas.

### TABLA CUSTOMERS

```
SELECT * FROM Customers;
```

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                 | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

En este ejemplo vermos las 3 partes que componen a una tabla:

#### FIELDS (campos):

es la primera fila de la tabla que contiene el nombre de cada campo

#### RECORD O ROW (fila):

es cada registro individual desde el customerid asta country

#### COLUMN

Es la columna en la tabla, util para ser mas espesifico con las busquedas de informacion

<!-- ```mermaid
sequenceDiagram
    participant browser
    participant server

    browser->>server: POST https://studies.cs.helsinki.fi/exampleapp/new_note_spa
    activate server
    server->>browser: json object (status 201 created)
    deactivate server

    Note right of browser: The browser begins executing JavaScript code that manipulates the DOM to add the JSON response object to the notes list.
``` -->

## SQL Syntax

La mayoria de las acciones que nesecitamos realizar en base de datos se realizan con SQL statements o declaraciones SQL.  
Las declaraciones SQL son palabras clave, por ejemplo:

```
SELECT * FROM Customers;
```

retorna todas las filas customers de la tabla customers.

### TABLAS

Una base de datos por lo general manejan una o mas tablas, estas son identificadas por un nombre ("Customers", "Orders")

### Comandos SQL mas importantes

- SELECT - extrae datos
- UPDATE - actualiza datos
- DELETE - eliminna datos
- INSERT INTO - inserta un dato nuevo
- CREATE DATABASE - crea una base de datos
- ALTER DATABASE - modifica una base de datos
- CREATE TABLE - crea una tabla
- ALTER TABLE - modifica una tabla
- DROP TABLE - elimina una tabla
- CREATE INDEX - crea un index (key de busqueda)
- DROP INDEX - elimina un index

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
