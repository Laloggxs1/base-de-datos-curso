# Actividad 07 — solución corregida

Completo INSERT INTO, nombres de columnas, UUID y separadores. Inserto clientes, cuentas y movimientos; uso ON CONFLICT y RETURNING.

Además de evitar clientes y cuentas duplicados, asigno UUID estables a los eventos. El UPDATE descuenta 50 solo cuando se inserta por primera vez el evento de comisión. Repetir el script no vuelve a cobrar ni duplica los movimientos. Este ajuste resuelve la falta de idempotencia de esos pasos en la clave.

## Cambios respecto al intento

Completo semilla y evito duplicados y cobros repetidos.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Actividad 07](https://moodle.umsa.edu.mx/mod/resource/view.php?id=23173). Requiere acceso a Moodle.
