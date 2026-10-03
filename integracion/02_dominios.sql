-- Tarea 04: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=22845
CREATE DOMAIN monto_financiero AS NUMERIC(15,2)
    CHECK (VALUE >= 0.00);
CREATE DOMAIN texto_obligatorio AS VARCHAR(100)
    CHECK (VALUE <> '' AND LENGTH(TRIM(VALUE)) > 0);
-- monto_financiero se puede usar en saldo, límite de crédito y monto.
-- El dominio no sustituye NOT NULL: CHECK permite un resultado desconocido.
