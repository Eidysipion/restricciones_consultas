create table Categorias ( 
id integer primary key not null,
nombre text 
);

insert into Categorias (id, nombre)
values
(1,	 'Electronicos,'),
(2,	 'Ropa'),
(3,	 'Hogar'),
(4,	 'Deportes'),
(5,	 'Juguetes');

create table Clientes(
id integer primary key not null,
nombre	text,
telefono varchar

);


insert into Clientes (id, nombre,telefono)
values
(1,	'Juan',	1234567890),
(2,	'María',	0987654321),
(3,	'Pedro',	5555555555);


create table Items (
id	integer primary key not null,
orden_id integer,	
producto_id	integer,
cantidad	numeric,
monto_venta numeric
);

insert into Items (id, orden_id,producto_id,cantidad,monto_venta)
values 
(1,	1,	9,	7,	175),
(2,	1,	8,	8,	400),
(6,	2,	9,	3,	75),
(7,	2,	5,	9,	270),
(8,	2,	5,	10,	300),
(9,	2,	6,	3,	60),
(11,	3,	1,	9,9000),
(16,	4,	1,	4,	4000),
(17,	4,	2,	8,	6400),
(21,	5,	6,	2,	40),
(22,	5,	7,	3,	45),
(26,	6,	4,	9,	630),
(27,	6,	9,	4,	100),
(28,	6,	3,	2,	100),
(31,	7,	5,	8,	240),
(32,	7,	9,	6,	150),
(33,	7,	8,	2,	100),
(36,	8,	1,	6,	6000),
(37,	8,	1,	10,	10000),
(38,	8,	3,	2,	100),
(41,	9,	8,	9,	450),
(42,	9,	3,	3,	150),
(43,	9,	7,	2,	30),
(44,	9,	10,	5,	50),
(46,	10,	9,	9,	225),
(47,	10,	1,	7,	7000),
(48,	10,	3,	6,	300),
(51,	11,	7,	5,	75),
(52,	11,	9,	8,	200),
(53,	11,	3,	9,	450),
(56,	12,	2,	7,	5600),
(57,	12,	1,	5,	5000),
(58,	12,	6,	9,	180),
(59,	12,	8,	9,	450),
(60,	12,	8,	4,	200),
(61,	13,	9,	4,	100),
(62,	13,	2,	6,	4800),
(66,	14,	1,	5,	5000),
(67,	14,	4,	7,	490),
(71,	15,	9,	6,	150),
(72,	15,	5,	9,	270);


create table Órdenes (
id integer primary key not null,
cliente_id	integer,
sucursal_id	integer,
fecha DATE,
total NUMERIC
);

insert into Órdenes (id, cliente_id, sucursal_id,fecha,total)
values 
(1,	1,	3,	'20230612',	575),
(2,	2,	1,	'20230612',	705),
(3,	3,	3,	'20230612',	9000),
(4,	2,	3,	'20230612',	10400),
(5,	3,	3,	'20230612',	85),
(6,	1,	1,	'20230612',	830),
(7,	1,	1,	'20230612',	490),
(8,	3,	3,	'20230612',	16100),
(9,	3,	2,	'20230612',	680),
(10,2,	1,	'20230612',	7525),
(11,2,	3,	'20230612',	725),
(12,3,	1,	'20230612',	11430),
(13,3,	3,	'20230612',	4900),
(14,3,	3,	'20230612',	5490),
(15,1,	1,	'20230612',	420);


create table Productos (
id integer primary key not null,
nombre	text,
marca text,
categoria_id integer,
precio_unitario numeric
);

insert into Productos (id,nombre,marca,categoria_id,precio_unitario)
values 
(1,	'Televisor',	'Sony',	1,	1000),
(2,	'Laptop',	'HP',	1,	800),
(3,	'Camisa',	'Zara',	2,	50),
(4,'Pantalón',	'Levis',	2,	70),
(5,	'Sartén',	'T-fal',	3,	30),
(6,	'Toalla',	'Cannon',	3,	20),
(7,	'Pelota',	'Nike',	4,	15),
(8,	'Raqueta',	'Wilson',	4,	50),
(9,	'Muñeca',	'Barbie',	5,	25),
(10,'Carro',	'Hot Wheels',	5,	10);

create table Stocks(
Id	integer primary key not null,
Sucursal_Id	integer,
Producto_Id	integer,
Cantidad numeric
);

insert into Stocks (Id,Sucursal_Id,Producto_Id, Cantidad)
values
(1,	1,	1,	65),
(2,	1,	2,	71),
(3,	1,	3,	8),
(4,	1,	4,	42),
(5,	1,	5,	61),
(6,	1,	6,	14),
(7,	1,	7,	70),
(8,	1,	8,	66),
(9,	1,	9,	13),
(10,1,	10,	68),
(11,2,	1,	14),
(12,2,	2,	67),
(13,2,	3,	74),
(14,2,	4,	32),
(15,2,	5,	75),
(16,2,	6,	37),
(17,2,	7,	14),
(18,2,	8,	42),
(19,2,	9,	51),
(20,2,	10,	41),
(21,3,	1,	59),
(22,3,	2,	98),
(23,3,	3,	52),
(24,3,	4,	85),
(25,3,	5,	31),
(26,3,	6,	17),
(27,3,	7,	13),
(28,3,	8,	18),
(29,3,	9,	76),
(30,3,	10,	1);


create table Sucursales (
id	integer primary key not null,
nombre	text,
direccion text
);

insert into Sucursales (id,nombre,direccion)
values

(1,	'Sucursal A',	'Calle 1'),
(2,	'Sucursal B',	'Calle 2'),
(3,	'Sucursal C',	'Calle 3');


SELECT c.nombre AS categoria, AVG(p.precio_unitario) AS precio_promedio
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;


SELECT c.nombre AS categoria, SUM(s.cantidad) AS cantidad_total
FROM stocks s
INNER JOIN productos p ON s.producto_id = p.id
INNER JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;

SELECT s.nombre AS sucursal, SUM(o.total) AS total_ventas
FROM Órdenes o
INNER JOIN sucursales s ON o.sucursal_id = s.id
GROUP BY s.nombre;

SELECT c.nombre AS cliente, SUM(o.total) AS total_compras
FROM clientes c
INNER JOIN Órdenes o ON c.id = o.cliente_id
GROUP BY c.nombre
ORDER BY total_compras DESC
LIMIT 1;
