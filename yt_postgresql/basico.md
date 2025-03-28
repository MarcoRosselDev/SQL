# crear database

```postgresql
crecate database dbprueba;
<!-- en terminal (SQL shell) devo estar dentro de cualquier base de datos para crear una nueva, cuando iniciamos un proyecto desde cero se nos asigna una DB por defecto llamada postgres, desde aqui podemos crear una DB que estara en el mismo nivel de esta:
_
 |----postgres
 |----dbprueba
 |_...más db

 -->
```
# crear nuevo usuario DB

```postgresql
CREATE ROLE nombrenuevousuario WITH
  LOGIN
  SUPERUSER
  CREATEDB
  CREATEROLE
  INHERIT NOPREPLICATION
  CONNECTION LIMIT -1
  PASSWORD 'XXXXX';

<!-- este codigo crea un nuevo usuario que puede manipular la database con casi todos los permisos pero diferente al usuario por defecto llamado postgres, esto se considera configuración de nivel avanzado, por lo que profundizare en ello más tarde. -->
```

# eliminar database
```postgresql
drop DATABASE dbprueba;
```

# crear tabla
```postgresql
create table nombredelatabla(
  nombrecampo1 tipodedato,
  ...
  nombrecampon tipodedato,
);
```
los tipos de datos más comunes son:
| tipo      |js equivalente|
|-----------|---------|
|varchar(50)| string de 50 caracteres  |
|varchar(n)| string de n caracteres  |
|character | string de longitud fija |
|character varying(n) | string de longitud variable = varchar(n)|
|text|string de longitud variable|
|int| number  |
|decimal|float|
|boolean| true/false|
|date| tipo fecha|

# eliminar tabla

```postgresql
drop table nombredetabla;
```

# insertar registro

```postgresql
INSERT INTO nombredetabla (columna1, columna2, columna3) VALUES (valor1, valor2, valor3);
<!-- ejemplo -->
INSERT INTO usuarios (nombre, id) VALUES ('marco', 1);
```

# actualizar registro
```postgresql
UPDATE nombredetabla SET columna1 = 'nuevo valor' WHERE columna1 = 'valor inicial';

<!-- ejemplo de actualización de varios valores según una condición : -->
UPDATE mitabla SET ciudad = 'concepción' WHERE nomber = 'marco';
```

# eliminar registro
```postgresql
DELETE FROM nombretabla WHERE columna1 = 'valor1';
```

# cosultar registros
```postgresql
SELECT * FROM public.usuarios
ORDER BY id ASC

<!-- con filtro -->
SELECT * FROM public.usuarios
WHERE ciudad = 'santiago'
ORDER BY id ASC;

```