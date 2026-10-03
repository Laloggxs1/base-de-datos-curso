# Actividad 03 — solución corregida

Primero separo los datos combinados: cliente_nombre_y_contacto en nombre, email y teléfono; moneda_y_tipo en moneda y tipo_cuenta.

Después organizo cuatro tablas:

| Tabla | Campos |
|---|---|
| Sucursales | sucursal_id PK, dirección |
| Clientes | cliente_id PK, nombre, email, teléfono |
| Cuentas | cuenta_numero PK, cliente_id FK, sucursal_id FK, moneda, tipo_cuenta, saldo_actual |
| Transacciones | transaccion_id PK, cuenta_numero FK, fecha_tx, monto_tx |

Separar Sucursales evita repetir su dirección en cada cuenta o movimiento. Separar Clientes evita repetir sus datos por transacción. Todas las columnas contienen un dato atómico. Se pueden usar UUID como identificadores.

## Cambios respecto al intento

Completo normalización con sucursales, cuentas y transacciones.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

## Referencia

[Clave del profesor — Actividad 03](https://moodle.umsa.edu.mx/mod/resource/view.php?id=22563). Requiere acceso a Moodle.
