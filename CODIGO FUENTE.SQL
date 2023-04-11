--creacion de tablas
CREATE TABLE Clientes (
	id int NOT NULL PRIMARY KEY,
	Nombre varchar(50),
	Direccion varchar(50),
	Correo varchar(50)
);

CREATE TABLE Libros (
	id int NOT NULL PRIMARY KEY,
	Titulo varchar(50),
	Autor varchar(50),
	Genero varchar(50),
	Descripcion varchar(50),
	Precio int,
	Fecha_Publicacion Date
);

CREATE TABLE Pedidos (
	id int NOT NULL PRIMARY KEY,
	id_cliente int,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
	Fecha_Pedido Date,
	Libros_solicitados varchar(50)
);

CREATE TABLE cl_lib (
	id int NOT NULL PRIMARY KEY,
	id_del_cliente int,
	id_del_libro int,
	FOREIGN KEY (id_del_cliente) REFERENCES Clientes(id),
	FOREIGN KEY (id_del_libro) REFERENCES Libros(id)
);

CREATE TABLE inventarios(
	id int NOT NULL PRIMARY KEY,
	id_del_libro int,
	FOREIGN KEY (id_del_libro) REFERENCES Libros(id)
);

--inserts clientes
INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		1,
		'juan',
		'cllejemplo #123',
		'ejemplo@gmail.com'
	);

INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		2,
		'valeria',
		'cllejemplo #567',
		'ejemplo2@gmail.com'
	);

INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		3,
		'camilo',
		'cllejemplo #9871',
		'ejemplo3@gmail.com'
	);

INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		4,
		'Laura',
		'Carrera 20 #45-67',
		'laura@example.com'
	);

INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		5,
		'Pedro',
		'Calle 70 #12-34',
		'pedro@example.com'
	);

INSERT INTO
	clientes (id, Nombre, Direccion, Correo)
VALUES
	(
		6,
		'María',
		'Calle 45 #23-45',
		'maria@example.com'
	);

-- inserts libros
INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		1,
		'caperucita rojan',
		'autor1',
		'infantil',
		'buen libro',
		500,
		'2005/01/31'
	);

INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		2,
		'el gato con botas',
		'autor2',
		'infantil',
		'libro regular',
		700,
		'2008/01/25'
	);

INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		3,
		'psicologia oscura',
		'steven turnner',
		'educacion',
		'excelente libro',
		1000,
		'2003/07/10'
	);

INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		4,
		'El arte de la guerra',
		'Sun Tzu',
		'Estrategia',
		'libro influyente en la historia',
		800,
		'2000/01/01'
	);

INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		5,
		'El gran Gatsby',
		'F. Scott Fitzgerald',
		'Ficción',
		'bastante recomendado',
		1200,
		'1995/05/10'
	);

INSERT INTO
	Libros (
		id,
		Titulo,
		Autor,
		Genero,
		Descripcion,
		Precio,
		Fecha_Publicacion
	)
VALUES
	(
		6,
		'La Odisea',
		'Homer',
		'Epopeya',
		'recomendado pero complicado de leer',
		1000,
		'1995/05/10'
	);

-- inserts Pedidos
INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(1, 1, '2005/01/31', 'caperucita roja');

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		2,
		2,
		'2005/01/31',
		'el gato con botas'
	);

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		3,
		2,
		'2005/01/31',
		'el gato con botas'
	);

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		4,
		3,
		'2005/01/31',
		'psicologia oscura'
	);

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		5,
		2,
		'2022/03/15',
		'El arte de la guerra'
	);

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		6,
		4,
		'2022/03/18',
		'El gran Gatsby, La Odisea'
	);

INSERT INTO
	Pedidos (
		id,
		id_cliente,
		Fecha_Pedido,
		Libros_solicitados
	)
VALUES
	(
		7,
		5,
		'2022/03/22',
		'El arte de la guerra, La Odisea'
	);

-- inserts cl_lib
INSERT INTO
	cl_lib (id, id_del_cliente, id_del_libro)
VALUES
	(4, 2, 2);

INSERT INTO
	cl_lib (id, id_del_cliente, id_del_libro)
VALUES
	(5, 4, 5);

INSERT INTO
	cl_lib (id, id_del_cliente, id_del_libro)
VALUES
	(6, 5, 6);

-- inserts inventarios
INSERT INTO
	inventarios (id, id_del_libro)
VALUES
	(1, 1);

INSERT INTO
	inventarios (id, id_del_libro)
VALUES
	(2, 2);

--preguntas 
--1 ¿cual es el libro mas vendido este mes?
--rta:
SELECT
	Libros.Titulo,
	COUNT(*) AS Ventas
FROM
	Pedidos
	JOIN cl_lib ON Pedidos.id = cl_lib.id
	JOIN Libros ON cl_lib.id_del_libro = Libros.id
GROUP BY
	Libros.Titulo
ORDER BY
	Ventas DESC
LIMIT
	1;

--2 ¿cual es el promedio de precio de los libros en la tienda
--rta:
SELECT
	AVG(Precio) AS PromedioPrecio
FROM
	Libros;