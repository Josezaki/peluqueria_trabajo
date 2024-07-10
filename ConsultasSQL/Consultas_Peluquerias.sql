-- a) horario con más citas durante el día por peluquería, identificando la comuna 
select hora, contador_citas, id_peluqueria
from(
    select  h.hora as hora, count(c.id_cita) as contador_citas, p.id as id_peluqueria,
            rank() over(partition by p.id order by count(c.id_cita) desc) as rn
    from analisis.horarios h
    inner join analisis.cita c on c.id_horario=h.id 
    inner join analisis.peluqueria p on p.id =c.id_peluqueria 
    group by h.hora,p.id
) as sb
where rn = 1;

-- b) lista de clientes que gastan más dinero por peluquería, indicando comuna del cliente y de peluquería, además de cuanto gasto 
select gastado, rut_cliente, comuna_cliente, nombre_peluqueria, comuna_peluqueria
from(
    select sum(gastado) as gastado, rut_cliente, comuna_cliente, nombre_peluqueria, comuna_peluqueria,
            rank() over(partition by id_peluqueria order by sum(gastado) desc) as rnk
    from(
        select sum(v.precio_producto * v.cantidad) as gastado, v.id_cliente as rut_cliente, c.nombre as comuna_cliente, p.nombre as nombre_peluqueria, c2.nombre as comuna_peluqueria, p.id as id_peluqueria
        from analisis.venta v
        inner join analisis.comuna c on v.id_comuna_cliente  = c.id
        inner join analisis.comuna c2 on v.id_comuna_peluqueria = c2.id
        inner join analisis.peluqueria p on v.id_peluqueria = p.id
        group by c.id, c2.id, v.id_cliente, p.id
        union all
        select distinct sum(c.precio_servicio + coalesce(c.precio_producto + c.cantidad, 0)) as gastado, c.id_cliente as rut_cliente, c2.nombre as comuna_cliente, p.nombre as nombre_peluqueria, c3.nombre as comuna_peluqueria, p.id as id_peluqueria
        from analisis.cita c
        inner join analisis.comuna c2 on c.id_comuna_cliente = c2.id
        inner join analisis.comuna c3 on c.id_comuna_peluqueria = c3.id
        inner join analisis.peluqueria p on c.id_peluqueria = p.id
        group by c.id_cita, c.id_cliente, c2.id, c3.id, p.id
    ) as sb
    group by rut_cliente, comuna_cliente, nombre_peluqueria, comuna_peluqueria, id_peluqueria
)
where rnk = 1;

-- c) lista de peluqueros que ha ganado más por mes durante el 2023, esto por peluquería 
select rut_empleado as rut_peluquero, sb.nombre_peluquero, sb.apellido_peluquero, sb.cantidad_pagada, sb.fecha_pago, p.nombre as nombre_peluqueria
from(
    select e.rut as rut_empleado, e.nombre as nombre_peluquero, e.apellido as apellido_peluquero, s.id_peluqueria as id_peluqueria, s.fecha_pago as fecha_pago, s.cantidad as cantidad_pagada,
            rank() over(partition by s.id_peluqueria, s.fecha_pago order by s.cantidad desc) as rnk
    from analisis.sueldo s 
    inner join analisis.empleados e on e.id = s.id_empleado
    where s.fecha_pago between '2023-01-01' and '2023-12-31'
) as sb
inner join analisis.peluqueria p on p.id = sb.id_peluqueria
where rnk = 1;

-- d) lista de clientes hombres que se cortan el pelo y la barba 
with Corte_Barba as (
    SELECT ci.id_cita
    from analisis.cita ci
    inner join analisis.cliente cl on ci.id_cliente = cl.id
    inner join analisis.servicio s on ci.id_servicio = s.id
    where cl.esHombre = true and s.nombre like '%Corte de Cabello%'
),
Corte_Cabello as (
    SELECT ci.id_cita
    from analisis.cita ci
    inner join analisis.cliente cl on ci.id_cliente = cl.id
    inner join analisis.servicio s on ci.id_servicio = s.id
    where cl.esHombre = true and s.nombre like '%Corte de Barba%'
)
select c2.nombre as nombre_cliente, c2.apellido as apellido_cliente, c2.eshombre
from analisis.cita c
inner join Corte_Barba cb on c.id_cita = cb.id_cita
inner join Corte_Cabello cc on c.id_cita = cc.id_cita
inner join analisis.cliente c2 on c.id_cliente = c2.id
where cc.id_cita = cb.id_cita;

-- e) lista de clientes que tiñen el pelo, indicando la comuna del cliente, la peluquería donde se atendió y el valor que pagó 
select distinct c.id as rut_cliente ,c.nombre as nombre_cliente ,c.apellido as apellido_cliente, cm.nombre as comuna_cliente, p.nombre as nombre_peluqueria, sum(ct.precio_servicio + ct.precio_producto * ct.cantidad) as precio, s.nombre as nombre_servicio
from analisis.cliente c
inner join analisis.cita ct on ct.id_cliente =c.id 
inner join analisis.peluqueria p on p.id = ct.id_peluqueria 
inner join analisis.servicio s on s.id = ct.id_servicio 
inner join analisis.comuna cm on ct.id_comuna_cliente = cm.id
where s.nombre like '%Tinte de Cabello%'
group by ct.id_cita, c.id, cm.id, p.id, s.id;

-- f) identificar el horario más concurrido por peluquería durante el 2019 y 2020, desagregados por mes 
select hora, contador, id_peluqueria, nombre_peluqueria, mes
from(
    select  h.hora as hora, p.id as id_peluqueria, p.nombre as nombre_peluqueria, count(c.id_cita) as contador, EXTRACT(month FROM c.fecha) as mes,
    rank() over(partition by p.id, EXTRACT(month FROM c.fecha) order by count(c.id_cita) desc) as rn
    from analisis.horarios h 
    inner join analisis.cita c on c.id_horario=h.id 
    inner join analisis.peluqueria p on p.id =c.id_peluqueria 
    where EXTRACT(YEAR FROM c.fecha) between 2019 and 2020
    group by h.hora,p.id,EXTRACT(month FROM c.fecha)
) as sb
where rn = 1;

-- g) identificar al cliente que ha tenido las citas más largas por peluquería, por mes
select cantidad_horas, id_cliente, c.nombre as nombre_cliente, c.apellido as apellido_cliente, p.nombre as nombre_peluqueria, mes
from(
    select sum(cantidad_horas) as cantidad_horas, id_cliente, id_peluqueria, mes,
            rank() over(partition by id_peluqueria, mes order by sum(cantidad_horas) desc) as rnk
    from(
        select c.id_servicio, c.cantidad_horas, c.id_cliente, c.id_peluqueria, EXTRACT(month FROM c.fecha) as mes
        from analisis.cita c
        group by c.id_cliente, c.id_peluqueria, mes, c.id_servicio, c.cantidad_horas
    ) as sb
    group by id_cliente, id_peluqueria, mes
) as subquery
inner join analisis.cliente c on subquery.id_cliente = c.id
inner join analisis.peluqueria p on subquery.id_peluqueria = p.id
where rnk = 1
order by mes;

-- h) identificar servicio más caro por peluquería 
select distinct id_servicio, id_peluqueria, precio_servicio, nombre_servicio, nombre_peluqueria
from(
    select sp.id_servicio, sp.id_peluqueria, sp.precio_servicio, p.nombre as nombre_peluqueria, s.nombre as nombre_servicio,
        rank() over(partition by sp.id_peluqueria order by sp.precio_servicio desc) as rnk
    from analisis.servicio_peluqueria sp
    inner join analisis.servicio s on sp.id_servicio = s.id
    inner join analisis.peluqueria p on p.id = sp.id_peluqueria
    ) as servicio
where rnk = 1;

-- i) identificar al peluquero que ha trabajado más por mes durante el 2019
select cantidad_trabajada, id_peluquero, fecha
from (
    select sum(cantidad_horas) as cantidad_trabajada, id_peluquero, fecha,
            rank() over(partition by fecha order by sum(cantidad_horas) desc) as rnk
    from(
        select c.id_servicio, c.cantidad_horas, c.id_peluquero, TO_CHAR(c.fecha, 'YYYY-MM') as fecha
        from analisis.cita c
        where TO_CHAR(c.fecha, 'YYYY') = '2019'
        group by c.id_peluquero, c.id_servicio, c.fecha, c.cantidad_horas
    )
    group by id_peluquero, fecha
)
where rnk = 1;

-- j) identificar lista clientes de totales por comuna, cantidad de peluquerías, cantidad de clientes residentes en la comuna
with clientes_que_viven_en_la_comuna_que_compraron as(
    select count(distinct id_cliente) cantidad_clientes_compraron_comuna_viven_en_comuna, id_comuna_peluqueria
    from(
        select id_cliente, id_comuna_peluqueria
        from analisis.cita c
        where id_comuna_cliente = id_comuna_peluqueria
        union all
        select id_cliente, id_comuna_peluqueria
        from analisis.venta v
        where id_comuna_cliente = id_comuna_peluqueria
    )
    group by id_comuna_peluqueria
)
select count(sb.id_cliente) as cantidad_clientes_compraron_comuna, count(distinct sb.id_peluqueria) as cantidad_peluquerias_en_comuna, coalesce(cq.cantidad_clientes_compraron_comuna_viven_en_comuna, 0) as cantidad_clientes_compraron_comuna_viven_en_comuna, sb.id_comuna_peluqueria as id_comuna, c.nombre as nombre_comuna
from(
    select distinct id_cliente, id_peluqueria, id_comuna_peluqueria, id_comuna_cliente
    from(
        select c.id_cliente, c.id_peluqueria, c.id_comuna_peluqueria, c.id_comuna_cliente
        from analisis.cita c
        union all
        select v.id_cliente, v.id_peluqueria, v.id_comuna_peluqueria, v.id_comuna_cliente
        from analisis.venta v 
    )
) as sb
left join clientes_que_viven_en_la_comuna_que_compraron cq on cq.id_comuna_peluqueria = sb.id_comuna_peluqueria
inner join analisis.comuna c on sb.id_comuna_peluqueria = c.id
group by sb.id_comuna_peluqueria, cq.cantidad_clientes_compraron_comuna_viven_en_comuna, c.id

-- FIN