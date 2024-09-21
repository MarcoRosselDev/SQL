## SQL LIKE

Like se utiliza con el filtro WHERE y requiere operadores Wildcards que son algo asi como los regex pero de sql.  
Los wildcards mas comunes son % y \_

> % representa cero, uno, o multiples caracteres.

> \_ representa un solo caracter.

Ejemplo de % :  
Retorna todos los customers que comiencen con la letra a:

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
```

output:  
Numero de registros matcheados: 4 de 91 registros.
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209 | Germany |
| 2 | Ana trumilllo Emparedados y helados | Ana Trujillo | Avda. de la Constitución 2222 | Mexico D.F | 05021 | Mexico |
| 3 | Antonio MorenoTaqueia | Antonio Moreno | Matadores 2312 | Mexico D.F | 05023 | Mexico |
| 4 | Around the Horn | Thomas Hardy | 120 Hanover Sq. | London | Wa1 1DP | UK |

### Sintaxis:

> SELECT column1, column2, ...  
> FROM table_name  
> WHERE columnN LIKE pattern;

Ejemplo de \_ :  
Retorna todos los customers que comiencen con la letra a:

```sql
SELECT * FROM Customers
WHERE city LIKE 'L_nd__';
```

output:  
Numero de registros : 7 de 91
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 4 | Around the Horn | Thomas Hardy | 120 Hanover Sq. | London | Wa1 1DP | UK |
| 75 | Split Rail Beer & Ale | Art Braunschweiger | P.O. Box 555 | Lander | 82520 | USA |

```sql
SELECT * FROM Customers
WHERE city LIKE '%L%';
```

El wildcard % soporta uno, muchos o incluso cero caracteres, por lo que esta peticion retorna 41 registros.  
Retorna los registros que contengan la letra l en el nombre de la ciudad

### CONVINACION CON OR Y AND

Retornar todos los customers que comiencen con la letra 'a' o 'b'

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';
```

### TERMINA CON

Retorna los registros cuyo customerName temine con la letra 'a'.

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
```

### COMIENZO Y FINAL DE UN REGEX

Retorna los customers que comiencen con la tetra 'b' y terminen con la letra 's'

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';
```

### CONVINACION DE WILDCARDS

Retorna todos los que comiencen con la letra 'a' y tengan al menos 3 caracteres de largo:

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
```

Retorna los customers que tengan una 'r' en su segunda posicion

```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
```

### SIN WILDCARDS

Sin wildcards se deve espesificar el match exacto para retornar registros:

Retornar todos los customers de Spain:

```sql
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
```
