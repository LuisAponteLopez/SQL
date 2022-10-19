# Mostrar el nombre del equipo, conferencia y division del jugador mas alto de la NBA.
select j.nombre as jugador,e.conferencia,e.division
from equipos e, jugadores j
where e.nombre = j.nombre_equipo
and altura = (select max(altura)
				from jugadores); 

# Mostrar la suma de los puntos por partido de todos los jugadores españoles donde el equipo donde juegan este en 'Los Angeles'.

#paso 1
select nombre
from equipos
where lower(ciudad)= 'los angeles';
#paso 2
select nombre
from jugadores
where LOWER(procedencia)='spain'
and Nombre_equipo in (select nombre
						from equipos
							where lower(ciudad)= 'los angeles');
#paso 3
select sum(puntos_por_partido) as puntos
from estadisticas
where jugador = (select codigo
				from jugadores
				where LOWER(procedencia)='spain'
				and Nombre_equipo in (select nombre
									from equipos
									where lower(ciudad)= 'los angeles'));


# Mostrar la media de puntos en partidos de los equipos de la division Pacific.
#paso 1
select nombre
from equipos
where lower(DIVISION)='pacific';
#paso 2 
#local
select sum(puntos_local) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						);
#puntos_visistante
select sum(puntos_visitante) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						);
#paso 3 (unir vistante y local)
select sum(puntos_local) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						)
UNION
select sum(puntos_visitante) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						);
#paso 4
select avg(puntos)
from(select sum(puntos_local) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						)
UNION
select sum(puntos_visitante) as puntos
from partidos
where equipo_local in (select nombre
						from equipos
						where lower(DIVISION)='pacific'
						))t; # t de tabla temporal
                        
# Mostrar el partido o partidos (equipo_local, equipo_visitante y diferencia) con mayor diferencia de puntos.

#paso 1
select equipo_local,equipo_visitante, abs(puntos_local-puntos_visitante)
from partidos;
#paso 2
select equipo_local,equipo_visitante,  diferencia
from(select equipo_local,equipo_visitante, abs(puntos_local-puntos_visitante) as diferencia
	 from partidos)t
where diferencia = (select  max(abs(puntos_local-puntos_visitante)) 
					from partidos);

     
#paso 3

select  max(abs(puntos_local-puntos_visitante))
					from partidos
#paso 4
