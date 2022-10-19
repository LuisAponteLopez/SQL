# Mostrar el nombre de todos los pokemon
Select nombre from pokemon;
# mostrar los pokemon que pesen menos de 10k
select nombre
from pokemon
where peso < 10;
# mostrar los pokemon de tipo agua.
select p.nombre 
from pokemon p, pokemon_tipo pt, tipo t
where p.numero_pokedex = pt.numero_pokedex and pt.id_tipo=t.id_tipo
and lower(t.nombre) = 'agua';
# Mostrar los pokemon que son de tipo fuego y volador.

select nombre
from pokemon
where numero_pokedex in (select numero_pokedex
						from pokemon_tipo pt, tipo t
                        where pt.id_tipo=t.id_tipo and lower(t.nombre)='fuego')
and numero_pokedex in (select numero_pokedex
						from pokemon_tipo pt, tipo t
                        where pt.id_tipo=t.id_tipo and lower(t.nombre)='volador');


# mostrar los pokemon con una estadistica base de ps mayor que 200
select p.nombre
from pokemon p,estadisticas_base e 
where p.numero_pokedex=e.numero_pokedex
and e.ps > 200;

#Mostrar aquellos pokemon que evolucionan por intercambio.

#Mostrar el nombre del movimiento con mas prioridad.

#Mostrar el pokemon mas pesado.




# mostrar los datos(nombre, peso, altura) de la prevolucion de Arbok

select p.nombre, p.altura, p.peso
from pokemon p, evoluciona_de ev
where p.numero_pokedex = ev.pokemon_origen
and ev.pokemon_evolucionado = (select numero_pokedex 
							from pokemon 
							where LOWER(nombre) = 'arbok');
                            

