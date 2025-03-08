# crear una nuava tabla (Postgres)

```sql
CREATE TABLE <nombre> (
  <nombre campo> (<type value>),
  nombre VARCHAR(60), /* <--ejemplo nombre de tipo string con un maximos de 60 caracteres. */
  edad INT,
  comentario VARCHAR(255)
);
```

# insertar dato en la tabla

```sql
INSERT INTO cars (brand, model, year) 
values ("toyota","mustang",1997); /* si no aplicamos el ; no se ejecuta el comando */
```

miramos si se ve el item nuevo en la tabla cars:
```sql
SELECT * FROM cars;
```
```
 brand  |  model   | year
--------+----------+------
 toyota | mustange | 1997
```
# insertar varios elementos a la vez

```sql
INSERT INTO cars (brand, model, year)
VALUES
  ('Volvo', 'p1800', 1968),
  ('BMW', 'M1', 1978),
  ('Toyota', 'Celica', 1975);
```
output:
```
INSERT 0 3
```
miramos la tabla:
```sql
SELECT * FROM cars;
```

```
 brand  |  model   | year
--------+----------+------
 toyota | mustange | 2001
 Volvo  | p1800    | 1968
 BMW    | M1       | 1978
 Toyota | Celica   | 1975
```

# agregar una columna al a tabla

```sql
ALTER TABLE cars
ADD color VARCHAR(255);
```

```
 brand  |  model   | year | color
--------+----------+------+-------
 toyota | mustange | 2001 |
 Volvo  | p1800    | 1968 |
 BMW    | M1       | 1978 |
 Toyota | Celica   | 1975 |
```
ahora la tabla tiene una columna color y los elementos previos estan vacios, aprenderemos como llenarlos despues.

# actualizar columnas de elementos

```sql
UPDATE cars
SET color = 'red'
WHERE brand = 'Volvo';
```
```
 brand  |  model   | year | color
--------+----------+------+-------
 toyota | mustange | 2001 |
 BMW    | M1       | 1978 |
 Toyota | Celica   | 1975 |
 Volvo  | p1800    | 1968 | red
```
# Actualizar varias columnas de elementos

```sql
UPDATE cars
SET color = 'white', year = 1970
WHERE brand = 'Toyota';
```
```
 brand  |  model   | year | color
--------+----------+------+-------
 toyota | mustange | 2001 |
 BMW    | M1       | 1978 |
 Volvo  | p1800    | 1968 | red
 Toyota | Celica   | 1970 | white
```

### ejercicio

Escriba la declaración SQL correcta para actualizar el valor de la model columna 'Bronco' para cualquier registro donde brandsea 'Ford'.
```sql
UPDATE cars
SET model='Bronco'
WHERE brand='Ford';

```

# Cambiar columna de tabla
cambia el tipo de dato int a string de 4 caracteres
```sql
ALTER TABLE cars
ALTER COLUMN year TYPE VARCHAR(4);
```
# Eliminar clumna
```sql
ALTER TABLE cars
DROP COLUMN color;
```
# Eliminiar Registro (elemento, documento, etc...)
ojito con el where, si no se tiene cuidado se puede eliminar todo.
```sql
DELETE FROM cars
WHERE brand = 'Volvo';
```
# Eliminar tabla
```sql
DROP TABLE cars;
```