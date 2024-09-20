# SQL AGGREGATE FUNCTIONS

Una funcion aggregate se usa por lo general con la clausula GROUP BY de la declaracion SELECT.  
La clausula GROUP BY divide el resultado en grupos de valores y la funcion aggregation puede usarlo para retornar un solo valor por cada grupo.

Los SQL aggregation function mas comunes son:

1. ` MIN( )` - retorna el valor mas pequeño de la columna seleccionada
2. ` MAX( )` - retorna el valor mas grande de la columna seleccionada
3. ` COUNT( )` - retorna el numero de registros en un grupo
4. ` SUM( )` - retorna la suma de los valores numericos de una columna
5. ` AVG( )` - retorna el promedio de los valores numericos de una columna

Las funciones aggregate ignoran las valores NULL a exepcion de COUNT( ).
