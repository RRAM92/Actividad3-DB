-- I. CATÁLOGOS Y TABLAS PRINCIPALES

-- CATÁLOGO DE MODELOS
create table auto (
    id_auto INT generated always as identity primary key,
    marca VARCHAR(50) not null,
    nombre_modelo VARCHAR(100) not null,
    tipo_motor VARCHAR(50),
    potencia VARCHAR(50),
    num_cilindros INT,
    precio DECIMAL(12, 2) not null
);

--REGISTRO DE AUTOS
INSERT INTO auto (marca, nombre_modelo, tipo_motor, potencia, num_cilindros, precio) VALUES
('Volkswagen', 'Jetta Comfortline', '2.0L TSI', '150 HP', 4, 399900.00),
('Volkswagen', 'Tiguan Trendline', '1.4L TSI', '150 HP', 4, 549900.00),
('Volkswagen', 'Golf GTI', '2.0L Turbo', '230 HP', 4, 680000.00),
('Honda', 'Civic Touring', '1.5L Turbo', '176 HP', 4, 525900.00),
('Honda', 'CR-V Turbo Plus', '1.5L Turbo', '188 HP', 4, 679900.00),
('Honda', 'City Prime', '1.5L i-VTEC', '119 HP', 4, 389900.00),
('Suzuki', 'Swift Sport', '1.4L Boosterjet', '138 HP', 4, 394900.00),
('Suzuki', 'Vitara AllGrip', '1.4L Boosterjet', '138 HP', 4, 484900.00),
('Suzuki', 'Jimny GLX', '1.5L Atmosférico', '102 HP', 4, 445900.00),
('Audi', 'A3 Sedan Dynamic', '1.4L TFSI', '150 HP', 4, 695000.00),
('Audi', 'A4 Select', '2.0L TFSI', '190 HP', 4, 885000.00),
('Audi', 'Q5 S Line', '2.0L Turbo MHEV', '249 HP', 4, 1150000.00),
('Toyota', 'Corolla SE', '2.0L Dynamic Force', '169 HP', 4, 439900.00),
('Toyota', 'RAV4 XLE', '2.5L Dynamic Force', '204 HP', 4, 589900.00),
('Toyota', 'Hilux Doble Cabina', '2.7L Gasolina', '166 HP', 4, 512000.00),
('Nissan', 'Sentra Exclusive', '2.0L DOHC', '145 HP', 4, 475900.00),
('Nissan', 'Kicks Platinum', '1.6L DOHC', '118 HP', 4, 415900.00),
('Mazda', 'Mazda 3 i Grand Touring', '2.5L Skyactiv-G', '186 HP', 4, 482900.00),
('Mazda', 'CX-5 Signature', '2.5L Turbo', '228 HP', 4, 688900.00),
('Ford', 'Mustang GT Premium', '5.0L V8 Coyote', '450 HP', 8, 1080000.00);

-- CATÁLOGO DE ACCESORIOS
CREATE TABLE equipamiento (
    id_equipamiento INT generated always as identity primary key,
    accesorio VARCHAR(100) not null,
    descripcion TEXT
);

--REGISTRO DE EQUIPAMIENTO
INSERT INTO equipamiento (accesorio, descripcion) VALUES
('Airbag Conductor', 'Bolsa de aire de impacto frontal para el conductor'),
('Airbag Acompañante', 'Bolsa de aire de impacto frontal para el pasajero delantero'),
('Airbags de Cortina', 'Bolsas de aire laterales para protección de cabeza'),
('Cierre Automático', 'Bloqueo centralizado de puertas por velocidad'),
('Aire Acondicionado', 'Sistema de climatización manual monozona'),
('Climatizador Bizona', 'Acondicionador de aire automático de dos zonas'),
('Pintura Metalizada', 'Acabado de pintura con destellos metálicos especiales'),
('Quemacocos Eléctrico', 'Techo solar panorámico con apertura de un solo toque'),
('Cámara de Reversa', 'Asistencia visual trasera con líneas dinámicas en pantalla'),
('Sensores de Reversa', 'Sensores de ultrasonido con alerta acústica de proximidad'),
('Asientos de Piel', 'Tapicería completa en piel sintética/natural'),
('Sistema de Navegación GPS', 'Pantalla táctil con mapas e itinerarios integrados'),
('Faros LED Fog', 'Luces de niebla con tecnología LED de alta intensidad'),
('Rines de Aluminio 18"', 'Juego de rines deportivos de aleación ligera'),
('Apple CarPlay & Android Auto', 'Conectividad móvil inalámbrica para infoentretenimiento'),
('Control Crucero Adaptativo', 'Control de velocidad automático con sensor de distancia'),
('Frenado Autónomo de Emergencia', 'Sistema de mitigación de colisión frontal'),
('Cargador Inalámbrico', 'Placa de inducción para recarga de smartphones'),
('Sonido Premium Bose', 'Sistema de audio de 10 bocinas con subwoofer'),
('Asistente de Mantenimiento de Carril', 'Corrección automática de dirección ante desvío');

-- UBICACIÓN DE LA CONCESIONARIA
CREATE TABLE ubicacion (
    id_ubicacion INT generated always as identity primary key,
    nombre VARCHAR(100) not null,
    tipo_ubicacion VARCHAR(50) check (tipo_ubicacion in ('ALMACEN', 'LOCAL', 'SUCURSAL')),
    domicilio VARCHAR(255),
    telefono VARCHAR(20)
);

-- REGISTRO DE UBICACIONES
INSERT INTO ubicacion (nombre, tipo_ubicacion, domicilio, telefono) VALUES
('Agencia Central Matriz', 'LOCAL', 'Av. De las Industrias 4500, Col. Centro', '6144102000'),
('Sucursal Norte', 'SUCURSAL', 'Av. Tecnológico 1201, Col. Vallarta', '6144153030'),
('Sucursal Juventud', 'SUCURSAL', 'Periférico de la Juventud 6100, Col. Haciendas', '6144238000'),
('Almacén Poniente', 'ALMACEN', 'Calle Avícola 890, Col. Campesina', '6144189000'),
('Almacén de Resguardo Sur', 'ALMACEN', 'Av. Fuentes Mares 8800, Col. Mármol', '6144351122'),
('Servicio Oficial Centro', 'LOCAL', 'Calle 10a y Victoria 200, Col. Centro', '6144123344'),
('Sucursal Américas', 'SUCURSAL', 'Av. de las Américas 1502, Col. Panamericana', '6144145566'),
('Almacén Logístico II', 'ALMACEN', 'Av. Homero 310, Col. Complejo Industrial', '6144810099'),
('Sucursal Silvestre Terrazas', 'SUCURSAL', 'Av. Silvestre Terrazas 9000, Col. Esperanza', '6144341200'),
('Agencia Plaza del Sol', 'LOCAL', 'Periférico de la Juventud 3300, Col. Sol', '6144265000'),
('Almacén Central de Inventario', 'ALMACEN', 'Carretera a Aldama Km 3.5', '6144201100'),
('Sucursal Vías', 'SUCURSAL', 'Av. Teófilo Borunda 2200, Col. Centro', '6144167890'),
('Sucursal Aeropuerto', 'SUCURSAL', 'Av. Fuerza Aérea 1100, Col. Aeropuerto', '6144389012'),
('Sucursal Mirador', 'SUCURSAL', 'Av. Mirador 4100, Col. Campestre', '6144112233'),
('Almacén Norte II', 'ALMACEN', 'Av. Guillermo Prieto Luján 400', '6144823344'),
('Servicio Oficial Universidad', 'LOCAL', 'Av. Universidad 2500, Col. Altavista', '6144134455'),
('Sucursal Zarco', 'SUCURSAL', 'Av. Francisco Zarco 3200, Col. Zarco', '6144186677'),
('Almacén de Transito', 'ALMACEN', 'Calle Vialidad Ch-P 1200, Col. Industrial', '6144218899'),
('Sucursal San Felipe', 'SUCURSAL', 'Av. San Felipe 800, Col. San Felipe', '6144149900'),
('Agencia Paseos', 'LOCAL', 'Av. Paseos de Chiricahua 1500', '6144831122');

-- TIENDAS SOCIAS EXTERNAS
CREATE TABLE servicio_oficial (
    id_servicio_oficial INT generated always as identity primary key,
    nombre VARCHAR(100) not null,
    domicilio VARCHAR(255),
    telefono VARCHAR(20)
);

-- REGISTRO DE SERVICIO OFICIAL
INSERT INTO servicio_oficial (nombre, domicilio, telefono) VALUES
('Autos Ejecutivos del Norte', 'Av. Universidad 3100, Col. Magisterial', '6144131100'),
('Distribuidora Automotriz del Valle', 'Calle Aldama 1202, Col. Centro', '6144152233'),
('Servicios Automotrices Vallarta', 'Av. Tecnológico 4500, Col. Granjas', '6144213344'),
('Multimarcas de Chihuahua', 'Periférico de la Juventud 1200, Col. Campestre', '6144254455'),
('Exhibición y Ventas Zarco', 'Av. Francisco Zarco 1800, Col. Zarco', '6144185566'),
('Agencia Autorizada Homero', 'Av. Homero 890, Col. Revolución', '6144816677'),
('Comercializadora del Real', 'Calle Victoria 405, Col. Centro', '6144127788'),
('Punto de Venta Aeropuerto', 'Av. Fuerza Aérea 3200, Col. Paleontólogos', '6144388899'),
('Automotores San Felipe', 'Av. San Felipe 1400, Col. San Felipe', '6144149900'),
('Exhibición Fuentes Mares', 'Av. Fuentes Mares 4100, Col. Santa Rosa', '6144350011'),
('Servicio Oficial Américas', 'Av. de las Américas 800, Col. Lomas', '6144141122'),
('Ventas y Servicios Mirador', 'Av. Mirador 2100, Col. Sicomoros', '6144112233'),
('Autos Selectos de Parral', 'Av. Independencia 50, Col. Centro', '6275223344'),
('Concesión Autorizada Delicias', 'Av. Agricultura Sur 200, Col. Centro', '6394721122'),
('Servicios Automotrices Cuauhtémoc', 'Av. 16 de Septiembre 450, Col. Centro', '6255823344'),
('Distribuidora Juárez Central', 'Av. Tecnológico 6700, Col. Pradera', '6566178899'),
('Exhibición y Centro Camargo', 'Av. Juárez 102, Col. Centro', '6484621100'),
('Automotores de Aldama', 'Calle 3a e Hidalgo 500, Col. Centro', '6145112233'),
('Punto de Venta Paseos', 'Av. Paseos de Chihuahua 800, Col. Paseos', '6144834455'),
('Centro de Distribución Silvestre', 'Av. Silvestre Terrazas 4500, Col. Pavis', '6144345566');

-- EMPLEADOS DEL CONCESIONARIO
CREATE TABLE vendedor (
    id_vendedor INT generated always as identity primary key,
    id_ubicacion INT references ubicacion(id_ubicacion) on delete set null,
    nombre VARCHAR(100) not null,
    domicilio VARCHAR(255),
    telefono VARCHAR(20),
    whatsapp VARCHAR(20)
);

-- REGISTRO DE VENDEDORES
INSERT INTO vendedor (id_ubicacion, nombre, domicilio, telefono, whatsapp) VALUES
(1, 'Carlos Mendoza Ríos', 'Calle Mina 402, Col. Centro', '6141203040', '6141203040'),
(2, 'Ana Sofía Ramírez', 'Av. Dostoievski 112, Col. Alamedas', '6142314050', '6142314050'),
(3, 'Luis Fernando Gómez', 'Calle Trasviña y Retes 1500, Col. San Felipe', '6143425060', '6143425060'),
(1, 'María Elena Delgado', 'Calle 24a 1802, Col. Obrera', '6144536070', '6144536070'),
(2, 'Jorge Alberto Torres', 'Av. Los Arcos 504, Col. Arboledas', '6145647080', '6145647080'),
(3, 'Claudia Marcela Peña', 'Calle Carbonel 210, Col. San Felipe', '6146758090', '6146758090'),
(6, 'Ricardo Morales Cruz', 'Av. Ocampo 800, Col. Centro', '6147869001', '6147869001'),
(7, 'Valeria Domínguez', 'Calle Izalco 310, Col. Panamericana', '6148970112', '6148970112'),
(9, 'Gabriel Hernández V.', 'Calle 90a 410, Col. Esperanza', '6149081223', '6149081223'),
(10, 'Patricia Aguilar Soto', 'Av. Francisco Villa 1200, Col. Arboledas', '6141192334', '6141192334'),
(12, 'Roberto Castro Fierro', 'Calle Aldama 3100, Col. Bellavista', '6142203445', '6142203445'),
(13, 'Daniela Navarro L.', 'Av. Palestina 1800, Col. Tabalaopa', '6143314556', '6143314556'),
(14, 'Esteban Ortiz Marín', 'Calle Washington 1400, Col. Panamericana', '6144425667', '6144425667'),
(16, 'Fernanda Ruiz Esparza', 'Calle 12a 402, Col. Altavista', '6145536778', '6145536778'),
(17, 'Héctor Hugo Benítez', 'Av. Zarco 2800, Col. Zarco', '6146647889', '6146647889'),
(19, 'Laura Beatriz Pacheco', 'Calle Escudero 1100, Col. Santo Niño', '6147758990', '6147758990'),
(20, 'Raúl Alejandro Sáenz', 'Av. Mineral de la Perla 300, Col. Paseos', '6148869001', '6148869001'),
(10, 'Sofía Isabel Parra', 'Calle Bahía de San Quintín 200, Col. Sol', '6149970112', '6149970112'),
(3, 'Miguel Ángel Villalobos', 'Calle Indiana 810, Col. Quintas del Sol', '6141081223', '6141081223'),
(1, 'Andrea Nicole Estrada', 'Calle Libertad 1002, Col. Centro', '6142192334', '6142192334');

-- II. TABLAS INTERMEDIAS Y DE INVENTARIO

-- SERIE O EXTRA
CREATE TABLE auto_equipamiento (
    id_auto INT references auto(id_auto) on delete cascade,
    id_equipamiento INT references equipamiento(id_equipamiento) on delete cascade,
    tipo VARCHAR(10) check (tipo in ('SERIE', 'EXTRA')),
    precio DECIMAL(10, 2) default 0.00,
    primary key (id_auto, id_equipamiento)
);

-- REGISTRO DE AUTO-EQUIPAMIENTO
INSERT INTO auto_equipamiento (id_auto, id_equipamiento, tipo, precio) VALUES
-- Jetta Comfortline (id_auto = 1)
(1, 1, 'SERIE', 0.00),
(1, 2, 'SERIE', 0.00),
(1, 5, 'SERIE', 0.00),
(1, 7, 'EXTRA', 12500.00),
(1, 8, 'EXTRA', 18900.00),

-- Civic Touring (id_auto = 4)
(4, 1, 'SERIE', 0.00),
(4, 2, 'SERIE', 0.00),
(4, 6, 'SERIE', 0.00),
(4, 8, 'SERIE', 0.00),
(4, 11, 'SERIE', 0.00),

-- Swift Sport (id_auto = 7)
(7, 1, 'SERIE', 0.00),
(7, 2, 'SERIE', 0.00),
(7, 5, 'SERIE', 0.00),
(7, 14, 'SERIE', 0.00),
(7, 7, 'EXTRA', 8500.00),

-- Audi A3 (id_auto = 10)
(10, 1, 'SERIE', 0.00),
(10, 2, 'SERIE', 0.00),
(10, 3, 'SERIE', 0.00),
(10, 8, 'EXTRA', 24500.00),
(10, 19, 'EXTRA', 32000.00);

-- EXISTENCIAS
CREATE TABLE stock (
    num_serie VARCHAR(50) primary key,
    id_auto INT not null references auto(id_auto) on delete restrict,
    id_ubicacion INT not null references ubicacion(id_ubicacion) on delete restrict,
    estado VARCHAR(30) default 'DISPONIBLE',
    descuento DECIMAL(10, 2) default 0.00
);

-- REGISTRO DE EXISTENCIAS
INSERT INTO stock (num_serie, id_auto, id_ubicacion, estado, descuento) VALUES
('3N1AB7AP4KL100001', 1, 1, 'VENDIDO', 0.00),
('3N1AB7AP4KL100002', 1, 2, 'DISPONIBLE', 5000.00),
('3N1AB7AP4KL100003', 2, 4, 'DISPONIBLE', 0.00),
('1HGCR2F83HA200001', 4, 1, 'VENDIDO', 10000.00),
('1HGCR2F83HA200002', 4, 3, 'DISPONIBLE', 0.00),
('1HGCR2F83HA200003', 5, 5, 'VENDIDO', 0.00),
('JS2AZ1C29KA300001', 7, 2, 'VENDIDO', 0.00),
('JS2AZ1C29KA300002', 8, 4, 'DISPONIBLE', 15000.00),
('JS2AZ1C29KA300003', 9, 6, 'VENDIDO', 0.00),
('WAUZZZ8V1KA400001', 10, 1, 'VENDIDO', 0.00),
('WAUZZZ8V1KA400002', 11, 3, 'DISPONIBLE', 20000.00),
('WAUZZZ8V1KA400003', 12, 10, 'VENDIDO', 0.00),
('4T1B11HK5JU500001', 13, 2, 'VENDIDO', 0.00),
('4T1B11HK5JU500002', 14, 5, 'DISPONIBLE', 0.00),
('3N1AB7AP0LK600001', 16, 7, 'VENDIDO', 8000.00),
('JM1BN1U75K1700001', 18, 3, 'VENDIDO', 0.00),
('JM1BN1U75K1700002', 19, 1, 'DISPONIBLE', 12000.00),
('1FA6P8CF0R5800001', 20, 10, 'VENDIDO', 0.00),
('3N1AB7AP4KL100004', 3, 8, 'VENDIDO', 0.00),
('1HGCR2F83HA200004', 6, 9, 'VENDIDO', 0.00);

-- III. TRANSACCIONES Y VENTAS

-- REGISTRO DE TRANSACCIONES
CREATE TABLE venta (
    id_venta INT generated always as identity primary key,
    num_serie VARCHAR(50) not null references stock(num_serie) on delete restrict,
    id_vendedor INT references vendedor(id_vendedor) on delete set null,
    id_servicio_oficial INT references servicio_oficial(id_servicio_oficial) on delete set null,
    fecha_venta DATE not null default CURRENT_DATE,
    fecha_entrega DATE,
    precio DECIMAL(12, 2) not null,
    modo_pago VARCHAR(20) check (modo_pago in ('CONTADO', 'CREDITO')),
    matricula VARCHAR(20),
    es_encargo BOOLEAN not null default false,
    
    -- Regla de negocio: La venta la debió hacer UN vendedor O UN servicio oficial
    constraint chk_quien_vendio check (
        (id_vendedor is not null and id_servicio_oficial is null) or
        (id_vendedor is null and id_servicio_oficial is not null)
    )
);

-- REGISTRO DE VENTAS
INSERT INTO venta (num_serie, id_vendedor, id_servicio_oficial, fecha_venta, fecha_entrega, precio, modo_pago, matricula, es_encargo) VALUES
('3N1AB7AP4KL100001', 1, NULL, '2026-01-15', '2026-01-20', 399900.00, 'CONTADO', 'EDK-123-A', FALSE),
('1HGCR2F83HA200001', 3, NULL, '2026-01-18', '2026-01-25', 515900.00, 'CREDITO', 'EDK-456-B', FALSE),
('1HGCR2F83HA200003', NULL, 1, '2026-02-01', '2026-02-10', 679900.00, 'CREDITO', 'EDK-789-C', TRUE),
('JS2AZ1C29KA300001', 2, NULL, '2026-02-05', '2026-02-08', 394900.00, 'CONTADO', 'EDK-101-D', FALSE),
('JS2AZ1C29KA300003', NULL, 3, '2026-02-12', '2026-02-15', 445900.00, 'CONTADO', 'EDK-202-E', FALSE),
('WAUZZZ8V1KA400001', 1, NULL, '2026-02-20', '2026-03-01', 719500.00, 'CREDITO', 'EDK-303-F', TRUE),
('WAUZZZ8V1KA400003', 10, NULL, '2026-03-02', '2026-03-05', 1150000.00, 'CONTADO', 'EDK-404-G', FALSE),
('4T1B11HK5JU500001', NULL, 4, '2026-03-10', '2026-03-14', 439900.00, 'CREDITO', 'EDK-505-H', FALSE),
('3N1AB7AP0LK600001', 8, NULL, '2026-03-15', '2026-03-22', 467900.00, 'CONTADO', 'EDK-606-I', FALSE),
('JM1BN1U75K1700001', 3, NULL, '2026-03-28', '2026-04-02', 482900.00, 'CREDITO', 'EDK-707-J', FALSE),
('1FA6P8CF0R5800001', 18, NULL, '2026-04-05', '2026-04-15', 1080000.00, 'CONTADO', 'EDK-808-K', TRUE),
('3N1AB7AP4KL100004', 4, NULL, '2026-04-12', '2026-04-18', 680000.00, 'CREDITO', 'EDK-909-L', FALSE),
('1HGCR2F83HA200004', NULL, 2, '2026-04-20', '2026-04-23', 389900.00, 'CONTADO', 'EDK-010-M', FALSE),
('3N1AB7AP4KL100002', 2, NULL, '2026-05-01', '2026-05-05', 394900.00, 'CONTADO', 'EDK-111-N', FALSE),
('1HGCR2F83HA200002', 3, NULL, '2026-05-10', '2026-05-18', 525900.00, 'CREDITO', 'EDK-222-O', FALSE),
('JS2AZ1C29KA300002', NULL, 5, '2026-05-15', '2026-05-20', 469900.00, 'CONTADO', 'EDK-333-P', FALSE),
('WAUZZZ8V1KA400002', 6, NULL, '2026-06-01', '2026-06-10', 865000.00, 'CREDITO', 'EDK-444-Q', FALSE),
('4T1B11HK5JU500002', 9, NULL, '2026-06-12', '2026-06-16', 589900.00, 'CONTADO', 'EDK-555-R', FALSE),
('JM1BN1U75K1700002', 1, NULL, '2026-06-20', '2026-06-28', 676900.00, 'CREDITO', 'EDK-666-S', TRUE),
('3N1AB7AP0LK600001', NULL, 6, '2026-07-02', '2026-07-07', 475900.00, 'CONTADO', 'EDK-777-T', FALSE);

-- IV. PRUEBA Y SIMULACIÓN

-- VENTAS ACUMULADAS
create table ventas_acumuladas(
	id_acumulado INT generated ALWAYS as identity primary key,
	num_serie VARCHAR(50) not null references stock(num_serie) on delete restrict,
	id_vendedor INT references vendedor(id_vendedor) on delete set null,
	id_servicio_oficial INT references servicio_oficial(id_servicio_oficial) on delete set null,
	fecha_simulacion DATE not null,
	monto decimal(12, 2) not null,
	modo_pago VARCHAR(20) check (modo_pago in ('CONTADO', 'CREDITO'))
);

--REGISTRO DE VENTAS ACUMULADAS
INSERT INTO ventas_acumuladas (num_serie, id_vendedor, id_servicio_oficial, fecha_simulacion, monto, modo_pago) VALUES
('3N1AB7AP4KL100001', 1, NULL, '2026-01-10', 399900.00, 'CONTADO'),
('3N1AB7AP4KL100002', 2, NULL, '2026-01-14', 394900.00, 'CREDITO'),
('3N1AB7AP4KL100003', NULL, 1, '2026-01-22', 549900.00, 'CONTADO'),
('1HGCR2F83HA200001', 3, NULL, '2026-02-02', 515900.00, 'CREDITO'),
('1HGCR2F83HA200002', 4, NULL, '2026-02-11', 525900.00, 'CONTADO'),
('1HGCR2F83HA200003', NULL, 2, '2026-02-18', 679900.00, 'CREDITO'),
('JS2AZ1C29KA300001', 5, NULL, '2026-03-01', 394900.00, 'CONTADO'),
('JS2AZ1C29KA300002', NULL, 3, '2026-03-05', 469900.00, 'CREDITO'),
('JS2AZ1C29KA300003', 6, NULL, '2026-03-12', 445900.00, 'CONTADO'),
('WAUZZZ8V1KA400001', 7, NULL, '2026-03-20', 695000.00, 'CREDITO'),
('WAUZZZ8V1KA400002', NULL, 4, '2026-04-03', 865000.00, 'CONTADO'),
('WAUZZZ8V1KA400003', 10, NULL, '2026-04-10', 1150000.00, 'CREDITO'),
('4T1B11HK5JU500001', 8, NULL, '2026-04-19', 439900.00, 'CONTADO'),
('4T1B11HK5JU500002', NULL, 5, '2026-04-25', 589900.00, 'CREDITO'),
('3N1AB7AP0LK600001', 9, NULL, '2026-05-02', 467900.00, 'CONTADO'),
('JM1BN1U75K1700001', 11, NULL, '2026-05-14', 482900.00, 'CREDITO'),
('JM1BN1U75K1700002', NULL, 6, '2026-05-28', 676900.00, 'CONTADO'),
('1FA6P8CF0R5800001', 18, NULL, '2026-06-04', 1080000.00, 'CREDITO'),
('3N1AB7AP4KL100004', 12, NULL, '2026-06-15', 680000.00, 'CONTADO'),
('1HGCR2F83HA200004', NULL, 7, '2026-06-22', 389900.00, 'CREDITO'),
('3N1AB7AP4KL100001', 13, NULL, '2026-07-01', 399900.00, 'CONTADO'),
('1HGCR2F83HA200001', 14, NULL, '2026-07-11', 525900.00, 'CREDITO'),
('JS2AZ1C29KA300002', NULL, 8, '2026-07-20', 484900.00, 'CONTADO'),
('WAUZZZ8V1KA400001', 15, NULL, '2026-08-05', 695000.00, 'CREDITO'),
('4T1B11HK5JU500001', 16, NULL, '2026-08-18', 439900.00, 'CONTADO');

-- OPERACIONES
select 
v.id_venta, v.num_serie, a.marca, a.nombre_modelo, vend.nombre as nombre_vendedor, u.nombre as nombre_concesionaria,
v.fecha_venta, v.precio, v.modo_pago from venta v
join vendedor vend on v.id_vendedor = vend.id_vendedor
join ubicacion u on vend.id_ubicacion = u.id_ubicacion
join stock s on v.num_serie = s.num_serie
join auto a on s.id_auto = a.id_auto
where u.id_ubicacion = 1 and v.precio > 150000.00 order by v.fecha_venta desc
limit 5;

-- ÚLTIMAS INSTRUCCIONES
update ubicacion set nombre = nombre || '-Nacional';
select id_ubicacion, nombre, tipo_ubicacion from ubicacion;
drop table ventas_acumuladas;