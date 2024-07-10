DO
$$
DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'analisis')
    LOOP
        EXECUTE 'TRUNCATE TABLE analisis.' || r.tablename || ' CASCADE';
    END LOOP;
END
$$;


insert into analisis.region(nombre, id)
select r.nombre, r.id 
from transaccional.region r;

insert into analisis.comuna(nombre, id, id_region)
select c.nombre, c.id, c.id_region 
from transaccional.comuna c;

insert into analisis.cliente(nombre, apellido, id, eshombre, fono)
select c.nombre, c.apellido, c.id, c.eshombre, c.fono
from transaccional.cliente c;

insert into analisis.empleados(id, rut, direccion, nombre, apellido)
select e.id, e.rut, e.direccion, e.nombre, e.apellido
from transaccional.empleados e;

insert into analisis.peluquero(id)
select p.id
from transaccional.peluquero p;

insert into analisis.horarios(id, hora)
select h.id, h.hora 
from transaccional.horarios h;

insert into analisis.proveedor(id, fono, direccion, nombre)
select p.id, p.fono, p.direccion, p.nombre
from transaccional.proveedor p;

insert into analisis.peluqueria(nombre, direccion, fono, id)
select p.nombre, p.direccion, p.fono, p.id
from transaccional.peluqueria p;

insert into analisis.servicio(nombre, id)
select s.nombre, s.id
from transaccional.servicio s;

-- Insertar en la tabla citas
insert into analisis.cita(fecha, id_cliente, id_comuna_cliente, id_peluqueria, id_comuna_peluqueria, id_peluquero, id_horario, id_cita, cantidad, precio_producto, cantidad_horas, id_producto, precio_servicio, id_servicio)
SELECT 
    c.fecha AS fecha,
    c2.id AS id_cliente,
    c2.id_comuna AS id_comuna_cliente,
    p.id AS id_peluqueria,
    p.id_comuna AS id_comuna_peluqueria,
    p2.id AS id_peluquero,
    c.id_horario AS id_horario,
    c.id AS id_cita,
    sp2.cantidad AS cantidad,
    p3.precio_venta * pp.prec_dif AS precio_producto,
    s.horas as cantidad_horas,
    p3.id as id_producto,
    s.precio_venta * sp.prec_dif as precio_servicio,
    s.id as id_servicio
FROM 
    transaccional.cita c
INNER JOIN 
    transaccional.detalle_servicio ds ON ds.id_cita = c.id
INNER JOIN 
    transaccional.peluquero p2 ON p2.id = c.id_peluquero
INNER JOIN 
    transaccional.cliente c2 ON c.id_cliente = c2.id
INNER JOIN 
    transaccional.peluqueria p ON c.id_peluqueria = p.id
INNER JOIN 
    transaccional.servicio_peluqueria sp ON sp.id = ds.id_servicio_peluqueria
INNER JOIN 
    transaccional.servicio s ON s.id = sp.id_servicio
LEFT JOIN 
    transaccional.servicio_prod sp2 ON s.id = sp2.id_servicio
LEFT JOIN
    transaccional.productos p3 ON sp2.id_producto = p3.id
LEFT JOIN 
    transaccional.producto_peluqueria pp ON p3.id = pp.id_producto AND pp.id_peluqueria = p.id;


-- Insertar en la tabla venta
insert into analisis.venta(fecha, cantidad, precio_producto, id_producto, id_cliente, id_comuna_cliente, id_peluqueria, id_comuna_peluqueria, id_venta)
select
	v.fecha as fecha,
	dv.cantidad as cantidad,
	p2.precio_venta * pp.prec_dif as precio_producto,
	p2.id as id_producto,
	c.id as id_cliente,
	c.id_comuna as id_comuna_cliente,
	p.id as id_peluqueria,
	p.id_comuna as id_comuna_peluqueria,
	v.id as id_venta
from transaccional.venta v
inner join transaccional.peluqueria p on v.id_peluqueria = p.id
inner join transaccional.cliente c on v.id_cliente = c.id
inner join transaccional.detalle_venta dv on v.id = dv.id_venta
inner join transaccional.producto_peluqueria pp on dv.id_producto_peluqueria = pp.id
inner join transaccional.productos p2 on pp.id_producto = p2.id;

-- Insertar en la tabla sueldo
insert into analisis.sueldo(fecha_pago, cantidad, id_empleado,
							id_comuna_empleado, id_comuna_peluqueria,
							id_peluquero, id_peluqueria)
select s.fecha_pago, s.cantidad, e.id, e.id_comuna, p.id_comuna, p2.id, p.id
from transaccional.sueldo s
inner join transaccional.empleados e on s.id_empleado = e.id
inner join transaccional.peluqueria p on p.id = e.id_peluqueria
inner join transaccional.peluquero p2 on e.id = p2.id_empleado;

-- Insertar en la tabla prod_pel_prov
insert into analisis.prod_pel_prov(fecha_compra, cantidad, id_producto, id_peluqueria, id_proveedor)
select 
	ppp.fecha as fecha_compra, 
	ppp.cantidad, 
	pp.id_producto, 
	pp.id_peluqueria, 
	ppp.id_proveedor
from transaccional.prod_pel_prov ppp
inner join transaccional.producto_peluqueria pp on ppp.id_producto_peluqueria = pp.id;

-- Insertar en la tabla servicio_peluqueria
INSERT INTO analisis.servicio_peluqueria(id_peluqueria, id_producto, id_servicio, precio_servicio, precio_producto, cantidad_producto)
SELECT
    p.id AS id_peluqueria,
    p2.id AS id_producto,
    s.id AS id_servicio,
    s.precio_venta * sp.prec_dif AS precio_servicio,
    COALESCE(p2.precio_venta, 0) * COALESCE(pp.prec_dif, 0) AS precio_producto,
    COALESCE(sp2.cantidad, 0) AS cantidad_producto
FROM transaccional.servicio_peluqueria sp
INNER JOIN transaccional.servicio s ON sp.id_servicio = s.id
INNER JOIN transaccional.peluqueria p ON sp.id_peluqueria = p.id
LEFT JOIN transaccional.servicio_prod sp2 ON s.id = sp2.id_servicio
LEFT JOIN transaccional.productos p2 ON sp2.id_producto = p2.id
LEFT JOIN transaccional.producto_peluqueria pp ON pp.id_producto = p2.id;
