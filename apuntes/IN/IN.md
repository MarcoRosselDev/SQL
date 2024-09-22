## SQL IN

In se se ocupa en el condicional WHERE.  
Este nos ayuda a omitir multiples OR en el caso de multiples opciones.  
Por ejemplo, retorna todos los customers de Germany, France o UK:

```sql
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
```

### Sintaxis

> SELECT column_name(s)  
> FROM table_name  
> WHERE column_name IN (value1, value2, ...);

### NOT IN

para retornar los registros que no tengan los valores en IN.

```sql
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
```

### IN (SUB QUERY)

Podemos utilizar IN en una sub-consulta en el condicional WHERE.

```sql
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
```
