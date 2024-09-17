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
