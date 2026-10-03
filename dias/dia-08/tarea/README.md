# Tarea 08 — solución inicial

Código SQL

```sql
SELECT transaction_id, amount, tx_type, tx_timestamp,
COALESCE(description,
 'Exclusion oportunamente DETECTADA sin motivo de pago')
 AS description_monitoreada

FROM core.transactions

WHERE
(amount >= 10000.00 AND tx_type IN ('Transfer'
 'withDrawl'))
OR
(description ILIKE '%crypto%'
 description ILIKE '%offshare%'
 description ILIKE '%shell%'
 description ILIKE '%casino%'
OR
(NULLIF(TRIM(description), '') IS NULL
 AND tx_type = 'Deposit')
ORDER BY amount DESC;
```
Nota: Se mantienen los términos, operadores y paréntesis visibles, sin añadir OR entre los filtros ni completar los cierres. La lectura de withDrawl y offshare es dudosa.
