#  length (largo de string)

```postgresql
select length('texto de ejemplo');
<!-- output: 15 -->
select char_length(); // es lo mismo
```

# || (string1, string2 => union de strings)
```postgresql
select 'hola' || ' mundo';
<!-- output: 'hola mundo' -->
```
# upper (string => mayuscula)
```postgresql
select upper('marco');
<!-- 'MARCO' -->
```
# lower (string => minuscula)
```postgresql
select lower('Marco');
<!-- output: 'marco' -->
```
# left
```postgresql
select left('hola mundo', 3);
<!-- output: 'hol' -->
```
# right
```postgresql
select right('hola mundo', 3);
<!-- output: 'ndo' -->
```