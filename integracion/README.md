# Ejecución de práctica y diferencias entre etapas

Usar una base vacía de PostgreSQL con permiso de CREATE SCHEMA, CREATE TYPE y CREATE TABLE. Los scripts de tipos, tablas y migración se ejecutan una sola vez. No ejecutarlos contra datos reales.

Orden:

1. `01_tipos.sql`
2. `02_dominios.sql`
3. `03_tablas.sql`
4. `04_migracion.sql`
5. `05_datos_iniciales.sql`
6. `06_kyc.sql`
7. `07_checkpoint_dias_08_a_10.sql`
8. Consultas `solucion.sql` de las actividades/tareas de los días 8, 9 y 10.

Ejemplo con psql, desde la raíz del repositorio:

```sh
psql -v ON_ERROR_STOP=1 -d omnibank_practica -f integracion/01_tipos.sql
```

Repetir el comando con los archivos siguientes en ese orden. La creación del servidor y de la base no está incluida. Cada trabajo conserva su propio código en `dias/`; esta carpeta reúne los pasos para ejecutarlos en una base coherente.

## Decisiones de integración

- Los días 1 y 2 usan un modelo conceptual con cuenta origen/destino; el DDL actual del día 5 usa un account_id por evento y agrega loans. No se mezclan ambos esquemas.
- El día 5 define phone; el UPSERT de la clave del día 7 menciona phone_number. Se conserva phone en el código corregido.
- Los dominios del día 4 se crean, pero el DDL del día 5 conserva NUMERIC y sus CHECK, como en su clave.
- La semilla del día 7 de la clave no evita repetir transacciones ni cobrar otra vez. Se usaron UUID estables y un UPDATE condicionado a la inserción de la comisión, todo dentro de una transacción.
- Las claves actuales de los días 9 y 10 esperan cuatro clientes, cinco cuentas y cuatro eventos. Como la descarga disponible contiene claves pero no la semilla oficial completa, se añadió un fixture identificado expresamente como didáctico: dos cuentas sin movimientos, Humberto sin cuenta, un depósito de Alice y un retiro sin descripción. No se atribuye este fixture al profesor.
- Los datos de prueba no modelan un libro contable completo: balance almacenado y suma de amount son medidas diferentes. TRANSFER no permite inferir destinatario desde description.
- Tarea 5 desactiva un cliente como ejemplo y Tarea 6 agrega una restricción en dos fases. Son ejercicios separados; no deben ejecutarse como preparación de los reportes antes de medir los resultados previstos.

## Controles esperados

| Control | Resultado |
|---|---|
| Clientes / cuentas / eventos | 4 / 5 / 4 |
| Producto cartesiano | 80 combinaciones |
| Candidatos de revisión día 8 | 3 eventos |
| Cuentas sin movimientos | ACCT-1002 inactiva, ACCT-3002 activa |
| Cuentas activas / saldo | 4 / 19950.00 |
| Volumen bruto de eventos | 800.00 |
| AVG ignora NULL / convierte a cero | 3333.33 / 2500.00 |
| Repetir semilla del día 7 | 3 clientes, 3 cuentas, 3 eventos; saldo John 4950.00 |

[Resultado de la comprobación local](VALIDACION.md).
