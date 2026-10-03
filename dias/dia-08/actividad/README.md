# Actividad 08 — solución inicial

1.
```sql
SELECT
    account_number,
    account_type,
    balance
FROM core.accounts
WHERE balance >= 1000
ORDER BY balance DESC
LIMIT 2
```

2.
```sql
SELECT first_name, last_name, email
FROM core.customers.
WHERE email ILIKE '@email.com';
```
Nota: La cifra tras LIMIT se lee como 2, sobre una marca de tinta. El punto después de customers se conserva.
