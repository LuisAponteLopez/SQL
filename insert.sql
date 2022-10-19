use tutorial;

Insert into alumnos(IdAlumno,Nombre,Apellido,Edad,Direccion_Residencia)
value('0101','Luis','Aponte','24','Ba mini');

Insert into alumnos(IdAlumno,Nombre,Apellido,Edad)
value('0106','Juan','Lacen','60');

Insert into alumnos Values
('0103','Maribel','Aponte','55','Ba mini');

INSERT INTO Alumnos (IdAlumno, Nombre, Apellido, Edad, Direccion_Residencia) 
VALUES 
('0103', 'Franklin1', 'Garcia', '25', 'avenida 01'), 
('0104', 'Franklin2', 'Garcia', '25', 'avenida 02'),  
('0105', 'Franklin3', 'Garcia', '25', 'avenida 03'); 
#mostrar datos
select * from alumnos