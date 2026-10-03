-- Tarea 05: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=23167
-- Ejemplo con el UUID de John de la semilla didáctica.
BEGIN;
UPDATE core.customers SET is_active = false
WHERE customer_id = '11111111-1111-1111-1111-111111111111';
UPDATE core.accounts SET is_active = false, updated_at = CURRENT_TIMESTAMP
WHERE customer_id = '11111111-1111-1111-1111-111111111111';
COMMIT;
-- ON DELETE RESTRICT bloquea eliminaciones que tengan filas dependientes.
-- Para impedir todo DELETE físico también se necesitan permisos/política de acceso.
