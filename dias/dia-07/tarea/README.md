# Tarea 07 — solución corregida

Read-Before-Write necesita consultar y después escribir; dos procesos pueden observar simultáneamente que un cliente no existe y competir por insertarlo.

Uso INSERT ... ON CONFLICT (email) DO UPDATE con EXCLUDED para actualizar los valores recibidos. RETURNING devuelve el identificador, correo y estado sin una consulta posterior.

Corrijo EXECUTED por EXCLUDED y uso customer_id. La clave dice phone_number, pero el DDL del día 5 define phone; aquí mantengo phone para que el proyecto ejecute. No cambio el UUID ni created_at de un cliente existente.

## Cambios respecto al intento

Corrijo upsert con excluded, phone y returning.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 07](https://moodle.umsa.edu.mx/mod/resource/view.php?id=23174). Requiere acceso a Moodle.

[PostgreSQL: INSERT y ON CONFLICT](https://www.postgresql.org/docs/18/sql-insert.html).
