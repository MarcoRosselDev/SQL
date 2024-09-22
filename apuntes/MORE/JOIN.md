## SQL JOIN

En mis palabras:
Son conectores de tablas para extraer info de las dos tablas y agregarlas a una nueva tabla para ser retornada.  
Los JOIN principales son:

1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN

## INNER JOIN

Para ejemplificar INNER JOIN utilizaremos dos tablas, estas son un fragmento de cada una para referencia:

### Tabla customers:

| CustomerID | CustomerName                        | ContactName    | Address                       | City       | PostalCode | Country |
| ---------- | ----------------------------------- | -------------- | ----------------------------- | ---------- | ---------- | ------- |
| 1          | Alfreds Futterkiste                 | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany |
| 2          | Ana trumilllo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | Mexico D.F | 05021      | Mexico  |
| 3          | Antonio MorenoTaqueia               | Antonio Moreno | Matadores 2312                | Mexico D.F | 05023      | Mexico  |
| 4          | Around the Horn                     | Thomas Hardy   | 120 Hanover Sq.               | London     | Wa1 1DP    | UK      |

### Tabla orders:

| OrderID | CustomerID | OrderDate  |
| ------- | ---------- | ---------- |
| 10308   | 2          | 1996-09-18 |
| 10309   | 37         | 1996-09-19 |
| 10310   | 77         | 1996-09-20 |

La columna CutomerID es la columna en comund de las dos tablas, por lo que podemos aplicar JOIN en estas dos tablas.

##

<!-- ![texto alternativo de prueva](./join_imgs/img_inner_join.png)
 -->
<picture>
  <source media='(prefers-color-scheme: light)' srcset='./join_imgs/img_full_outer_join.png'>
  <source media='(prefers-color-scheme: dark)' style='color:white; background-color: white;' srcset='./join_imgs/img_left_join.png'>
  <img alt='inner join image representation.' src='./join_imgs/img_inner_join.png'>
</picture>
