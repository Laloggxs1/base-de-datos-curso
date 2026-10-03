# Tarea 02 — solución corregida

Se conserva el ERD de la actividad, con estos detalles:

- cliente_id, cuenta_id y transaccion_id son PK de tipo UUID.
- cliente_id en Cuentas y from_account/to_account en Transacciones son FK de tipo UUID.
- Clientes: tax_id UNIQUE e is_active para baja lógica.
- Cuentas: saldo_actual con CHECK (saldo_actual >= 0) y updated_at para registrar modificaciones.
- Cuentas conserva moneda, tipo_cuenta y limite_credito; Clientes conserva sus datos de contacto y fecha de nacimiento.

Las FK deben tener un tipo compatible con la PK referenciada. No uso una relación directa entre Clientes y Transacciones.

## Cambios respecto al intento

Completo uuid, tax id único y campos de baja lógica.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

## Referencia

[Clave del profesor — Tarea 02](https://moodle.umsa.edu.mx/mod/resource/view.php?id=22070). Requiere acceso a Moodle.
