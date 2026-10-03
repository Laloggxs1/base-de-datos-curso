# Actividad 10 — solución corregida

Agrego las comas y alias faltantes. Calculo los saldos por tipo directamente desde accounts activas, para no multiplicarlos al unir movimientos.

Para actividad por cliente uso LEFT JOIN, COUNT(transaction_id), COALESCE(SUM(amount),0) y HAVING. COUNT(*) contaría una fila externa aunque no exista movimiento.

La comprobación separa métricas: cuatro cuentas activas suman 19950 de saldo almacenado; cuatro eventos suman 800 de volumen bruto. Son medidas distintas. John tiene dos eventos y volumen 200; Jane y Alice tienen 300 cada una.

## Cambios respecto al intento

Separo agregados de saldos y actividad con having.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Actividad 10](https://moodle.umsa.edu.mx/mod/resource/view.php?id=25123). Requiere acceso a Moodle.
