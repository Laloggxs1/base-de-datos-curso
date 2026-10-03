-- Tarea 07: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=23174
INSERT INTO core.customers (first_name,last_name,email,phone,tax_id)
VALUES ('Humberto','López','hlopez@email.com','+52-55-4433-2211','TAX-990011')
ON CONFLICT (email) DO UPDATE SET
 first_name=EXCLUDED.first_name,
 last_name=EXCLUDED.last_name,
 phone=EXCLUDED.phone,
 is_active=true
RETURNING customer_id,email,is_active;
-- Conservar customer_id, tax_id y created_at en los registros ya existentes.
-- Se usa phone, como en el DDL del día 5; la clave del día 7 dice phone_number.
