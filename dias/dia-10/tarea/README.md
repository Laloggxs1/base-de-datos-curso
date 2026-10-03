# Tarea 10 — solución corregida

Corrijo el bloque WITH y uso la muestra actual de la clave: 10000, 0, 0 y NULL. AVG ignora NULL: 10000/3=3333.33. AVG(COALESCE(x,0)) usa cuatro valores: 10000/4=2500.00.

Completo el reporte de cuentas CREDIT activas. LEFT JOIN conserva cuentas sin eventos; HAVING selecciona volumen bruto >=300 o ningún movimiento. ACCT-3001 tiene saldo almacenado 0 y volumen registrado 300.

No calculo SUM(balance) después de unir eventos ni invento una columna de límite de crédito que no existe en el DDL actual.

## Cambios respecto al intento

Corrijo promedio con null y completo reporte credit.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 10](https://moodle.umsa.edu.mx/mod/resource/view.php?id=25124). Requiere acceso a Moodle.
