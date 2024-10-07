-- Ver los registros en la tabla TIPOS_DE_CUENTA
SELECT * FROM TIPOS_DE_CUENTA;

-- Ver los registros en la tabla CUENTAS
SELECT * FROM CUENTAS;

-- Ver los registros en la tabla DEPARTAMENTOS
SELECT * FROM DEPARTAMENTOS;

-- Ver los registros en la tabla MUNICIPIOS
SELECT * FROM MUNICIPIOS;

-- Cliente origen de la transaccion
SELECT 
    t.id_transaccion,
    tt.tipo_transaccion,
    c_origen.numero_cuenta AS id_cuenta_origen,
    cl_origen.nombre AS nombre_cliente_origen
FROM 
    TRANSACCIONES t
JOIN 
    CUENTAS c_origen ON t.id_cuenta_origen = c_origen.numero_cuenta
JOIN 
    CLIENTES cl_origen ON c_origen.id_cliente = cl_origen.id_cliente
JOIN 
    TIPOS_DE_TRANSACCION tt ON t.id_tipo_transaccion = tt.id_tipo_transaccion;


-- Datos del prestamos 
SELECT 
    cl.nombre,
    cl.apellido,
    p.monto_prestamo,
    p.fecha_desembolso,
    p.fecha_vencimiento,
    ep.estado_prestamo
FROM 
    CLIENTES cl
JOIN 
    PRESTAMOS p ON cl.id_cliente = p.id_cliente
JOIN 
    ESTADOS_DE_PRESTAMO ep ON p.id_estado_prestamo = ep.id_estado_prestamo;

-- roles de emplados y sus agencias

SELECT 
    e.nombre AS nombre_empleado,
    e.apellido,
    r.rol AS rol_empleado,
    a.nombre AS nombre_agencia
FROM 
    EMPLEADOS e
JOIN 
    ROLES_DE_EMPLEADO r ON e.id_rol = r.id_rol
JOIN 
    AGENCIAS a ON e.id_agencia = a.id_agencia;

