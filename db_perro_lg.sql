create database holamundo;
show databases;
use holamundo;
CREATE TABLE dueno (
 nombre varchar (255),
apellido varchar(255),
telefono int,
direccion varchar (255),
PRIMARY KEY (dni)
);

CREATE TABLE perro (
PRIMARY KEY (id_perro),
fecha_nac int (255),
sexo varchar(255) DEFAULT NULL,
PRIMARY KEY (dni_dueno)
 
);

CREATE TABLE Historial (
PRIMARY KEY (id_historial),
fecha int,
descripcion varchar (255),
Monto varchar (255)
foreign key (perro),

);