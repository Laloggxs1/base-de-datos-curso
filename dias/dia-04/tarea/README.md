# Tarea 04 — solución inicial

Diseño de dominios customizados

1. Sentencias definitivas, creación de dominios

A) Dominio Monetario Bancario
```sql
CREATE DOMAIN monto_financiero AS
NUMERIC(15,2) CHECK (Value >= 0.00);
```

B) Dominio de fiscal
```sql
CREATE DOMAIN texto_obligatorio AS
varchar(100) CHECK (Value <> '' AND
LEGTH(TRIM(Value)) > 0);
```

2. Indicación en dónde emplearemos el dominio monto_financiero
- Saldo de la tabla (Cuentas).
- límite_crédito de la tabla (Cuentas).
- Monto de tabla (Transacciones).
Nota: El nombre de la función aparece escrito como LEGTH; no se corrigió a LENGTH.
