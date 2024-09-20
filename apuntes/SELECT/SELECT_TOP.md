## SQL SELECT TOP

Esta declaracion se utiliza para limitar los registros a retornar, es util para tablas muy largas que pueden impactar el performance si retornamos todo.

Por ejemplo, retornar solo los 3 primeros clientes de la tabla Customers:

```
SELECT TOP 3 * FROM Customers;
```

> No todos los db soportan la declaracion SELECT TOP , MySQL soporta LIMIT para este proposito.  
> revisar lo que aplique en el db a seleccionar en el futuro.  
> por ahora PostgresSQL sera el elegido

## PostgreSQL 7.6. LIMIT and OFFSET (17 rc)

LIMIT y OFFSET nos ayudan a retornar solo una porcion de los registros generados por una solicitud.

Sintaxis:

> SELECT select_list  
>  FROM table_expression  
> [ ORDER BY ... ]  
> [ LIMIT { count | ALL } ]  
> [ OFFSET start ]
