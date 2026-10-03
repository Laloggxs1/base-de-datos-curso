# Tarea 06 — solución corregida

La respuesta original trataba un exceso de conexiones. La clave describe otro incidente: un ADD CONSTRAINT que mantiene un bloqueo ACCESS EXCLUSIVE mientras valida el histórico, impidiendo accesos a la tabla.

La corrección divide el trabajo: agregar el CHECK con NOT VALID y confirmar; después, en otra transacción, ejecutar VALIDATE CONSTRAINT. La primera etapa evita el escaneo histórico inicial, aunque necesita un bloqueo DDL breve. La segunda usa SHARE UPDATE EXCLUSIVE y permite lecturas y escritura ordinarias compatibles.

No prometo tiempos fijos ni ausencia total de esperas. Hay que revisar los datos existentes y la carga del servidor. La validación es una sentencia normal que espera a terminar; no es una tarea asíncrona automática.

## Cambios respecto al intento

Corrijo diagnóstico y separo not valid de validate.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 06](https://moodle.umsa.edu.mx/mod/resource/view.php?id=23172). Requiere acceso a Moodle.

[PostgreSQL: ALTER TABLE](https://www.postgresql.org/docs/18/sql-altertable.html).
