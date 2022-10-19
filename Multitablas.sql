use tutorial;

# Mostrar todos los jugadores y su equipo ordenado por nombre de equipo.
select j.nombre , e.nombre
from jugadores j, equipos e
where j.nombre_equipo = e.nombre
order by e.nombre;

select j.nombre , j.nombre_equipo
from jugadores j
order by j.nombre_equipo,j.nombre;

#Mostrar todos los jugadores del equipo "Raptors".
select j.nombre , j.nombre_equipo
from jugadores j
where lower(J.Nombre_equipo)= 'RAPTORS'
order by j.nombre_equipo,j.nombre;

select * from estadisticas;
#Mostrar los puntos por partido de 'Pau Gasol'.
SELECT Puntos_por_partido
from estadisticas e, jugadores j
where e.jugador = j.codigo
and lower(j.nombre)="Pau Gasol";

#Mostrar los puntos por partido de 'Pau Gasol' en la temporada '04/05'
SELECT Puntos_por_partido
from estadisticas e, jugadores j
where e.jugador = j.codigo
and lower(j.nombre)="Pau Gasol"
and temporada = '04/05';