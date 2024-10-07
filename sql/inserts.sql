-- Tabla CLIENTES
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (1, 'Nombre_1', 'Apellido_1', '+502 4634-7041');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (2, 'Nombre_2', 'Apellido_2', '+502 2701-1140');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (3, 'Nombre_3', 'Apellido_3', '+502 6277-2079');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (4, 'Nombre_4', 'Apellido_4', '+502 7371-9552');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (5, 'Nombre_5', 'Apellido_5', '+502 1699-8122');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (6, 'Nombre_6', 'Apellido_6', '+502 3725-6825');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (7, 'Nombre_7', 'Apellido_7', '+502 2309-4036');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (8, 'Nombre_8', 'Apellido_8', '+502 4707-2479');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (9, 'Nombre_9', 'Apellido_9', '+502 7463-9125');
INSERT INTO CLIENTES (id_cliente, nombre, apellido, telefono) VALUES (10, 'Nombre_10', 'Apellido_10', '+502 4877-6844');

-- Tabla TIPO_CUENTA
INSERT INTO TIPOS_DE_CUENTA (id_tipo_cuenta, tipo_cuenta) VALUES (1, 'Ahorro');
INSERT INTO TIPOS_DE_CUENTA (id_tipo_cuenta, tipo_cuenta) VALUES (2, 'Depósito Monetario');
INSERT INTO TIPOS_DE_CUENTA (id_tipo_cuenta, tipo_cuenta) VALUES (3, 'Cuenta Corriente');

-- Tabla CUENTAS
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567890', 1, 1, 256848.49);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567891', 2, 1, 378588.21);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567892', 3, 2, 294799.84);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567893', 4, 1, 30357.74);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567894', 5, 1, 270027.60);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567895', 6, 2, 320114.50);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567896', 7, 1, 22124.56);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567897', 8, 1, 454642.04);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567898', 9, 2, 137342.69);
INSERT INTO CUENTAS (numero_cuenta, id_cliente, id_tipo_cuenta, saldo) VALUES ('001234567899', 10, 1, 221838.88);

-- Tabla DEPARTAMENTOS
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (1, 'Guatemala');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (2, 'Escuintla');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (3, 'Quetzaltenango');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (4, 'Chimaltenango');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (5, 'Huehuetenango');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (6, 'Alta Verapaz');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (7, 'Petén');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (8, 'Jutiapa');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (9, 'Izabal');
INSERT INTO DEPARTAMENTOS (id_departamento, departamento) VALUES (10, 'Zacapa');

-- Tabla MUNICIPIOS
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (1, 'Mixco', 1);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (2, 'Villa Nueva', 1);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (3, 'Escuintla', 2);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (4, 'Tiquisate', 2);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (5, 'Quetzaltenango', 3);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (6, 'Olintepeque', 3);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (7, 'Chimaltenango', 4);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (8, 'Comalapa', 4);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (9, 'Huehuetenango', 5);
INSERT INTO MUNICIPIOS (id_municipio, municipio, id_departamento) VALUES (10, 'Chiantla', 5);

-- Tabla TIPO_AGENCIA
INSERT INTO TIPOS_DE_AGENCIA (id_tipo_agencia, tipo_agencia) VALUES (1, 'Sucursal');

-- Tabla AGENCIAS
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (1, 'Sucursal Antigua Guatemala 1', 1, 1, 'Zona 7, Mixco', '91405', '+502 8036-8423');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (2, 'Sucursal Escuintla 2', 1, 3, 'Zona 1, Escuintla', '97145', '+502 9525-7114');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (3, 'Sucursal Quetzaltenango 3', 1, 5, 'Zona 1, Quetzaltenango', '53915', '+502 2873-4763');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (4, 'Sucursal Cobán 4', 1, 7, 'Zona 8, Chimaltenango', '31535', '+502 6809-5562');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (5, 'Sucursal Flores 5', 1, 9, 'Zona 10, Huehuetenango', '63389', '+502 5942-1959');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (6, 'Sucursal Chiquimula 6', 1, 4, 'Zona 8, Tiquisate', '19714', '+502 4495-5162');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (7, 'Sucursal Jutiapa 7', 1, 10, 'Zona 10, Chiantla', '55357', '+502 4968-8680');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (8, 'Sucursal Jalapa 8', 1, 8, 'Zona 10, Comalapa', '33610', '+502 2969-1720');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (9, 'Sucursal Huehuetenango 9', 1, 9, 'Zona 5, Huehuetenango', '89346', '+502 9729-5410');
INSERT INTO AGENCIAS (id_agencia, nombre, id_tipo_agencia, id_municipio, direccion, codigo_postal, telefono) VALUES (10, 'Sucursal Guatemala 10', 1, 2, 'Zona 10, Villa Nueva', '45014', '+502 4434-5617');

-- Tabla TIPO_TRANSACCION
INSERT INTO TIPOS_DE_TRANSACCION (id_tipo_transaccion, tipo_transaccion) VALUES (1, 'Transferencia');
INSERT INTO TIPOS_DE_TRANSACCION (id_tipo_transaccion, tipo_transaccion) VALUES (2, 'Depósito');
INSERT INTO TIPOS_DE_TRANSACCION (id_tipo_transaccion, tipo_transaccion) VALUES (3, 'Pago');
INSERT INTO TIPOS_DE_TRANSACCION (id_tipo_transaccion, tipo_transaccion) VALUES (4, 'Retiro');


-- Tabla TRANSACCIONES
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (1, '001234567890', '001234567891', 1, 2865.80, TO_TIMESTAMP('2023-10-24 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Transferencia', 1);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (2, '001234567891', '001234567892', 2, 2438.92, TO_TIMESTAMP('2023-12-09 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Depósito', 2);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (3, '001234567892', '001234567890', 1, 9494.98, TO_TIMESTAMP('2024-06-01 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Transferencia', 3);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (4, '001234567893', '001234567894', 3, 8399.08, TO_TIMESTAMP('2023-12-26 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Pago', 4);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (5, '001234567894', '001234567895', 2, 7722.10, TO_TIMESTAMP('2022-12-27 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Depósito', 5);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (6, '001234567895', '001234567896', 3, 8905.79, TO_TIMESTAMP('2023-01-30 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Pago', 6);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (7, '001234567896', '001234567897', 4, 7381.13, TO_TIMESTAMP('2024-07-05 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Retiro', 7);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (8, '001234567897', '001234567898', 2, 6570.37, TO_TIMESTAMP('2024-01-11 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Depósito', 8);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (9, '001234567898', '001234567899', 3, 7370.89, TO_TIMESTAMP('2023-11-01 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Pago', 9);
INSERT INTO TRANSACCIONES (id_transaccion, id_cuenta_origen, id_cuenta_destino, id_tipo_transaccion, monto, fecha_hora, descripcion, id_agencia) VALUES (10, '001234567899', '001234567890', 2, 2583.89, TO_TIMESTAMP('2024-05-25 14:28:01', 'YYYY-MM-DD HH24:MI:SS.FF3'), 'Transacción de tipo Depósito', 10);


-- Tabla ESTADO_PRESTAMO
INSERT INTO ESTADOS_DE_PRESTAMO (id_estado_prestamo, estado_prestamo) VALUES (1, 'Activo');
INSERT INTO ESTADOS_DE_PRESTAMO (id_estado_prestamo, estado_prestamo) VALUES (2, 'Vencido');
INSERT INTO ESTADOS_DE_PRESTAMO (id_estado_prestamo, estado_prestamo) VALUES (3, 'Cancelado');

-- Tabla PRESTAMOS
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (1, 1, 964203.64, 6.63, TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_DATE('2032-06-06', 'YYYY-MM-DD'), 674174.18, 1); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (2, 2, 811935.67, 13.42, TO_DATE('2023-05-07', 'YYYY-MM-DD'), TO_DATE('2028-08-29', 'YYYY-MM-DD'), 756664.53, 2);  
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (3, 3, 961457.89, 13.68, TO_DATE('2021-10-28', 'YYYY-MM-DD'), TO_DATE('2030-03-10', 'YYYY-MM-DD'), 200162.19, 1); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (4, 4, 78869.24, 11.42, TO_DATE('2023-05-14', 'YYYY-MM-DD'), TO_DATE('2026-12-17', 'YYYY-MM-DD'), 67546.61, 1); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (5, 5, 456168.05, 6.93, TO_DATE('2020-05-18', 'YYYY-MM-DD'), TO_DATE('2026-07-08', 'YYYY-MM-DD'), 729762.37, 2); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (6, 6, 11769.26, 7.77, TO_DATE('2022-09-11', 'YYYY-MM-DD'), TO_DATE('2025-10-06', 'YYYY-MM-DD'), 737055.62, 3); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (7, 7, 208520.33, 13.06, TO_DATE('2023-01-29', 'YYYY-MM-DD'), TO_DATE('2026-04-12', 'YYYY-MM-DD'), 839598.77, 1); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (8, 8, 223088.53, 8.21, TO_DATE('2019-09-16', 'YYYY-MM-DD'), TO_DATE('2021-10-04', 'YYYY-MM-DD'), 830010.68, 3); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (9, 9, 262202.99, 3.81, TO_DATE('2021-07-25', 'YYYY-MM-DD'), TO_DATE('2024-01-28', 'YYYY-MM-DD'), 686674.94, 2); 
INSERT INTO PRESTAMOS (id_prestamo, id_cliente, monto_prestamo, tasa_interes, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo) VALUES (10, 10, 562359.87, 3.65, TO_DATE('2023-11-16', 'YYYY-MM-DD'), TO_DATE('2026-07-20', 'YYYY-MM-DD'), 914873.92, 1); 

-- Tabla ESTADO_TARJETA
INSERT INTO ESTADOS_DE_TARJETA (id_estado_tarjeta, estado) VALUES  (1, 'Activa');
INSERT INTO ESTADOS_DE_TARJETA (id_estado_tarjeta, estado) VALUES (2, 'Bloqueada');
INSERT INTO ESTADOS_DE_TARJETA (id_estado_tarjeta, estado) VALUES (3, 'Cancelada');

-- Tabla TARJETAS_CREDITO
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (1, 1, '4872410269895827', 4344.96, 20358.67, TO_DATE('2022-02-09', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 2, TO_DATE('2022-03-06', 'YYYY-MM-DD'), 6);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (2, 2, '4780431200473540', 48263.8, 12583.92, TO_DATE('2021-04-29', 'YYYY-MM-DD'), TO_DATE('2025-11-10', 'YYYY-MM-DD'), 1, TO_DATE('2021-05-26', 'YYYY-MM-DD'), 26);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (3, 3, '4653562424107275', 37894.69, 16274.3, TO_DATE('2021-12-10', 'YYYY-MM-DD'), TO_DATE('2026-08-08', 'YYYY-MM-DD'), 2, TO_DATE('2022-01-08', 'YYYY-MM-DD'), 8);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (4, 4, '4935123661880312', 3610.3, 31113.15, TO_DATE('2020-11-21', 'YYYY-MM-DD'), TO_DATE('2025-07-26', 'YYYY-MM-DD'), 2, TO_DATE('2020-12-18', 'YYYY-MM-DD'), 18);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (5, 5, '4918591621061050', 35118.01, 5054.92, TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2028-02-05', 'YYYY-MM-DD'), 3, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 5);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (6, 6, '4378520539795383', 5109.03, 3686.69, TO_DATE('2022-11-21', 'YYYY-MM-DD'), TO_DATE('2026-08-19', 'YYYY-MM-DD'), 3, TO_DATE('2022-12-14', 'YYYY-MM-DD'), 14);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (7, 7, '4581870605290993', 42128.4, 17459.5, TO_DATE('2020-07-04', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 3, TO_DATE('2020-07-25', 'YYYY-MM-DD'), 25);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (8, 8, '4807500082737884', 48150.36, 19235.82, TO_DATE('2022-01-13', 'YYYY-MM-DD'), TO_DATE('2026-04-20', 'YYYY-MM-DD'), 2, TO_DATE('2022-02-06', 'YYYY-MM-DD'), 6);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (9, 9, '4174113245817380', 37901.82, 14255.74, TO_DATE('2020-12-29', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 2, TO_DATE('2021-01-22', 'YYYY-MM-DD'), 22);
INSERT INTO TARJETAS_DE_CREDITO (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_expiracion, id_estado_tarjeta, fecha_corte, dia_ciclo) VALUES (10, 10, '4617314737376801', 32143.79, 10600.77, TO_DATE('2024-03-31', 'YYYY-MM-DD'), TO_DATE('2028-05-28', 'YYYY-MM-DD'), 2, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 23);

-- Tabla ROLES
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (1, 'Auditor Interno');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (2, 'Oficial de Crédito');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (3, 'Administrador');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (4, 'Atención al Cliente');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (5, 'Soporte Técnico');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (6, 'Cajero');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (7, 'Cumplimiento');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (8, 'Gerente de Sucursal');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (9, 'Asesor Financiero');
INSERT INTO ROLES_DE_EMPLEADO (id_rol, rol) VALUES (10, 'Ejecutivo de Cuentas');

-- Tabla EMPLEADOS
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (1, 'Nombre_1', 'Apellido_1', 1, 1, 1, '+502 7815-2167');  -- Rol: Auditor Interno, Departamento: Petén
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (2, 'Nombre_2', 'Apellido_2', 2, 2, 6, '+502 3808-9764');  -- Rol: Administrador, Departamento: Chiquimula
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (3, 'Nombre_3', 'Apellido_3', 3, 3, 7, '+502 4899-1699');  -- Rol: Atención al Cliente, Departamento: Jutiapa
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (4, 'Nombre_4', 'Apellido_4', 4, 4, 3, '+502 3452-1726');  -- Rol: Oficial de Crédito, Departamento: Quetzaltenango
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (5, 'Nombre_5', 'Apellido_5', 5, 3, 7, '+502 8283-6524');  -- Rol: Soporte Técnico, Departamento: Jutiapa
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (6, 'Nombre_6', 'Apellido_6', 6, 2, 6, '+502 6080-1303');  -- Rol: Asesor Financiero, Departamento: Chiquimula
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (7, 'Nombre_7', 'Apellido_7', 5, 1, 2, '+502 4119-3721');  -- Rol: Soporte Técnico, Departamento: Escuintla
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (8, 'Nombre_8', 'Apellido_8', 1, 2, 6, '+502 9522-2771');  -- Rol: Auditor Interno, Departamento: Chiquimula
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (9, 'Nombre_9', 'Apellido_9', 3, 4, 9, '+502 4703-7159');  -- Rol: Atención al Cliente, Departamento: Sacatepéquez
INSERT INTO EMPLEADOS (id_empleado, nombre, apellido, id_rol, id_departamento, id_agencia, telefono) VALUES (10, 'Nombre_10', 'Apellido_10', 1, 4, 10, '+502 9495-5093'); -- Rol: Auditor Interno, Departamento: Sacatepéquez