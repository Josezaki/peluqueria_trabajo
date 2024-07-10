CREATE SCHEMA transaccional;

ALTER SCHEMA transaccional OWNER TO pg_database_owner;

COMMENT ON SCHEMA transaccional IS 'standard transaccional schema';

SET default_tablespace = '';

SET default_table_access_method = heap;

CREATE TABLE transaccional.region(
    nombre VARCHAR,
    id SERIAL PRIMARY KEY
);

comment on table transaccional.region is 'regiones del país de la empresa';
comment on column transaccional.region.nombre is 'nombre de la region';
comment on column transaccional.region.id is 'id de la region';

CREATE TABLE transaccional.comuna(
    nombre VARCHAR,
    id SERIAL PRIMARY KEY,
    id_region INT,
    FOREIGN KEY(id_region) REFERENCES transaccional.region(id)
);

comment on table transaccional.comuna is 'comunas de una region';
comment on column transaccional.comuna.nombre is 'nombre de la comuna';
comment on column transaccional.comuna.id is 'id de la comuna';
comment on column transaccional.comuna.id_region is 'id de la region a la que pertenece';

CREATE TABLE transaccional.proveedor(
    id SERIAL PRIMARY KEY,
    fono INT,
    direccion INT,
    nombre VARCHAR,
    id_comuna_casa_matriz INT,
    FOREIGN KEY(id_comuna_casa_matriz) REFERENCES transaccional.comuna(id)
);

comment on table transaccional.proveedor is 'proveedor de uno o varios productos';
comment on column transaccional.proveedor.nombre is 'nombre del proveedor';
comment on column transaccional.proveedor.fono is 'fono de contacto del proveedor';
comment on column transaccional.proveedor.id_comuna_casa_matriz is 'id de la comuna donde se ubica la cada matriz del proveedor';
comment on column transaccional.proveedor.direccion is 'direccion del proveedor';

CREATE TABLE transaccional.productos(
    id SERIAL PRIMARY KEY,
    precio_compra INT,
    precio_venta INT,
    id_proveedor INT,
    nombre varchar,
    FOREIGN KEY(id_proveedor) REFERENCES transaccional.proveedor(id)
);

comment on table transaccional.productos is 'Productos totales que maneja la empresa';
comment on column transaccional.productos.id is 'Id del producto';
comment on column transaccional.productos.precio_compra is 'Precio al que el producto se compra al proveedor';
comment on column transaccional.productos.precio_venta is 'Precio al que el producto se vende a los clientes';
comment on column transaccional.productos.id_proveedor is 'Id del proveedor al que se le compra el producto';
comment on column transaccional.productos.nombre is 'Nombre del producto';

CREATE TABLE transaccional.servicio(
    id SERIAL PRIMARY KEY,
    horas INT,
    precio_venta INT,
    nombre varchar
);

comment on table transaccional.servicio is 'Servicios totales que maneja la empresa';
comment on column transaccional.servicio.id is 'Id del servicio';
comment on column transaccional.servicio.horas is 'Cantidad de horas que lleva realizar el servicio';
comment on column transaccional.servicio.precio_venta is 'Precio al que se vende el servicio a los clientes';
comment on column transaccional.servicio.nombre is 'Nombre del servicio';

CREATE TABLE transaccional.servicio_prod(
    id SERIAL PRIMARY KEY,
    id_servicio INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY(id_servicio) REFERENCES transaccional.servicio(id),
    FOREIGN KEY(id_producto) REFERENCES transaccional.productos(id)
);

comment on table transaccional.servicio_prod is 'Todos los productos que necesita un servicio';
comment on column transaccional.servicio_prod.id is 'Id de la tabla servicio_prod';
comment on column transaccional.servicio_prod.id_servicio is 'Id del servicio que se relaciona con uno o más productos';
comment on column transaccional.servicio_prod.id_producto is 'Id del producto que utiliza el servicio';
comment on column transaccional.servicio_prod.cantidad is 'Cantidad de existencias que utiliza el servicio para ser llevado a cabo';

CREATE TABLE transaccional.peluqueria(
    nombre VARCHAR,
    direccion INT,
    fono INT,
    id SERIAL PRIMARY KEY,
    id_comuna INT,
    FOREIGN KEY(id_comuna) REFERENCES transaccional.comuna(id)
);

comment on table transaccional.peluqueria is 'Tabla de las peluquerias que tiene la empresa';
comment on column transaccional.peluqueria.id is 'Id de la peluqueria';
comment on column transaccional.peluqueria.nombre is 'Nombre de la peluqueria';
comment on column transaccional.peluqueria.direccion is 'Dirección de la peluqueria';
comment on column transaccional.peluqueria.fono is 'Fono de contacto de la peluqueria';
comment on column transaccional.peluqueria.id_comuna is 'Id de la comuna a la que pertenece la peluqueria';

CREATE TABLE transaccional.cliente(
    nombre VARCHAR,
    apellido VARCHAR,
    id SERIAL primary key,
    esHombre BOOL,
    id_comuna INT,
    fono INT,
    FOREIGN KEY(id_comuna) REFERENCES transaccional.comuna(id)
);

ALTER SEQUENCE transaccional.cliente_id_seq RESTART WITH 100000;

comment on table transaccional.cliente is 'Tabla de los clientes que compraron productos o citaron un servicio en la peluqueria';
comment on column transaccional.cliente.id is 'ID del cliente, representa su rut';
comment on column transaccional.cliente.nombre is 'Nombre del cliente';
comment on column transaccional.cliente.apellido is 'Apellido del cliente';
comment on column transaccional.cliente.eshombre is 'Indica si el cliente es hombre o mujer';
comment on column transaccional.cliente.id_comuna is 'Id de la comuna a la que pertenece el cliente';
comment on column transaccional.cliente.fono is 'Fono de contacto del cliente';

CREATE TABLE transaccional.empleados(
    rut INT,
    direccion INT,
    nombre VARCHAR,
    apellido VARCHAR,
    id SERIAL PRIMARY KEY,
    id_peluqueria INT,
    id_comuna INT,
    FOREIGN KEY(id_peluqueria) REFERENCES transaccional.peluqueria(id),
    FOREIGN KEY(id_comuna) REFERENCES transaccional.comuna(id)
);

comment on table transaccional.empleados is 'Empleados de una peluqueria';
comment on column transaccional.empleados.rut is 'Rut del empleado';
comment on column transaccional.empleados.direccion is 'Direccion del empleado';
comment on column transaccional.empleados.nombre is 'Nombre del empleado';
comment on column transaccional.empleados.apellido is 'Apellido del empleado';
comment on column transaccional.empleados.id_peluqueria is 'Id de la peluqueria en la que trabaja el empleado';
comment on column transaccional.empleados.id_comuna is 'Id de la comuna a la cual pertenece el empleado';

CREATE TABLE transaccional.peluquero(
    id SERIAL PRIMARY KEY,
    id_empleado INT,
    FOREIGN KEY(id_empleado) REFERENCES transaccional.empleados(id)
);

comment on table transaccional.peluquero is 'Empleados de una peluqueria que son peluqueros';
comment on column transaccional.peluquero.id_empleado is 'Su id de empleado';

CREATE TABLE transaccional.sueldo(
    id SERIAL PRIMARY KEY,
    id_empleado INT,
    cantidad INT,
    fecha_pago DATE,
    FOREIGN KEY(id_empleado) REFERENCES transaccional.empleados(id)
);

comment on table transaccional.sueldo is 'Tabla que guarda los Sueldos que reciben los empleados';
comment on column transaccional.sueldo.cantidad is 'Dinero pagado al empleado';
comment on column transaccional.sueldo.id_empleado is 'Id del empleado al que se pago';
comment on column transaccional.sueldo.fecha_pago is 'Fecha en la que se pago';

CREATE TABLE transaccional.horarios(
    id SERIAL PRIMARY KEY,
    hora TIME
);

comment on table transaccional.horarios is 'Tabla que guarda los horarios posibles para hacer una cita';
comment on column transaccional.horarios.hora is 'Horario posible';

CREATE TABLE transaccional.cita(
    id SERIAL PRIMARY KEY,
    fecha DATE,
    id_peluqueria INT,
    id_peluquero int,
    id_cliente INT,
    id_horario INT,
    foreign key(id_peluquero) references transaccional.peluquero(id),
    FOREIGN KEY(id_peluqueria) REFERENCES transaccional.peluqueria(id),
    FOREIGN KEY(id_cliente) REFERENCES transaccional.cliente(id),
    FOREIGN KEY(id_horario) REFERENCES transaccional.horarios(id)
);

comment on table transaccional.cita is 'Tabla que almacena todas las citas';
comment on column transaccional.cita.id is 'Id de la cita';
comment on column transaccional.cita.fecha is 'Fecha en de la cita';
comment on column transaccional.cita.id_peluqueria is 'Id de la peluqueria en que se hizo la cita';
comment on column transaccional.cita.id_peluquero is 'Id del peluquero que atendió la cita';
comment on column transaccional.cita.id_cliente is 'Id del cliente que realizo la cita';
comment on column transaccional.cita.id_horario is 'Id del horario para la cita';

CREATE TABLE transaccional.servicio_peluqueria(
    id SERIAL PRIMARY KEY,
    prec_dif FLOAT,
    id_peluqueria INT,
    id_servicio INT,
    FOREIGN KEY(id_peluqueria) REFERENCES transaccional.peluqueria(id),
    FOREIGN KEY(id_servicio) REFERENCES transaccional.servicio(id)
);

comment on table transaccional.servicio_peluqueria is 'Tabla que almacena todas los posibles servicios de una o más peluqueria';
comment on column transaccional.servicio_peluqueria.id is 'Id de la tabla servicio_peluqueria';
comment on column transaccional.servicio_peluqueria.prec_dif is 'Porcentaje diferenciado del precio variado por peluqueria';
comment on column transaccional.servicio_peluqueria.id_peluqueria is 'Id de la peluqueria que proporciona el servicio';
comment on column transaccional.servicio_peluqueria.id_servicio is 'Id del servicio';

CREATE TABLE transaccional.producto_peluqueria(
    id SERIAL PRIMARY KEY,
    stock INT,
    prec_dif FLOAT,
    id_peluqueria INT,
    id_producto INT,
    FOREIGN KEY(id_peluqueria) REFERENCES transaccional.peluqueria(id),
    FOREIGN KEY(id_producto) REFERENCES transaccional.productos(id)
);

comment on table transaccional.producto_peluqueria is 'Tabla que almacena todos los productos que vende una o más peluquerias';
comment on column transaccional.producto_peluqueria.id is 'Id de la tabla producto_peluqueria';
comment on column transaccional.producto_peluqueria.stock is 'Cantidad de productos que posee la peluqueria';
comment on column transaccional.producto_peluqueria.id_peluqueria is 'Id de la peluqueria que tiene existencias del producto';
comment on column transaccional.producto_peluqueria.id_producto is 'Id del producto del cual la peluqueria tiene existencias';

CREATE TABLE transaccional.detalle_servicio( -- podemos cambiarlo a detalle_cita? :3
    id SERIAL PRIMARY KEY,
    id_cita INT,
    id_servicio_peluqueria INT,
    FOREIGN KEY(id_cita) REFERENCES transaccional.cita(id),
    FOREIGN KEY(id_servicio_peluqueria) REFERENCES transaccional.servicio_peluqueria(id)
);

comment on table transaccional.detalle_servicio is 'Detalle de de los servicios de la cita';
comment on column transaccional.detalle_servicio.id is 'Id de la tabla producto_peluqueria';
comment on column transaccional.detalle_servicio.id_cita is 'Id de la cita asociada al detalle';
comment on column transaccional.detalle_servicio.id_servicio_peluqueria is 'Id del servicio disponible en la peluqueria que pidió el cliente';

CREATE TABLE transaccional.venta(
    id SERIAL PRIMARY KEY,
    fecha DATE,
    id_cliente INT,
    id_peluqueria INT,
    FOREIGN KEY(id_cliente) REFERENCES transaccional.cliente(id),
    FOREIGN KEY(id_peluqueria) REFERENCES transaccional.peluqueria(id)
);

comment on table transaccional.venta is 'Tabla que almacena t_odas las ventas realizadas en una peluqueria';
comment on column transaccional.venta.id is 'Id de la venta';
comment on column transaccional.venta.fecha is 'Fecha de la venta';
comment on column transaccional.venta.id_cliente is 'Id del cliente al que se le vendió';
comment on column transaccional.venta.id_peluqueria is 'Id de la venta';

CREATE TABLE transaccional.detalle_venta(
    id SERIAL PRIMARY KEY,
    cantidad INT,
    id_venta INT,
    id_producto_peluqueria INT,
    FOREIGN KEY(id_venta) REFERENCES transaccional.venta(id),
    FOREIGN KEY(id_producto_peluqueria) REFERENCES transaccional.producto_peluqueria(id)
);

comment on table transaccional.detalle_venta is 'Tabla que almacena el detalle de las ventas';
comment on column transaccional.detalle_venta.id is 'Id de la venta';
comment on column transaccional.detalle_venta.cantidad is 'Cantidad del producto que se vendió en una venta';
comment on column transaccional.detalle_venta.id_venta is 'Id de la venta';
comment on column transaccional.detalle_venta.id_producto_peluqueria is 'Id del producto existente en la peluqueria que se vendió';

CREATE TABLE transaccional.prod_pel_prov(
    id SERIAL PRIMARY KEY,
    fecha DATE,
    cantidad INT,
    id_producto_peluqueria INT,
    id_proveedor INT,
    FOREIGN KEY(id_producto_peluqueria) REFERENCES transaccional.producto_peluqueria(id),
    FOREIGN KEY(id_proveedor) REFERENCES transaccional.proveedor(id)
);

comment on table transaccional.prod_pel_prov is 'Tabla que almacena las compras realizadas por una peluqueria';
comment on column transaccional.prod_pel_prov.id is 'Id de la tabla prod_pel_prov';
comment on column transaccional.prod_pel_prov.fecha is 'Fecha en que se realizo la venta';
comment on column transaccional.prod_pel_prov.id_producto_peluqueria is 'Id del producto ubicado en la peluqueria que se compró';
comment on column transaccional.prod_pel_prov.id_proveedor is 'Id del proveedor';
