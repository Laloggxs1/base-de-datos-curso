# Tarea 09 — solución corregida

Cuento primero cada tabla y calculo solo COUNT(*) del CROSS JOIN: 4×5×4=80 combinaciones. No son 80 operaciones bancarias.

El reporte correcto une account_id y customer_id, filtra clientes activos y montos >=100, y ordena por tx_timestamp y transaction_id. En la semilla devuelve tres eventos. El número de combinaciones por sí solo no determina tiempo, memoria ni plan de ejecución.

## Cambios respecto al intento

Corrijo producto cartesiano y reporte con claves reales.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 09](https://moodle.umsa.edu.mx/mod/resource/view.php?id=24836). Requiere acceso a Moodle.
