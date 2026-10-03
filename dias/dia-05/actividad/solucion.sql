CREATE SCHEMA IF NOT EXIST core;


CREATE TABLE core.customers (
    cliente_id UUID DEFAULT gen_random_uuid(),
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    tax_id VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_
        TIMESTAMP NOT NULL,
    is_active Boolean DEFAULT true NOT NULL,

    CONSTRAINT pk_clientes PRIMARY KEY
        (cliente_id),
    CONSTRAINT uq_clientes_email UNIQUE
        (email)
);


CREATE TABLE core.accounts (
    orden_id UUID DEFAULT gen_random_uuid(),
    cliente_id UUID NOT NULL,
    tipo tipo_cuenta DEFAULT 'CHECKING' NOT NULL,
    saldo monto_financiero NOT NULL,
