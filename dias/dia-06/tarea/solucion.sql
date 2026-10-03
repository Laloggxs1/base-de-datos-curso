-- Tarea 06: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=23172
-- Ejecutar la fase 1 y confirmar antes de iniciar la fase 2.
BEGIN;
ALTER TABLE core.transactions
ADD CONSTRAINT chk_transactions_description_valid
CHECK (LENGTH(TRIM(description)) >= 5) NOT VALID;
COMMIT;

-- Otra transacción: comprobar/corregir antes cualquier dato histórico inválido.
BEGIN;
ALTER TABLE core.transactions
VALIDATE CONSTRAINT chk_transactions_description_valid;
COMMIT;
-- NULL pasa este CHECK; la regla no exige NOT NULL.
-- NOT VALID evita el escaneo inicial, pero no elimina el bloqueo DDL breve.
