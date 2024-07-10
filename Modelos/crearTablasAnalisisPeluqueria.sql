CREATE SCHEMA analisis;

ALTER SCHEMA analisis OWNER TO pg_database_owner;

COMMENT ON SCHEMA analisis IS 'analisis schema';

SET default_tablespace = '';

SET default_table_access_method = heap;

-- MODELO COPO DE NIEVE

-- Creamos las dimensiones

-- Tabla con las regiones
CREATE TABLE analisis.region(
    nombre VARCHAR,
    id int PRIMARY KEY
);

-- Tabla con las comunas
CREATE TABLE analisis.comuna(
    nombre VARCHAR,
    id int PRIMARY KEY,
    id_region INT,
    FOREIGN KEY(id_region) REFERENCES analisis.region(id)
);

-- Tabla de los clientes
CREATE TABLE analisis.cliente(
    nombre VARCHAR,
    apellido VARCHAR,
    id int PRIMARY KEY,
    esHombre BOOL,
    fono INT
);

-- Tabla de empleados
CREATE TABLE analisis.empleados(
    id INT primary key,
    direccion INT,
    nombre VARCHAR,
    apellido VARCHAR,
    rut int
);

-- Tabla de los peluqueros
CREATE TABLE analisis.peluquero(
    id int PRIMARY KEY
);

-- Tabla de los horarios
CREATE TABLE analisis.horarios(
    id int PRIMARY KEY,
    hora TIME
);

-- Tabla de los proveedores
CREATE TABLE analisis.proveedor(
    id int PRIMARY KEY,
    fono INT,
    direccion INT,
    nombre VARCHAR
);

-- Tabla de peluquerias
CREATE TABLE analisis.peluqueria(
    nombre VARCHAR,
    direccion INT,
    fono INT,
    id int PRIMARY KEY
);

create table analisis.servicio(
	nombre varchar,
	id int primary key
);

-- Creamos tablas sobre la cual haremos análisis

-- Tabla que almacena todas los servicios por cita hechas en una peluqueria
create table analisis.cita(
	fecha date,
	id_cliente int,
	id_comuna_cliente int,
	id_peluqueria int,
	id_comuna_peluqueria int,
	id_peluquero int,
	id_horario int,
	id_cita int,
	cantidad int,
	precio_producto int,
	cantidad_horas int,
	id_producto int,
	precio_servicio int,
	id_servicio int,
	foreign key(id_servicio) references analisis.servicio(id),
    FOREIGN KEY(id_cliente) REFERENCES analisis.cliente(id),
    FOREIGN KEY(id_comuna_cliente) REFERENCES analisis.comuna(id),
    FOREIGN KEY(id_peluqueria) REFERENCES analisis.peluqueria(id),
    FOREIGN KEY(id_comuna_peluqueria) REFERENCES analisis.comuna(id),
    FOREIGN KEY(id_horario) REFERENCES analisis.horarios(id)
);

-- Tabla que almacena todas los productos por venta
create table analisis.venta(
	fecha date,
	cantidad int,
	precio_producto int,
	id_producto int,
	id_cliente int,
	id_comuna_cliente int,
	id_peluqueria int,
	id_comuna_peluqueria int,
	id_venta int,
    FOREIGN KEY(id_cliente) REFERENCES analisis.cliente(id),
    FOREIGN KEY(id_comuna_cliente) REFERENCES analisis.comuna(id),
    FOREIGN KEY(id_peluqueria) REFERENCES analisis.peluqueria(id),
    FOREIGN KEY(id_comuna_peluqueria) REFERENCES analisis.comuna(id)
);

-- Tabla que almacena todos pagos realizados a empleados
CREATE TABLE analisis.sueldo(
	id SERIAL primary key,
    fecha_pago DATE,
    cantidad INT,
    id_empleado INT,
    id_comuna_empleado INT,
    id_comuna_peluqueria INT,
    id_peluquero INT, -- nulo cuando el empleado no es peluquero
    id_peluqueria INT,
    FOREIGN KEY(id_empleado) REFERENCES analisis.empleados(id),
    FOREIGN KEY(id_comuna_empleado) REFERENCES analisis.comuna(id),
    FOREIGN KEY(id_comuna_peluqueria) REFERENCES analisis.comuna(id),
    FOREIGN KEY(id_peluquero) REFERENCES analisis.peluquero(id),
    FOREIGN KEY(id_peluqueria) REFERENCES analisis.peluqueria(id)
);

-- Tabla que almacena todos los productos comprados por peluqueria
CREATE TABLE analisis.prod_pel_prov(
	id serial primary key,
    fecha_compra DATE,
    cantidad INT,
    precio_compra int,
    id_producto INT,
    id_peluqueria INT,
    id_proveedor INT,
    FOREIGN KEY(id_peluqueria) REFERENCES analisis.peluqueria(id),
    FOREIGN KEY(id_proveedor) REFERENCES analisis.proveedor(id)
);

create table analisis.servicio_peluqueria(
	id_peluqueria int,
	id_producto int,
	id_servicio int,
	precio_servicio int,
	precio_producto int,
	cantidad_producto int,
	foreign key(id_peluqueria) references analisis.peluqueria(id)
);