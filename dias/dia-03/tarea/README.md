# Tarea 03 — solución corregida

El saldo almacenado puede ser redundante respecto de un historial completo de movimientos. Si se guarda por rendimiento, debe mantenerse sincronizado con el registro de movimientos.

Mantener saldo_actual permite consultar el saldo sin sumar todo el historial cada vez. Para actualizarlo, el movimiento y el cambio de saldo deben ejecutarse dentro de la misma transacción ACID, usando bloqueos de fila cuando corresponda. También se deben limitar las modificaciones directas y comprobar inconsistencias.

La clave plantea esto como desnormalización controlada. Que un dato sea calculable no prueba por sí solo una violación de 3NF: las formas normales se analizan mediante dependencias funcionales. Tampoco una semilla parcial de movimientos permite reconstruir necesariamente el saldo almacenado.

## Cambios respecto al intento

Preciso saldo almacenado y sincronización transaccional.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

## Referencia

[Clave del profesor — Tarea 03](https://moodle.umsa.edu.mx/mod/resource/view.php?id=22564). Requiere acceso a Moodle.
