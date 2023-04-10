--creacion de tablas
------------------------------------

create table Clientes (
id int NOT NULL PRIMARY KEY,
Nombre varchar(50),
Direccion varchar(50),
Correo varchar(50))

create table Libros (
id int NOT NULL PRIMARY KEY,
Titulo varchar(50),
Autor varchar(50),
Genero varchar(50),
Descripcion varchar(50),
Precio int,
Fecha_Publicacion Date)

create table Pedidos (
id int NOT NULL PRIMARY KEY,
id_cliente int,
foreign key (id_cliente) REFERENCES Clientes(id),
Fecha_Pedido Date,
Libros_solicitados varchar(50))

create table cl_lib (
id int NOT NULL PRIMARY KEY,
id_del_cliente int,
id_del_libro int,
foreign key (id_del_cliente) REFERENCES Clientes(id),
foreign key (id_del_libro) REFERENCES Libros(id))

create table inventarios(
id int NOT NULL PRIMARY KEY,
id_del_libro int,
foreign key (id_del_libro) REFERENCES Libros(id))

------------------------------
--inserts 
----------------------
insert into clientes (
	id,
	Nombre,
    Direccion,
	Correo
)
values (
	1,
	'juan',
	'cllejemplo #123',
	'ejemplo@gmail.com'
);
insert into clientes (
	id,
	Nombre,
    Direccion,
	Correo
)
values (
	2,
	'valeria',
	'cllejemplo #567',
	'ejemplo2@gmail.com'
);
insert into clientes (
	id,
	Nombre,
    Direccion,
	Correo
)
values (
	3,
	'camilo',
	'cllejemplo #9871',
	'ejemplo3@gmail.com'
)


insert into Libros (
	id,
	Titulo,
    Autor,
	Genero,
	Descripcion,
	Precio,
	Fecha_Publicacion
)
values (
	1,
	'caperucita rojan',
	'autor1',
	'infantil',
	'buen libro',
	500,
	'2005/01/31'
);
insert into Libros (
	id,
	Titulo,
    Autor,
	Genero,
	Descripcion,
	Precio,
	Fecha_Publicacion
)
values (
	2,
	'el gato con botas',
	'autor2',
	'infantil',
	'libro regular',
	700,
	'2008/01/25'
);
insert into Libros (
	id,
	Titulo,
    Autor,
	Genero,
	Descripcion,
	Precio,
	Fecha_Publicacion
)
values (
	3,
	'psicologia oscura',
	'steven turnner',
	'educacion',
	'excelente libro',
	1000,
	'2003/07/10'
);


insert into Pedidos (
	id,
	id_cliente,
	Fecha_Pedido,
    Libros_solicitados
)
values (
	1,
	1,
	'2005/01/31',
	'caperucita roja'
);

insert into Pedidos (
	id,
	id_cliente,
	Fecha_Pedido,
    Libros_solicitados
)
values (
	2,
	2,
	'2005/01/31',
	'el gato con botas'
);

insert into Pedidos (
	id,
	id_cliente,
	Fecha_Pedido,
    Libros_solicitados
)
values (
	3,
	2,
	'2005/01/31',
	'el gato con botas'
);

insert into Pedidos (
	id,
	id_cliente,
	Fecha_Pedido,
    Libros_solicitados
)
values (
	4,
	3,
	'2005/01/31',
	'psicologia oscura'
)
----------------------------------
--preguntas 
--1 ¿cual es el libro mas vendido este mes?
--rta:
select Libros_solicitados
from Pedidos group by Libros_solicitados
--2 ¿cual es el promedio de precio de los libros en la tienda
--rta:
select avg (Precio) 
from Libros