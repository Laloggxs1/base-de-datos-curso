# Actividad 05 — solución inicial

Levantando los cimientos del core bancario OmniBank

```sql
CREATE SCHEMA IF NOT EXIST core;
```

2. Entidad raíz
```sql
CREATE TABLE core.customers (
    cliente_id UUID DEFAULT gen_random_uuid(),
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    tax_id VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_
        TIMESTAMP NOT NULL,
    is_active Boolean DEFAULT true NOT NULL,

    CONSTRAINT pk_clientes PRIMARY KEY
        (cliente_id),
    CONSTRAINT uq_clientes_email UNIQUE
        (email)
);
```

3. Entidades hijas
```sql
CREATE TABLE core.accounts (
    orden_id UUID DEFAULT gen_random_uuid(),
    cliente_id UUID NOT NULL,
    tipo tipo_cuenta DEFAULT 'CHECKING' NOT NULL,
    saldo monto_financiero NOT NULL,
```
Nota: IMG_1313.JPEG está guardada en 5/Tar, pero el encabezado "3. Entidades hijas" y el código core.accounts continúan la Actividad 5. Se incluyó aquí sin mover el archivo original. El código termina en una coma en la foto; no se añadieron líneas ni cierres.
