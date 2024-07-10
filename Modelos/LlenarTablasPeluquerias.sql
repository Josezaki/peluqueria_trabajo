-- Inserción sobre la tabla region
INSERT INTO transaccional.region (nombre) VALUES 
('Arica y Parinacota'),
('Tarapacá'),
('Antofagasta'),
('Atacama'),
('Coquimbo'),
('Valparaíso'),
('Región del Libertador Gral. Bernardo O’Higgins'),
('Región del Maule'),
('Región de Ñuble'),
('Región del Biobío'),
('Región de la Araucanía'),
('Región de Los Ríos'),
('Región de Los Lagos'),
('Región Aisén del Gral. Carlos Ibáñez del Campo'),
('Región de Magallanes y de la Antártica Chilena'),
('Región Metropolitana de Santiago');

-- Inserción sobre la tabla comuna para "Arica y Parinacota"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Arica', 1),
('Camarones', 1),
('Putre', 1),
('General Lagos', 1);

-- Inserción sobre la tabla comuna para "Tarapacá"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Iquique', 2),
('Alto Hospicio', 2),
('Pozo Almonte', 2),
('Camiña', 2),
('Colchane', 2),
('Huara', 2),
('Pica', 2);

-- Inserción sobre la tabla comuna para "Antofagasta"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Antofagasta', 3),
('Mejillones', 3),
('Sierra Gorda', 3),
('Taltal', 3),
('Calama', 3),
('Ollagüe', 3),
('San Pedro de Atacama', 3),
('Tocopilla', 3),
('María Elena', 3);

-- Inserción sobre la tabla comuna para "Atacama"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Copiapó', 4),
('Caldera', 4),
('Tierra Amarilla', 4),
('Chañaral', 4),
('Diego de Almagro', 4),
('Vallenar', 4),
('Alto del Carmen', 4),
('Freirina', 4),
('Huasco', 4);

-- Inserción sobre la tabla comuna para "Coquimbo"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('La Serena', 5),
('Coquimbo', 5),
('Andacollo', 5),
('La Higuera', 5),
('Paiguano', 5),
('Vicuña', 5),
('Illapel', 5),
('Canela', 5),
('Los Vilos', 5),
('Salamanca', 5),
('Ovalle', 5),
('Combarbalá', 5),
('Monte Patria', 5),
('Punitaqui', 5),
('Río Hurtado', 5);

-- Inserción sobre la tabla comuna para "Valparaíso"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Valparaíso', 6),
('Casablanca', 6),
('Concón', 6),
('Juan Fernández', 6),
('Puchuncaví', 6),
('Quintero', 6),
('Viña del Mar', 6),
('Isla de Pascua', 6),
('Los Andes', 6),
('Calle Larga', 6),
('Rinconada', 6),
('San Esteban', 6),
('La Ligua', 6),
('Cabildo', 6),
('Papudo', 6),
('Petorca', 6),
('Zapallar', 6),
('Quillota', 6),
('Calera', 6),
('Hijuelas', 6),
('La Cruz', 6),
('Nogales', 6),
('San Antonio', 6),
('Algarrobo', 6),
('Cartagena', 6),
('El Quisco', 6),
('El Tabo', 6),
('Santo Domingo', 6),
('San Felipe', 6),
('Catemu', 6),
('Llaillay', 6),
('Panquehue', 6),
('Putaendo', 6),
('Santa María', 6),
('Quilpué', 6),
('Limache', 6),
('Olmué', 6),
('Villa Alemana', 6);

-- Inserción sobre la tabla comuna para "Región del Libertador Gral. Bernardo O’Higgins"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Rancagua', 7),
('Codegua', 7),
('Coinco', 7),
('Coltauco', 7),
('Doñihue', 7),
('Graneros', 7),
('Las Cabras', 7),
('Machalí', 7),
('Malloa', 7),
('Mostazal', 7),
('Olivar', 7),
('Peumo', 7),
('Pichidegua', 7),
('Quinta de Tilcoco', 7),
('Rengo', 7),
('Requínoa', 7),
('San Vicente', 7),
('Pichilemu', 7),
('La Estrella', 7),
('Litueche', 7),
('Marchihue', 7),
('Navidad', 7),
('Paredones', 7),
('San Fernando', 7),
('Chépica', 7),
('Chimbarongo', 7),
('Lolol', 7),
('Nancagua', 7),
('Palmilla', 7),
('Peralillo', 7),
('Placilla', 7),
('Pumanque', 7),
('Santa Cruz', 7);

-- Inserción sobre la tabla comuna para "Región del Maule"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Talca', 8),
('Constitución', 8),
('Curepto', 8),
('Empedrado', 8),
('Maule', 8),
('Pelarco', 8),
('Pencahue', 8),
('Río Claro', 8),
('San Clemente', 8),
('San Rafael', 8),
('Cauquenes', 8),
('Chanco', 8),
('Pelluhue', 8),
('Curicó', 8),
('Hualañé', 8),
('Licantén', 8),
('Molina', 8),
('Rauco', 8),
('Romeral', 8),
('Sagrada Familia', 8),
('Teno', 8),
('Vichuquén', 8),
('Linares', 8),
('Colbún', 8),
('Longaví', 8),
('Parral', 8),
('Retiro', 8),
('San Javier', 8),
('Villa Alegre', 8),
('Yerbas Buenas', 8);

-- Inserción sobre la tabla comuna para "Región de Ñuble"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Cobquecura', 9),
('Coelemu', 9),
('Ninhue', 9),
('Portezuelo', 9),
('Quirihue', 9),
('Ránquil', 9),
('Treguaco', 9),
('Bulnes', 9),
('Chillán Viejo', 9),
('Chillán', 9),
('El Carmen', 9),
('Pemuco', 9),
('Pinto', 9),
('Quillón', 9),
('San Ignacio', 9),
('Yungay', 9),
('Coihueco', 9),
('Ñiquén', 9),
('San Carlos', 9),
('San Fabián', 9),
('San Nicolás', 9);

-- Inserción sobre la tabla comuna para "Región del Biobío"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Concepción', 10),
('Coronel', 10),
('Chiguayante', 10),
('Florida', 10),
('Hualqui', 10),
('Lota', 10),
('Penco', 10),
('San Pedro de la Paz', 10),
('Santa Juana', 10),
('Talcahuano', 10),
('Tomé', 10),
('Hualpén', 10),
('Lebu', 10),
('Arauco', 10),
('Cañete', 10),
('Contulmo', 10),
('Curanilahue', 10),
('Los Álamos', 10),
('Tirúa', 10),
('Los Ángeles', 10),
('Antuco', 10),
('Cabrero', 10),
('Laja', 10),
('Mulchén', 10),
('Nacimiento', 10),
('Negrete', 10),
('Quilaco', 10),
('Quilleco', 10),
('San Rosendo', 10),
('Santa Bárbara', 10),
('Tucapel', 10),
('Yumbel', 10),
('Alto Biobío', 10);

-- Inserción sobre la tabla comuna para "Región de la Araucanía"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Temuco', 11),
('Carahue', 11),
('Cunco', 11),
('Curarrehue', 11),
('Freire', 11),
('Galvarino', 11),
('Gorbea', 11),
('Lautaro', 11),
('Loncoche', 11),
('Melipeuco', 11),
('Nueva Imperial', 11),
('Padre las Casas', 11),
('Perquenco', 11),
('Pitrufquén', 11),
('Pucón', 11),
('Saavedra', 11),
('Teodoro Schmidt', 11),
('Toltén', 11),
('Vilcún', 11),
('Villarrica', 11),
('Cholchol', 11),
('Angol', 11),
('Collipulli', 11),
('Curacautín', 11),
('Ercilla', 11),
('Lonquimay', 11),
('Los Sauces', 11),
('Lumaco', 11),
('Purén', 11),
('Renaico', 11),
('Traiguén', 11),
('Victoria', 11);

-- Inserción sobre la tabla comuna para "Región de Los Ríos"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Valdivia', 12),
('Corral', 12),
('Lanco', 12),
('Los Lagos', 12),
('Máfil', 12),
('Mariquina', 12),
('Paillaco', 12),
('Panguipulli', 12),
('La Unión', 12),
('Futrono', 12),
('Lago Ranco', 12),
('Río Bueno', 12);

-- Inserción sobre la tabla comuna para "Región de Los Lagos"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Puerto Montt', 13),
('Calbuco', 13),
('Cochamó', 13),
('Fresia', 13),
('Frutillar', 13),
('Los Muermos', 13),
('Llanquihue', 13),
('Maullín', 13),
('Puerto Varas', 13),
('Castro', 13),
('Ancud', 13),
('Chonchi', 13),
('Curaco de Vélez', 13),
('Dalcahue', 13),
('Puqueldón', 13),
('Queilén', 13),
('Quellón', 13),
('Quemchi', 13),
('Quinchao', 13),
('Osorno', 13),
('Puerto Octay', 13),
('Purranque', 13),
('Puyehue', 13),
('Río Negro', 13),
('San Juan de la Costa', 13),
('San Pablo', 13),
('Chaitén', 13),
('Futaleufú', 13),
('Hualaihué', 13),
('Palena', 13);

-- Inserción sobre la tabla comuna para "Región Aisén del Gral. Carlos Ibáñez del Campo"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Coihaique', 14),
('Lago Verde', 14),
('Aisén', 14),
('Cisnes', 14),
('Guaitecas', 14),
('Cochrane', 14),
('O’Higgins', 14),
('Tortel', 14),
('Chile Chico', 14),
('Río Ibáñez', 14);

-- Inserción sobre la tabla comuna para "Región de Magallanes y de la Antártica Chilena"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Punta Arenas', 15),
('Laguna Blanca', 15),
('Río Verde', 15),
('San Gregorio', 15),
('Cabo de Hornos (Ex Navarino)', 15),
('Antártica', 15),
('Porvenir', 15),
('Primavera', 15),
('Timaukel', 15),
('Natales', 15),
('Torres del Paine', 15);

-- Inserción sobre la tabla comuna para "Región Metropolitana de Santiago"
INSERT INTO transaccional.comuna (nombre, id_region) VALUES 
('Cerrillos', 16),
('Cerro Navia', 16),
('Conchalí', 16),
('El Bosque', 16),
('Estación Central', 16),
('Huechuraba', 16),
('Independencia', 16),
('La Cisterna', 16),
('La Florida', 16),
('La Granja', 16),
('La Pintana', 16),
('La Reina', 16),
('Las Condes', 16),
('Lo Barnechea', 16),
('Lo Espejo', 16),
('Lo Prado', 16),
('Macul', 16),
('Maipú', 16),
('Ñuñoa', 16),
('Pedro Aguirre Cerda', 16),
('Peñalolén', 16),
('Providencia', 16),
('Pudahuel', 16),
('Quilicura', 16),
('Quinta Normal', 16),
('Recoleta', 16),
('Renca', 16),
('Santiago', 16),
('San Joaquín', 16),
('San Miguel', 16),
('San Ramón', 16),
('Vitacura', 16),
('Puente Alto', 16),
('Pirque', 16),
('San José de Maipo', 16),
('Colina', 16),
('Lampa', 16),
('Tiltil', 16),
('San Bernardo', 16),
('Buin', 16),
('Calera de Tango', 16),
('Paine', 16),
('Melipilla', 16),
('Alhué', 16),
('Curacaví', 16),
('María Pinto', 16),
('San Pedro', 16),
('Talagante', 16),
('El Monte', 16),
('Isla de Maipo', 16),
('Padre Hurtado', 16),
('Peñaflor', 16);


-- Inserción sobre la tabla proveedor
INSERT INTO transaccional.proveedor (nombre, fono, direccion, id_comuna_casa_matriz) VALUES 
('Proveedor ABC', 123456789, 1, 1),
('Proveedor XYZ', 123456789, 2, 2),
('Suministros Globales', 123456789, 3, 3),
('Productos y Servicios Ltda.', 123456789, 4, 4),
('Distribuidora Los Andes', 123456789, 5, 5),
('Comercializadora del Norte', 123456789, 6, 6),
('Insumos del Sur', 123456789, 7, 1),
('Proveedor Universal', 123456789, 8, 2),
('Abastecimientos Chile', 123456789, 9, 3),
('Suministros Industriales', 123456789, 10, 4),
('Proveedor del Pacífico', 123456789, 11, 5),
('Distribuidora Central', 123456789, 12, 6),
('Servicios y Suministros Ltda.', 123456789, 13, 1),
('Proveedor Integral', 123456789, 14, 2),
('Insumos y Equipos', 123456789, 15, 3),
('Proveedor Express', 123456789, 16, 4),
('Abastecimientos Integrales', 123456789, 17, 5),
('Suministros Rápidos', 123456789, 18, 6),
('Proveedor del Valle', 123456789, 19, 1),
('Distribuciones Nacionales', 123456789, 20, 2),
('Proveedor de Calidad', 123456789, 21, 3),
('Insumos Técnicos', 123456789, 22, 4),
('Proveedor de Confianza', 123456789, 23, 5),
('Suministros Eficientes', 123456789, 24, 6),
('Abastecimientos Seguros', 123456789, 25, 1),
('Proveedor del Futuro', 123456789, 26, 2),
('Proveedor Seguro', 123456789, 27, 3),
('Proveedor Ecológico', 123456789, 28, 4),
('Suministros Inteligentes', 123456789, 29, 5),
('Abastecimientos y Logística', 123456789, 30, 6);

-- Inserción sobre la tabla Productos
insert into transaccional.productos (nombre, precio_compra) values
('Champú Hidratante', (random() * 20000 + 15000)::int),
('Acondicionador Reparador', (random() * 20000 + 15000)::int),
('Mascarilla Capilar', (random() * 20000 + 15000)::int),
('Sérum para el Cabello', (random() * 20000 + 15000)::int),
('Aceite de Argán', (random() * 20000 + 15000)::int),
('Gel Fijador', (random() * 20000 + 15000)::int),
('Espuma Voluminizadora', (random() * 20000 + 15000)::int),
('Laca para el Cabello', (random() * 20000 + 15000)::int),
('Cera para el Cabello', (random() * 20000 + 15000)::int),
('Crema para Peinar', (random() * 20000 + 15000)::int),
('Protector Térmico', (random() * 20000 + 15000)::int),
('Spray de Brillo', (random() * 20000 + 15000)::int),
('Tinte para el Cabello', (random() * 20000 + 15000)::int),
('Decolorante', (random() * 20000 + 15000)::int),
('Champú Anticaspa', (random() * 20000 + 15000)::int),
('Acondicionador Sin Enjuague', (random() * 20000 + 15000)::int),
('Spray para Raíces', (random() * 20000 + 15000)::int),
('Gel Antifrizz', (random() * 20000 + 15000)::int),
('Pomada para el Cabello', (random() * 20000 + 15000)::int),
('Spray Texturizante', (random() * 20000 + 15000)::int),
('Cera Matificante', (random() * 20000 + 15000)::int),
('Mousse para Rizos', (random() * 20000 + 15000)::int),
('Crema para Rizos', (random() * 20000 + 15000)::int),
('Gel para Rizos', (random() * 20000 + 15000)::int),
('Bálsamo para el Cabello', (random() * 20000 + 15000)::int),
('Serum Anticaída', (random() * 20000 + 15000)::int),
('Champú Anticaída', (random() * 20000 + 15000)::int),
('Acondicionador Voluminizador', (random() * 20000 + 15000)::int),
('Spray de Sal Marina', (random() * 20000 + 15000)::int),
('Gel Modelador', (random() * 20000 + 15000)::int),
('Tónico Capilar', (random() * 20000 + 15000)::int),
('Aceite de Coco', (random() * 20000 + 15000)::int),
('Gelatina Capilar', (random() * 20000 + 15000)::int),
('Crema Alisadora', (random() * 20000 + 15000)::int),
('Tratamiento de Keratina', (random() * 20000 + 15000)::int),
('Champú para Cabello Graso', (random() * 20000 + 15000)::int),
('Champú para Cabello Seco', (random() * 20000 + 15000)::int),
('Champú para Cabello Teñido', (random() * 20000 + 15000)::int),
('Acondicionador para Cabello Graso', (random() * 20000 + 15000)::int),
('Acondicionador para Cabello Seco', (random() * 20000 + 15000)::int),
('Mousse para Rizos', (random() * 20000 + 15000)::int),
('Crema para Rizos', (random() * 20000 + 15000)::int),
('Gel para Rizos', (random() * 20000 + 15000)::int),
('Bálsamo para el Cabello', (random() * 20000 + 15000)::int),
('Serum Anticaída', (random() * 20000 + 15000)::int),
('Champú Anticaída', (random() * 20000 + 15000)::int),
('Acondicionador Voluminizador', (random() * 20000 + 15000)::int),
('Spray de Sal Marina', (random() * 20000 + 15000)::int),
('Gel Modelador', (random() * 20000 + 15000)::int),
('Tónico Capilar', (random() * 20000 + 15000)::int),
('Aceite de Coco', (random() * 20000 + 15000)::int),
('Gelatina Capilar', (random() * 20000 + 15000)::int),
('Crema Alisadora', (random() * 20000 + 15000)::int),
('Tratamiento de Keratina', (random() * 20000 + 15000)::int),
('Champú para Cabello Graso', (random() * 20000 + 15000)::int),
('Champú para Cabello Seco', (random() * 20000 + 15000)::int),
('Champú para Cabello Teñido', (random() * 20000 + 15000)::int),
('Acondicionador para Cabello Graso', (random() * 20000 + 15000)::int),
('Acondicionador para Cabello Seco', (random() * 20000 + 15000)::int),
('Acondicionador para Cabello Teñido', (random() * 20000 + 15000)::int),
('Peine de Dientes Anchos', (random() * 20000 + 15000)::int),
('Cepillo Desenredante', (random() * 20000 + 15000)::int),
('Tijeras de Corte', (random() * 20000 + 15000)::int),
('Tijeras de Entresacar', (random() * 20000 + 15000)::int),
('Máquina de Corte', (random() * 20000 + 15000)::int),
('Máquina de Afeitar', (random() * 20000 + 15000)::int),
('Secador de Cabello', (random() * 20000 + 15000)::int),
('Plancha de Cabello', (random() * 20000 + 15000)::int),
('Rizador de Cabello', (random() * 20000 + 15000)::int),
('Difusor para Secador', (random() * 20000 + 15000)::int),
('Guantes de Tinte', (random() * 20000 + 15000)::int),
('Batidor de Tinte', (random() * 20000 + 15000)::int),
('Pincel para Tinte', (random() * 20000 + 15000)::int),
('Capas para Corte', (random() * 20000 + 15000)::int),
('Espejo de Mano', (random() * 20000 + 15000)::int),
('Toallas para Peluquería', (random() * 20000 + 15000)::int),
('Capa Protectora', (random() * 20000 + 15000)::int),
('Clips para el Cabello', (random() * 20000 + 15000)::int),
('Horquillas', (random() * 20000 + 15000)::int),
('Gomas para el Cabello', (random() * 20000 + 15000)::int),
('Coletas Invisibles', (random() * 20000 + 15000)::int),
('Pinzas para el Cabello', (random() * 20000 + 15000)::int),
('Diademas', (random() * 20000 + 15000)::int),
('Bandas Elásticas', (random() * 20000 + 15000)::int),
('Spray Fijador de Peinado', (random() * 20000 + 15000)::int),
('Polvo Voluminizador', (random() * 20000 + 15000)::int),
('Serum para Puntas Abiertas', (random() * 20000 + 15000)::int),
('Champú para Niños', (random() * 20000 + 15000)::int),
('Acondicionador para Niños', (random() * 20000 + 15000)::int),
('Gel para Niños', (random() * 20000 + 15000)::int),
('Mousse para Niños', (random() * 20000 + 15000)::int),
('Spray Desenredante', (random() * 20000 + 15000)::int),
('Tinte Vegano', (random() * 20000 + 15000)::int),
('Acondicionador Vegano', (random() * 20000 + 15000)::int),
('Champú Vegano', (random() * 20000 + 15000)::int),
('Mascarilla Vegana', (random() * 20000 + 15000)::int),
('Serum Vegano', (random() * 20000 + 15000)::int),
('Tinte sin Amoníaco', (random() * 20000 + 15000)::int),
('Champú sin Sulfatos', (random() * 20000 + 15000)::int),
('Acondicionador sin Sulfatos', (random() * 20000 + 15000)::int),
('Mascarilla sin Sulfatos', (random() * 20000 + 15000)::int),
('Serum sin Sulfatos', (random() * 20000 + 15000)::int),
('Tinte Permanente', (random() * 20000 + 15000)::int),
('Tinte Semi-Permanente', (random() * 20000 + 15000)::int),
('Tinte Temporal', (random() * 20000 + 15000)::int),
('Champú para Barba', (random() * 20000 + 15000)::int),
('Acondicionador para Barba', (random() * 20000 + 15000)::int),
('Aceite para Barba', (random() * 20000 + 15000)::int),
('Bálsamo para Barba', (random() * 20000 + 15000)::int),
('Cepillo para Barba', (random() * 20000 + 15000)::int),
('Tijeras para Barba', (random() * 20000 + 15000)::int),
('Máquina de Afeitar para Barba', (random() * 20000 + 15000)::int),
('Gel de Afeitar', (random() * 20000 + 15000)::int),
('Espuma de Afeitar', (random() * 20000 + 15000)::int),
('10N RUBIO PLATINADO NATURAL. TINTURA PERMANANTE ORGÁNICA', 14500::int),
('10XL RUBIO EXTRA CLARO. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('1N NEGRO NATURAL. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('2N CASTAÑO EXTRA OSCURO NATURAL. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('3N CASTAÑO OSCURO NATURAL. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('4C CASTAÑO CENIZA. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('4CH CHOCOLATE. TINTURA PERMANENTE ORGÁNICA', 14500::int),
('4M CASTAÑO CAOBA. TINTURA PERMANENTE ORGÁNICA', 14500::int);

-- añadimos forean_keys y precios de venta a la tabla
with random_proveedores as (
	select id, row_number() over () as rn
	from transaccional.proveedor p 
),
random_products as (
	select id, precio_venta, row_number() over () as rn
	from(
		select id, (precio_compra * (random() * 0.4 + 1))::int as precio_venta
		from transaccional.productos p
		order by random()
	) as sb
)
update transaccional.productos
set id_proveedor = re.id, precio_venta = rp.precio_venta
from random_proveedores re
join random_products rp on rp.rn % (select count(*) from transaccional.proveedor) = re.rn-1
where transaccional.productos.id = rp.id;

-- Insertamos en la tabla servicio
INSERT INTO transaccional.servicio (nombre, horas, precio_venta)
VALUES
('Corte de Cabello', (random() * 3 + 1)::int, (random() * 20000 + 5000)::int),
('Tinte de Cabello', (random() * 4 + 1)::int, (random() * 30000 + 10000)::int),
('Mechas', (random() * 4 + 1)::int, (random() * 25000 + 10000)::int),
('Peinado', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Alisado', (random() * 5 + 2)::int, (random() * 50000 + 20000)::int),
('Permanente', (random() * 3 + 1)::int, (random() * 30000 + 10000)::int),
('Extensiones', (random() * 4 + 2)::int, (random() * 60000 + 20000)::int),
('Recogido', (random() * 2 + 1)::int, (random() * 20000 + 5000)::int),
('Tratamiento de Keratina', (random() * 3 + 2)::int, (random() * 40000 + 15000)::int),
('Mascarilla Capilar', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Secado', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Lacado', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Tratamiento Anticaspa', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Tratamiento Anticaída', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Desrizado', (random() * 3 + 1)::int, (random() * 25000 + 10000)::int),
('Baño de Crema', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Peinado de Fiesta', (random() * 2 + 1)::int, (random() * 20000 + 5000)::int),
('Peinado de Novia', (random() * 3 + 2)::int, (random() * 30000 + 10000)::int),
('Corte de barba', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Corte de Niños', (random() * 1 + 1)::int, (random() * 8000 + 3000)::int),
('Coloración Permanente', (random() * 3 + 1)::int, (random() * 30000 + 10000)::int),
('Coloración Semi-Permanente', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Retoque de Raíces', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Balayage', (random() * 4 + 2)::int, (random() * 35000 + 15000)::int),
('Olaplex', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Brushing', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Pulido de Puntas', (random() * 1 + 1)::int, (random() * 8000 + 3000)::int),
('Peinado con Plancha', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Tratamiento de Hidratación', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Corte de Barba', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Perfilado de Barba', (random() * 1 + 1)::int, (random() * 8000 + 3000)::int),
('Afeitado Clásico', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Retoque de Barba', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Coloración de Barba', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Depilación Facial', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Depilación Corporal', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Maquillaje de Día', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Maquillaje de Noche', (random() * 1 + 1)::int, (random() * 15000 + 5000)::int),
('Maquillaje de Fiesta', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Maquillaje de Novia', (random() * 3 + 2)::int, (random() * 30000 + 10000)::int),
('Peinado Infantil', (random() * 1 + 1)::int, (random() * 5000 + 2000)::int),
('Tratamiento Antiencrespamiento', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Extensiones Adhesivas', (random() * 4 + 2)::int, (random() * 60000 + 20000)::int),
('Extensiones de Queratina', (random() * 4 + 2)::int, (random() * 70000 + 30000)::int),
('Extensiones de Clip', (random() * 2 + 1)::int, (random() * 50000 + 20000)::int),
('Peinado de Trenzas', (random() * 2 + 1)::int, (random() * 20000 + 5000)::int),
('Trenzas Africanas', (random() * 3 + 2)::int, (random() * 30000 + 10000)::int),
('Retoque de Extensiones', (random() * 2 + 1)::int, (random() * 15000 + 5000)::int),
('Lifting de Pestañas', (random() * 1 + 1)::int, (random() * 15000 + 5000)::int),
('Tinte de Pestañas', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Microblading de Cejas', (random() * 2 + 1)::int, (random() * 30000 + 10000)::int),
('Perfilado de Cejas', (random() * 1 + 1)::int, (random() * 8000 + 3000)::int),
('Depilación con Hilo', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int),
('Manicura', (random() * 1 + 1)::int, (random() * 15000 + 5000)::int),
('Pedicura', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Esmaltado Permanente', (random() * 1 + 1)::int, (random() * 15000 + 5000)::int),
('Esmaltado Semipermanente', (random() * 1 + 1)::int, (random() * 12000 + 4000)::int),
('Uñas Acrílicas', (random() * 2 + 1)::int, (random() * 25000 + 10000)::int),
('Uñas de Gel', (random() * 2 + 1)::int, (random() * 20000 + 7000)::int),
('Relleno de Uñas', (random() * 1 + 1)::int, (random() * 15000 + 5000)::int),
('Decoración de Uñas', (random() * 1 + 1)::int, (random() * 10000 + 3000)::int)
;

-- Insertamos en la tabla servicio_prod
insert into transaccional.servicio_prod(cantidad, id_servicio, id_producto)
select 
	floor(random() * 2 + 1) as cantidad,
	floor(random() * (select max(id) - min(id) from transaccional.servicio) + (select min(id) from transaccional.servicio)) as id_servicio,
	floor(random() * (select max(id) - min(id) from transaccional.productos) + (select min(id) from transaccional.productos)) as id_producto
from generate_series(1,120);

-- Insertamos en la tabla peluqueria
INSERT INTO transaccional.peluqueria(nombre, direccion, fono, id_comuna)
VALUES
('Peluquería Bella Vista', 123, 123456789, 1),
('Peluquería Estilo Urbano', 124, 123456780, 2),
('Peluquería Glamour', 125, 123456781, 3),
('Peluquería Elegance', 126, 123456782, 4),
('Peluquería Fashion Hair', 127, 123456783, 5),
('Peluquería Cabellos', 128, 123456784, 6),
('Peluquería Look', 129, 123456785, 7),
('Peluquería Estilo', 130, 123456786, 8),
('Peluquería Chíc', 131, 123456787, 9),
('Peluquería Modern Hair', 132, 123456788, 10),
('Peluquería Lux', 133, 123456789, 11),
('Peluquería Brillante', 134, 123456780, 12),
('Peluquería Golden Hair', 135, 123456781, 13),
('Peluquería Shine', 136, 123456782, 14),
('Peluquería Estilo Plus', 137, 123456783, 15),
('Peluquería Hair Fashion', 138, 123456784, 16),
('Peluquería Nueva Imagen', 139, 123456785, 17),
('Peluquería Art Hair', 140, 123456786, 18),
('Peluquería Hair Zone', 141, 123456787, 19),
('Peluquería Estilo Total', 142, 123456788, 20),
('Peluquería Hair Studio', 143, 123456789, 21),
('Peluquería Estilo y Glamour', 144, 123456780, 22),
('Peluquería Deluxe', 145, 123456781, 23),
('Peluquería Elegancia', 146, 123456782, 24);

-- Insertamos en la tabla Cliente
insert into transaccional.cliente(nombre, apellido, esHombre, fono)
select 
	case floor(random() * 18)
		when 0 then 'Ana'
		when 1 then 'Santiago' 
		when 2 then 'Laura' 
		when 3 then 'Diego'
		when 4 then 'Sofía'
		when 5 then 'Carlos'
		when 6 then 'Valentina'
		when 7 then 'Juan'
		when 8 then 'Natalia'
		when 9 then 'Fransisco'
		when 10 then 'Valentin'
		when 11 then 'Lucas'
		when 12 then 'Camila'
		when 13 then 'Sebastián'
		when 14 then 'Martina'
		when 15 then 'Alejandro'
		when 16 then 'Isidora'
		when 17 then 'Tomás'
		else 'Andrés'
	end as nombre,
	case floor(random() * 18)
		when 0 then 'González'
		when 1 then 'Rodríguez' 
		when 2 then 'López' 
		when 3 then 'Martínez'
		when 4 then 'Pérez'
		when 5 then 'Gómez'
		when 6 then 'Sánchez'
		when 7 then 'Díaz'
		when 8 then 'Fernández'
		when 9 then 'Moreno'
		when 10 then 'Álvarez'
		when 11 then 'Vázquez'
		when 12 then 'Romero'
		when 13 then 'Torres'
		when 14 then 'Ruiz'
		when 15 then 'Ramos'
		when 16 then 'Castro'
		when 17 then 'Morales'
		else 'Andrade'
	end as apellido,
	random() < 0.5 as eshombre,
	floor(random() * 1e5) as fono
from generate_series(1, 600);

-- añadimos forean keys
with random_comuna as(
	select id, row_number () over() as rn
	from(
		select id
		from transaccional.comuna
		order by random()
	) as sb
),
random_cliente as (
	select id, row_number () over() as rn
	from(
		select id
		from transaccional.cliente
		order by random()
	) as sb
)
update transaccional.cliente
set id_comuna = rcm.id
from random_cliente rc
inner join random_comuna rcm on rc.rn % (select count(*) from transaccional.comuna) = rcm.rn-1
where transaccional.cliente.id = rc.id;

-- Insertamos en la tabla empleado
insert into transaccional.empleados (nombre, apellido, direccion, rut)
select 
	case floor(random() * 18)
		when 0 then 'Ana'
		when 1 then 'Santiago' 
		when 2 then 'Laura' 
		when 3 then 'Diego'
		when 4 then 'Sofía'
		when 5 then 'Carlos'
		when 6 then 'Valentina'
		when 7 then 'Juan'
		when 8 then 'Natalia'
		when 9 then 'Fransisco'
		when 10 then 'Valentin'
		when 11 then 'Lucas'
		when 12 then 'Camila'
		when 13 then 'Sebastián'
		when 14 then 'Martina'
		when 15 then 'Alejandro'
		when 16 then 'Isidora'
		when 17 then 'Tomás'
		else 'Andrés'
	end as nombre,
	case floor(random() * 18)
		when 0 then 'González'
		when 1 then 'Rodríguez' 
		when 2 then 'López' 
		when 3 then 'Martínez'
		when 4 then 'Pérez'
		when 5 then 'Gómez'
		when 6 then 'Sánchez'
		when 7 then 'Díaz'
		when 8 then 'Fernández'
		when 9 then 'Moreno'
		when 10 then 'Álvarez'
		when 11 then 'Vázquez'
		when 12 then 'Romero'
		when 13 then 'Torres'
		when 14 then 'Ruiz'
		when 15 then 'Ramos'
		when 16 then 'Castro'
		when 17 then 'Morales'
		else 'Andrade'
	end as apellido,
	floor(random() * 1e4) as direccion,
	floor(random() * 10e7) as rut
from generate_series(1, 500);

-- agregamos forean keys
with random_comuna as(
	select id, id_peluqueria, row_number () over() as rn
	from(
		select p.id as id_peluqueria, c.id
		from transaccional.comuna c
		inner join transaccional.peluqueria p on p.id_comuna = c.id
		order by random()
	) as sb
),
random_empleado as (
	select id, row_number () over() as rn
	from(
		select id
		from transaccional.empleados
		order by random()
	) as sb
)
update transaccional.empleados
set id_peluqueria = rcm.id_peluqueria , id_comuna = rcm.id
from random_empleado re
inner join random_comuna rcm on re.rn % (select count(*) from transaccional.peluqueria) = rcm.rn-1
where transaccional.empleados.id = re.id;

-- Insertamos en la tabla peluquero
insert into transaccional.peluquero(id_empleado)
select e.id as id_empleado
from transaccional.empleados e
order by random()
limit 300;

--Insertamos en la tabla Sueldo
INSERT INTO transaccional.sueldo (fecha_pago, cantidad, id_empleado)
SELECT 
    fecha.fecha_pago,
    floor(random() * 500000 + 400000) AS cantidad,
    empleado.id_empleado
FROM (
    SELECT 
        generate_series('2019-01-01'::DATE, '2024-12-01'::DATE, '1 month') AS fecha_pago
) AS fecha,
(
    SELECT 
        generate_series(1, 400) AS id_empleado
) AS empleado;

--Insertamos en la tabla Horarios
INSERT INTO transaccional.horarios(hora)
SELECT 
    ('09:00'::TIME + interval '30 minutes' * (generate_series - 1))::TIME
FROM generate_series(1, (18.5 - 9) * 60 / 30) AS generate_series;


WITH peluquerias_servicios AS (
    SELECT 
        p.id AS id_peluqueria,
        (random() * (SELECT COUNT(*) FROM transaccional.servicio) + 1)::int AS cantidad_servicios
    FROM 
        transaccional.peluqueria p
),
servicios_ordenados AS (
    SELECT 
        s.id AS id_servicio,
        ROW_NUMBER() OVER (ORDER BY random()) AS row_num
    FROM 
        transaccional.servicio s
),
servicios_seleccionados AS (
    SELECT 
        ps.id_peluqueria,
        so.id_servicio,
        ps.cantidad_servicios,
        ROW_NUMBER() OVER (PARTITION BY ps.id_peluqueria ORDER BY so.row_num) AS row_num
    FROM 
        peluquerias_servicios ps
    CROSS JOIN 
        servicios_ordenados so
)
insert into transaccional.servicio_peluqueria(prec_dif, id_peluqueria, id_servicio)
SELECT
    random() * 0.2 + 1 AS prec_dif,
    id_peluqueria,
    id_servicio
FROM 
    servicios_seleccionados
WHERE 
    row_num <= cantidad_servicios;


--Insertamos en la tabla producto_peluqueria los items necesarios para los servicios que ofrece
insert into transaccional.producto_peluqueria(stock, prec_dif, id_peluqueria, id_producto)
select
	floor(random() * 50 + 100) as stock,
	random() * 0.4 + 1 as prec_dif,
	sb.id_peluqueria as id_peluqueria,
	sb.id_producto as id_producto
from(
	SELECT DISTINCT sp2.id_producto, sp.id_peluqueria
	FROM transaccional.servicio_peluqueria sp
	INNER JOIN transaccional.servicio s ON sp.id_servicio = s.id
	INNER JOIN transaccional.servicio_prod sp2 ON sp2.id_servicio = s.id
	ORDER BY sp.id_peluqueria
) as sb;


-- Insertamos en la tabla cita
insert into transaccional.cita (fecha, id_horario)
select 
	date '2019-01-01' + (random() * (date '2023-12-31' - date '2019-01-01'))::int AS fecha,
	floor(random() * (select max(id)-min(id) from transaccional.horarios) + (select min(id) from transaccional.horarios)) as id_horario
from generate_series(1, 60000);

-- añadimos forean keys a la tabla
with random_cliente as(
	select id, row_number () over () as rn
	from(
		select id
		from transaccional.cliente c 
		order by random()
	)
),
random_cita as(
	select id, row_number () over () as rn
	from(
		select id
		from transaccional.cita c 
		order by random()
	)
),
random_peluquero as(
	select id_peluquero, id_peluqueria, row_number () over () as rn 
	from(
		select p.id as id_peluquero, p2.id as id_peluqueria
		from transaccional.peluquero p
		inner join transaccional.empleados e on p.id_empleado = e.id
		inner join transaccional.peluqueria p2 on p2.id = e.id_peluqueria
		order by random()
	)
)
update transaccional.cita
set id_peluqueria = rp.id_peluqueria, id_cliente = rc2.id, id_peluquero = rp.id_peluquero
from random_cita rc
inner join random_cliente rc2 on rc.rn % (select count(*) from transaccional.cliente c) = rc2.rn-1
inner join random_peluquero rp on rc.rn % (select count(*) from transaccional.peluquero p) = rp.rn-1
where transaccional.cita.id = rc.id;

-- opcional, hacer un cross join de combinatoria entre todas las fechas posibles y todas las peluquerias posibles para que no falten datos estadisticos o la ganancia sea negativa

-- Ingresamos 1 en la tabla detalle_servicio para cada cita
insert into transaccional.detalle_servicio(id_cita, id_servicio_peluqueria)
SELECT id_cita, id_servicio_peluqueria
FROM (
    select id_cita, id_servicio_peluqueria, id_servicio, ROW_NUMBER() OVER (PARTITION BY id_cita ORDER BY random()) AS rn
    from(
    	select c.id AS id_cita, sp.id AS id_servicio_peluqueria, s.id as id_servicio
    	FROM transaccional.cita c
	    INNER JOIN transaccional.peluqueria p ON c.id_peluqueria = p.id
	    INNER JOIN transaccional.servicio_peluqueria sp ON sp.id_peluqueria = p.id
	    INNER JOIN transaccional.servicio s ON s.id = sp.id_servicio
	    INNER JOIN transaccional.horarios h ON h.id = c.id_horario
	    WHERE (EXTRACT(HOUR FROM h.hora)::INT + s.horas) < 20
	    order by c.id
    ) as sb
) as subquery
WHERE rn = 1;

-- Ingresamos aleatoreamente 1 servicio más para algunas citas
insert into transaccional.detalle_servicio(id_cita, id_servicio_peluqueria)
SELECT id_cita, id_servicio_peluqueria
FROM (
    select id_cita, id_servicio_peluqueria, ROW_NUMBER() OVER (PARTITION BY id_cita ORDER BY id_servicio_peluqueria) AS rn
    from(
		select c.id as id_cita, c.id_horario, sp2.id as id_servicio_peluqueria
		from transaccional.cita c
		inner join transaccional.peluqueria p on c.id_peluqueria = p.id
		inner join transaccional.detalle_servicio ds on c.id = ds.id_cita
		inner join transaccional.servicio_peluqueria sp1 on ds.id_servicio_peluqueria = sp1.id
		inner join transaccional.servicio s1 on s1.id = sp1.id_servicio
		inner join transaccional.servicio_peluqueria sp2 on sp2.id_peluqueria = p.id
		inner join transaccional.servicio s2 on s2.id = sp2.id_servicio
		inner join transaccional.horarios h on h.id = c.id_horario
		group by c.id, sp2.id, h.hora, s2.id
		having (EXTRACT(hour from h.hora)::INT + s2.horas + sum(s1.horas)) < 20
    	limit floor(random() * (select count(*)-5000 from transaccional.cita))
    ) as sb
) as subquery
WHERE rn = 1;

-- Insertamos en la tabla venta
insert into transaccional.venta (fecha)
select 
	date '2019-01-01' + (random() * (date '2023-12-31' - date '2019-01-01'))::int AS fecha
from generate_series(1, 60000);

-- añadimos forean keys a la tabla
with random_peluquerias as(
	select id, row_number () over () as rn
	from(
		select id
		from transaccional.peluqueria p 
		order by random()
	)
),
random_cliente as(
	select id, row_number () over () as rn
	from(
		select id
		from transaccional.cliente c 
		order by random()
	)
),
random_ventas as(
	select id, row_number() over() as rn
	from(
		select id
		from transaccional.venta v
		order by random()
	)
)
update transaccional.venta 
set id_peluqueria = rp.id, id_cliente = rc2.id
from random_ventas v
inner join random_cliente rc2 on v.rn % (select count(*) from transaccional.cliente c) = rc2.rn-1
inner join random_peluquerias rp on v.rn % (select count(*) from transaccional.peluqueria p) = rp.rn-1
where transaccional.venta.id = v.id;

-- Insertamos en la tabla detalle_venta
INSERT INTO transaccional.detalle_venta(cantidad, id_venta, id_producto_peluqueria)
SELECT 
    FLOOR(RANDOM() * 3 + 1) AS cantidad, -- Cantidad aleatoria entre 1 y 3
    sub.id_venta,
    sub.id_producto_peluqueria
FROM (
    SELECT 
        v.id AS id_venta, 
        pp.id AS id_producto_peluqueria,
        ROW_NUMBER() OVER (PARTITION BY v.id ORDER BY RANDOM()) AS rn
    FROM transaccional.venta v
    INNER JOIN transaccional.peluqueria p ON p.id = v.id_peluqueria
    INNER JOIN transaccional.producto_peluqueria pp ON p.id = pp.id_peluqueria
) sub
WHERE sub.rn <= 3;

-- Insertar datos en prod_pel_prov
INSERT INTO transaccional.prod_pel_prov(fecha, cantidad, id_producto_peluqueria, id_proveedor)
SELECT
    mes AS fecha,
    SUM(cantidad) AS cantidad,
    id_producto_peluqueria,
    id_proveedor
FROM (
    SELECT
        DATE_TRUNC('month', v.fecha) AS mes,
        SUM(dv.cantidad) AS cantidad,
        pp.id AS id_producto_peluqueria,
        p.id_proveedor
    FROM
        transaccional.producto_peluqueria pp
    INNER JOIN
        transaccional.detalle_venta dv ON pp.id = dv.id_producto_peluqueria
    INNER JOIN
        transaccional.venta v ON dv.id_venta = v.id
    INNER JOIN
        transaccional.productos p ON p.id = pp.id_producto
    INNER JOIN
        transaccional.proveedor p2 ON p2.id = p.id_proveedor
    GROUP BY
        mes, pp.id, p.id_proveedor
    UNION ALL
    SELECT
        DATE_TRUNC('month', c.fecha) AS mes,
        SUM(sp2.cantidad) AS cantidad,
        pp.id AS id_producto_peluqueria,
        p3.id AS id_proveedor
    FROM
        transaccional.producto_peluqueria pp
    INNER JOIN
        transaccional.peluqueria p ON pp.id_peluqueria = p.id
    INNER JOIN
        transaccional.cita c ON c.id_peluqueria = p.id
    INNER JOIN
        transaccional.detalle_servicio ds ON ds.id_cita = c.id
    INNER JOIN
        transaccional.servicio_peluqueria sp ON sp.id = ds.id_servicio_peluqueria
    INNER JOIN
        transaccional.servicio s ON s.id = sp.id_servicio
    INNER JOIN
        transaccional.servicio_prod sp2 ON sp2.id_servicio = s.id
    INNER JOIN
        transaccional.productos p2 ON p2.id = sp2.id_producto
    INNER JOIN
        transaccional.proveedor p3 ON p2.id_proveedor = p3.id
    GROUP BY
        mes, pp.id, p3.id
) AS subquery
GROUP BY
    mes, id_producto_peluqueria, id_proveedor;

select count(*) as cantidad_citas, c.id_peluqueria, EXTRACT(YEAR FROM c.fecha) as año
from transaccional.cita c
inner join transaccional.detalle_servicio ds on ds.id_cita = c.id
group by id_peluqueria, año;

select count(dv.id) as cantidad_ventas, v.id_peluqueria, EXTRACT(YEAR FROM v.fecha) as año
from transaccional.venta v
inner join transaccional.detalle_venta dv on v.id = dv.id_venta
group by año, v.id_peluqueria;
