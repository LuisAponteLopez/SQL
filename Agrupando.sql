# Mostrar el numero de puntos de cada jugador en toda su carrera.
select j.nombre,sum(e.puntos_por_partido) as puntos
from jugadores j, estadisticas e
where j.CODIGO = e.jugador
group by j.nombre
order by puntos desc;

# Mostrar el número el jugadores de cada equipo.
#cada-> usar->count()
select j.nombre_equipo, count(*)
from jugadores j
group by j.nombre_equipo;

#. Mostrar el jugador que mas puntos ha realizado en toda su carrera.
select max(puntos)
from(select j.nombre,sum(e.puntos_por_partido) as puntos
from jugadores j, estadisticas e
where j.CODIGO = e.jugador
group by j.nombre) t;

select t.nombre
from(select j.nombre,sum(e.puntos_por_partido) as puntos
from jugadores j, estadisticas e
where j.CODIGO = e.jugador
group by j.nombre) t
where t.puntos = (select max(t2puntos) from(select j.nombre,sum(e.puntos_por_partido) as t2puntos
												from jugadores j, estadisticas e
												where j.CODIGO = e.jugador
												group by j.nombre) t)