# Tarea 07 — solución inicial

Sincronizando resiliente del pipeline KYC con UPSERT

1. Análisis del problema
El método Read-Before-Write es insuficiente pq primero ejecuta un SELECT para comprobar si el cliente existe y después realizar un Insert o update.

Con un millón de registros, la cantidad de operaciones aumenta mucho y el pipeline tarda demasiado.

Además, existen condiciones de carrera: dos servidores pueden consultar al mismo tiempo detectar que un cliente no existe.

2. UPSERT para KYC
```sql
Insert INTO core.customers
(id, first_name, last_name, email, phone)
values
('[UUID de cuatros: cantidad de dígitos dudosa]',
 'Carlos'
 'Martinez'
 'Carlos@gmail.com
 '555-0400'
)
On Conflict (email)
Do Update SET
    first_name = Executed.first_name,
    last_name Executed.first.last_name
    Phone = EXECUTED.PHONE
RETURNING id, email;
```
Nota: Se transcribe Executed/EXECUTED, como está escrito, sin cambiarlo a EXCLUDED. El primer UUID tiene dígitos poco claros; la comilla final del correo y algunos separadores no son visibles.
