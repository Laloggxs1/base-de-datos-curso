# Actividad 09 — solución corregida

Corrijo FROM, comas, nombres de columnas y transactions en plural. Recorro las FK desde transactions a accounts y después a customers para obtener una fila por evento.

Uso LEFT JOIN para encontrar cuentas sin movimientos y distingo ese hecho de is_active. Para preservar todos los clientes con una cuenta de saldo positivo cuando exista, pongo a.balance>0 en ON. Moverlo a WHERE elimina a Alice y Humberto.

Los resultados esperados de la clave son 4 clientes, 5 cuentas y 4 movimientos. Se incluye una semilla didáctica de comprobación para reproducirlos.

## Cambios respecto al intento

Completo join y preservo cuentas y clientes sin eventos.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Actividad 09](https://moodle.umsa.edu.mx/mod/resource/view.php?id=24834). Requiere acceso a Moodle.
