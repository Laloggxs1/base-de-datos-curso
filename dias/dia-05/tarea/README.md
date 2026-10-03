# Tarea 05 — solución corregida

Rechazo ON DELETE CASCADE en las relaciones principales del ejercicio porque borrar un cliente o cuenta podría eliminar registros dependientes que se necesitan para revisar el historial.

Uso ON DELETE RESTRICT y bajas lógicas con is_active=false. El ejemplo SQL conserva las filas y desactiva al cliente y sus cuentas en una transacción.

RESTRICT solo impide borrar si existen referencias dependientes; no bloquea por sí solo todo DELETE. Para prohibir el borrado físico hacen falta permisos y una política de acceso adicional. Las limpiezas de pruebas deben hacerse en una base separada.

## Cambios respecto al intento

Documento restrict y baja lógica sin eliminar historial.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 05](https://moodle.umsa.edu.mx/mod/resource/view.php?id=23167). Requiere acceso a Moodle.
