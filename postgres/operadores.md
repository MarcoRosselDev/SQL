# Selecionar valores distintos

Si la tabla contiene valores repetidos conviente aplicar este comando
```sql
SELECT DISTINCT country FROM customers;
```
Aunque la tabla contiene 91 registros retorna solo 21 registros.  
Ahora un ejemplo con la convinacion COUNT para retornar solo la cantidad
```sql
SELECT COUNT(DISTINCT country) FROM customers;
```

# Filtrar registros
```sql
/* retornar los registros donde la ciudad = London */
SELECT * FROM customers
WHERE city = 'London';

/* retornar los registros con id mayores a 80 */
SELECT * FROM customers
WHERE customer_id > 80;
```
# Ordenar resultados

```sql
/* se ordenan de manera descendente por defecto */
SELECT * FROM products
ORDER BY price;

/* para invertir el ordern aplicar la palabra DESC */
SELECT * FROM products
ORDER BY price DESC;
```
# Ordenar por orden alfabetico

```sql
/* Ordenar por nombre del producto */
SELECT * FROM products
ORDER BY product_name;
```
# Limintar resultados
```sql
SELECT * FROM customers
LIMIT 20;
```

# Espesificar desde donde comenzar el retorno de LIMIT

```sql
/* OFFSET comienza a contar desde el registro 41 */
SELECT * FROM customers
LIMIT 20 OFFSET 40;
```

# Minimo y Maximo
```sql
/* devuleve el precio mas bajo de la tabla products */
SELECT MIN(price)
FROM products;

/* Devuelve el precio más bajo y nombra la columna lowest_price: */
SELECT MIN(price) AS lowest_price
FROM products;
```
# Contar
```sql
/* retorna la cantidad de registros
que bienen de london, ojo que los valores null no los cuenta */
SELECT COUNT(customer_id)
FROM customers
WHERE city = 'London';
```

# SUMA
```sql
SELECT SUM(quantity)
FROM order_details;
/* retorna la suma total de cada elemento :  
          sum
        -------
        51317
        (1 fila)
*/
```
# Promedio (AVG=Average)

```sql
SELECT AVG(price)
FROM products;
/* 
         avg
---------------------
 28.8663636363636364
(1 fila)
 */

SELECT AVG(price)::NUMERIC(10,2)
FROM products;
/* redondear el resultado a dos decimales:
  avg
-------
 28.87
(1 fila)
 */

```
# LIKE  

Se utiliza con frecuancia con estos dos comodines:
> % El singo de porcentaje representa cero, uno o varios caracteres.
> _ El sino de subrayado representa un solo caracter.
Para devolver registros que comincen con una letra esfecifica, agregamos % al final de la letra o frase.

```sql
/* Devolver todos los clientes con un nombre que comience con la letra 'A': */
SELECT * FROM customers
WHERE customer_name LIKE 'A%';

/* Para devolver registros que contengan una letra o frase específica, agregue %antes y después de la letra o frase. */
SELECT * FROM customers
WHERE customer_name LIKE '%A%';
```

# ILIKE
Nota: El operador LIKE distingue entre mayúsculas y minúsculas. Si desea realizar una búsqueda sin distinguir entre mayúsculas y minúsculas, utilice el operador ILIKE en su lugar.
```sql
/* Devolver todos los clientes con un nombre que contenga la letra 'A' o 'a': */
SELECT * FROM customers
WHERE customer_name ILIKE '%A%';

/* Devolver todos los clientes con un nombre que termine con la frase 'en': */
SELECT * FROM customers
WHERE customer_name LIKE '%en';
```
El comodín _ representa un solo carácter.

Puede ser cualquier carácter o número, pero cada uno _ representa un solo carácter.
```sql
/* Devuelve todos los clientes de una ciudad que comienza con 'L' seguido de un carácter comodín, luego 'nd' y luego dos caracteres comodín: */
SELECT * FROM customers
WHERE city LIKE 'L_nd__';
```

# IN
posibles valores en el operador where:
```sql
/* Devolver a todos los clientes de 'Alemania', 'Francia' o 'Reino Unido': */
SELECT * FROM customers
WHERE country IN ('Germany', 'France', 'UK');
```
# NOT IN
devolver todos los registros menos estos:
```sql
/* Devolver todos los clientes que NO sean de 'Alemania', 'Francia' o 'Reino Unido': */
SELECT * FROM customers
WHERE country NOT IN ('Germany', 'France', 'UK');
```

# IN SELECT
También puede utilizar una declaración SELECT dentro del paréntesis para devolver todos los registros que están en el resultado de la declaración SELECT.
```sql
/* Devolver todos los clientes que tienen un pedido en la orderstabla: */
SELECT * FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);
```

# BETWEEN

```sql
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 15;

SELECT * FROM Products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu'
ORDER BY product_name;

SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-12' AND '2023-05-05';
```

# AS
AS se aplica para retornar la informacion con un nombre temporal, para mas comodidad del que resivira la info.
```sql
SELECT customer_id AS id
FROM customers;
/* podemos omitir el AS, lo siquiente es lo mismo */
SELECT customer_id id
FROM customers;
```
```sql
/* concatenamos dos columnas y le damos el nombre de una */
SELECT product_name || unit AS product
FROM products;
/*                       product
---------------------------------------------------
 Chais10 boxes x 20 bags
 Chang24 - 12 oz bottles
 Aniseed Syrup12 - 550 ml bottles
 Chef Antons Cajun Seasoning48 - 6 oz jars
 Chef Antons Gumbo Mix36 boxes */
```
en el resultado estmos resiviendo todo junto, para agregra un espacio ' ' aplicamos lo siquiente:
```sql
SELECT product_name || ' ' || unit AS product
FROM products;
```

# JOIN
