CREATE DATABASE Tutorial; 

use Tutorial; 

CREATE TABLE Alumnos
 (
 IdAlumno int  primary key not null,
 Nombre varchar (25) not null,
 Apellido Varchar (25) not null,
 Edad int not null,
 Direccion_Residencia varchar (50)
 );