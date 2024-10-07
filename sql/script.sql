-- Tabla CLIENTES
CREATE TABLE CLIENTES (
    id_cliente INTEGER CONSTRAINT clientes_id_cliente_pk PRIMARY KEY,
    nombre VARCHAR2(60) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(15) NOT NULL CONSTRAINT telefono_unico UNIQUE --telefono_unico es el id de la restriccion
);

-- Tabla TIPO_CUENTA
CREATE TABLE TIPOS_DE_CUENTA (
    id_tipo_cuenta INTEGER CONSTRAINT tipos_de_cuenta_id_tipo_cuenta_pk PRIMARY KEY,
    tipo_cuenta VARCHAR2(25) NOT NULL
);

-- Tabla CUENTAS
CREATE TABLE CUENTAS (
    numero_cuenta VARCHAR2(18) CONSTRAINT cuentas_numero_cuenta_pk PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    id_tipo_cuenta INTEGER NOT NULL,
    saldo NUMBER(15, 2) NOT NULL,
    CONSTRAINT cuentas_id_cliente_fk FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente), --vamos a trabajar con implementacion en tabla para las fk para poder adaptarlo màs facil
    CONSTRAINT cuentas_id_tipo_cuenta_fk FOREIGN KEY (id_tipo_cuenta) REFERENCES TIPOS_DE_CUENTA(id_tipo_cuenta)
);

-- Tabla DEPARTAMENTOS
CREATE TABLE DEPARTAMENTOS (
    id_departamento INTEGER CONSTRAINT departamentos_id_departamento_pk PRIMARY KEY,
    departamento VARCHAR2(15) NOT NULL CONSTRAINT departamento_unico UNIQUE
);

-- Tabla MUNICIPIOS
CREATE TABLE MUNICIPIOS (
    id_municipio INTEGER CONSTRAINT municipios_id_municipio_pk PRIMARY KEY,
    municipio VARCHAR2(20) NOT NULL,
    id_departamento INTEGER NOT NULL,
    CONSTRAINT municipios_id_departamento_fk FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento),
    CONSTRAINT municipio_departamento_unico UNIQUE (municipio, id_departamento) --validaciòn compuesta, para que no se repitan registros de municipios
);


-- Tabla TIPO_AGENCIA
CREATE TABLE TIPOS_DE_AGENCIA (
    id_tipo_agencia INTEGER CONSTRAINT tipos_de_agencia_id_tipo_agencia_pk PRIMARY KEY,
    tipo_agencia VARCHAR2(10) NOT NULL
);

-- Tabla AGENCIAS
CREATE TABLE AGENCIAS (
    id_agencia INTEGER CONSTRAINT agencias_id_agencia_pk PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    id_tipo_agencia INTEGER NOT NULL,
    id_municipio INTEGER NOT NULL,
    direccion VARCHAR2(100) NOT NULL,
    codigo_postal VARCHAR2(5) NOT NULL,
    telefono VARCHAR2(15) NOT NULL,
    CONSTRAINT agencias_id_tipo_agencia_fk FOREIGN KEY (id_tipo_agencia) REFERENCES TIPOS_DE_AGENCIA(id_tipo_agencia),
    CONSTRAINT agencias_id_municipio_fk FOREIGN KEY (id_municipio) REFERENCES MUNICIPIOS(id_municipio)
);

-- Tabla TIPO_TRANSACCION
CREATE TABLE TIPOS_DE_TRANSACCION (
    id_tipo_transaccion INTEGER CONSTRAINT tipos_de_transaccion_id_tipo_transaccion_pk PRIMARY KEY,
    tipo_transaccion VARCHAR2(25) NOT NULL
);

-- Tabla TRANSACCIONES
CREATE TABLE TRANSACCIONES (
    id_transaccion INTEGER CONSTRAINT transacciones_id_transaccion_pk PRIMARY KEY,
    id_cuenta_origen VARCHAR2(18) NOT NULL,
    id_cuenta_destino VARCHAR2(18) NOT NULL,
    id_tipo_transaccion INTEGER NOT NULL,
    monto NUMBER(15, 2) NOT NULL,
    fecha_hora TIMESTAMP(3) NOT NULL,
    descripcion VARCHAR2(100) NOT NULL,
    id_agencia INTEGER NOT NULL,
    CONSTRAINT transacciones_id_cuenta_origen_fk FOREIGN KEY (id_cuenta_origen) REFERENCES CUENTAS(numero_cuenta),
    CONSTRAINT transacciones_id_cuenta_destino_fk FOREIGN KEY (id_cuenta_destino) REFERENCES CUENTAS(numero_cuenta),
    CONSTRAINT transacciones_id_tipo_transaccion_fk FOREIGN KEY (id_tipo_transaccion) REFERENCES TIPOS_DE_TRANSACCION(id_tipo_transaccion),
    CONSTRAINT transacciones_id_agencia_fk FOREIGN KEY (id_agencia) REFERENCES AGENCIAS(id_agencia)
);

-- Tabla ESTADO_PRESTAMO
CREATE TABLE ESTADOS_DE_PRESTAMO (
    id_estado_prestamo INTEGER CONSTRAINT estados_de_prestamo_id_estado_prestamo_pk PRIMARY KEY,
    estado_prestamo VARCHAR2(12) NOT NULL
);

-- Tabla PRESTAMOS
CREATE TABLE PRESTAMOS (
    id_prestamo INTEGER CONSTRAINT prestamos_id_prestamo_pk PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    monto_prestamo NUMBER(15, 2) NOT NULL,
    tasa_interes NUMBER(5, 2) NOT NULL,
    fecha_desembolso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    saldo_pendiente NUMBER(15, 2) NOT NULL,
    id_estado_prestamo INTEGER NOT NULL,
    CONSTRAINT prestamos_id_cliente_fk FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    CONSTRAINT prestamos_id_estado_prestamo_fk FOREIGN KEY (id_estado_prestamo) REFERENCES ESTADOS_DE_PRESTAMO(id_estado_prestamo)
);

-- Tabla ESTADO_TARJETA
CREATE TABLE ESTADOS_DE_TARJETA (
    id_estado_tarjeta INTEGER CONSTRAINT estados_de_tarjeta_id_estado_tarjeta_pk PRIMARY KEY,
    estado VARCHAR2(12) NOT NULL
);


-- Tabla TARJETAS_CREDITO
CREATE TABLE TARJETAS_DE_CREDITO (
    id_tarjeta INTEGER CONSTRAINT tarjetas_credito_id_tarjeta_pk PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    numero_tarjeta VARCHAR2(20) NOT NULL,
    limite_credito NUMBER(15, 2) NOT NULL,
    saldo_actual NUMBER(15, 2) NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_expiracion DATE NOT NULL,
    id_estado_tarjeta INTEGER NOT NULL,
    fecha_corte DATE NOT NULL,
    dia_ciclo NUMBER(2) NOT NULL,
    CONSTRAINT tarjetas_de_credito_id_cliente_fk FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    CONSTRAINT tarjetas_de_credito_id_estado_tarjeta_fk FOREIGN KEY (id_estado_tarjeta) REFERENCES ESTADOS_DE_TARJETA(id_estado_tarjeta)
);


-- Tabla ROLES
CREATE TABLE ROLES_DE_EMPLEADO (
    id_rol INTEGER CONSTRAINT roles_id_rol_pk PRIMARY KEY,
    rol VARCHAR2(30) NOT NULL
);


-- Tabla EMPLEADOS
CREATE TABLE EMPLEADOS (
    id_empleado  INTEGER CONSTRAINT empleados_id_empleado_pk PRIMARY KEY,
    nombre VARCHAR2(60) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    id_rol INTEGER NOT NULL,
    id_departamento INTEGER NOT NULL,
    id_agencia INTEGER NOT NULL,
    telefono VARCHAR2(15) NOT NULL,
    CONSTRAINT empleados_id_rol_fk FOREIGN KEY (id_rol) REFERENCES ROLES_DE_EMPLEADO(id_rol),
    CONSTRAINT empleados_id_departamento_fk FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento),
    CONSTRAINT empleados_id_agencia_fk FOREIGN KEY (id_agencia) REFERENCES AGENCIAS(id_agencia)
);

