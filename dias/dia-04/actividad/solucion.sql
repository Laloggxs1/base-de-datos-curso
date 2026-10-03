-- Actividad 04: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=22844
CREATE SCHEMA IF NOT EXISTS core;
CREATE TYPE core.tipo_moneda AS ENUM ('USD', 'EUR', 'MXN', 'GBP');
CREATE TYPE core.tipo_cuenta AS ENUM ('CHECKING', 'SAVINGS', 'CREDIT');
CREATE TYPE core.tipo_transaccion AS ENUM ('DEPOSIT', 'WITHDRAWAL', 'TRANSFER');
-- Saldo: NUMERIC(15,2); fechas de modificación: TIMESTAMPTZ.
-- Todas las PK y sus FK correspondientes usan UUID.
