# Checkpoint de continuidad

`Checkpoint-OmniBank.sql` prepara las tablas y datos de práctica para los días 9–14. Ejecutarlo una sola vez en una base nueva y vacía; se detiene si el esquema core ya existe. No ejecutarlo después de los scripts de integracion en la misma base.

```sh
psql -v ON_ERROR_STOP=1 -d omnibank_practica -f Checkpoint-OmniBank.sql
```

Después ejecutar el archivo solucion.sql del trabajo que se quiera comprobar. El estado inicial es 4 clientes, 5 cuentas y 4 movimientos; el saldo de ACCT-1001 es 4950. Los eventos tienen fechas de septiembre de 2026 para los ejercicios temporales.

Este checkpoint se incorporó desde el [archivo de referencia](https://github.com/Enriquee17/OmniBank/blob/main/Checkpoint-OmniBank.sql). Conserva los comentarios de origen. Los scripts de integracion siguen disponibles como la versión de práctica utilizada para los días 1–10; su fixture usa otras fechas y algunos identificadores/tipos de cuenta diferentes.

Comprobación local: checkpoint ejecutado desde cero en PGlite 0.5.8 y ocho scripts de los días 11–14 ejecutados correctamente. Se verificaron el porcentaje de cuentas inactivas (20), cuatro eventos en los reportes temporales, un evento superior al promedio de su cuenta, cuentas sin eventos, el efecto de NULL en NOT IN, cuatro cuentas activas y volumen 800 en las CTE, un par de movimientos en 48 horas, siete combinaciones de producto ausentes y tres cuentas activas sin depósito. Esto no mide rendimiento ni concurrencia en un servidor real.
