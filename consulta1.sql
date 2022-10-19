select * from jugadores ;

#1.mostrar el nombre de los jugdores alfabeticamente 
SELECT Nombre 
from jugadores
order by nombre;

#2. Mostrar el nombre de los jugadores que sean pivots con mas de 200 libras
#like '%c%' -> que contenga una c
SELECT  Nombre
FROM jugadores
where posicion like'%c%' and peso >200;


SELECT * FROM equipos;
#3. Mostrar el nombre de todos los equipos ordenados alfabeticamente.
SELECT Nombre
FROM equipos
order by Nombre;


#4. Mostrar el nombre de los equipos del este
SELECT Nombre
FROM equipos
where lower(Conferencia) = 'EaSt'
order by Nombre;

#5 mostrar los equipos donde su ciudad empieza con c
SELECT Nombre,Ciudad
FROM equipos
where lower(Ciudad) like 'c%'#like 'c%' -> empieza en c
order by Nombre;
