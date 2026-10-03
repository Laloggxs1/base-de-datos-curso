SELECT
    account_type
    count(*) AS cantidad_cuentas
    SUM(balance) AS saldo_total
    MIN(balance) AS saldo_Minimo
    MAX(balance) AS saldo_Maximo
    AVG(balance) AS saldo_promedio
FROM core.accounts
WHERE is_active = true
GROUP BY account_type
ORDER BY saldo_total DESC, account_type;


SELECT c.customer_id
    c.name
    c.email
    COUNT(t.transaction_id) AS cantidad_movimientos,
    COALESCE(SUM(t.amount), 0) AS volumen_bruto
FROM core.account a ON
LEFT JOIN core.customers c
LEFT JOIN core.transactions AS
GROUP BY
    c.customers by
    c.email
HAVING
    COUNT(t.transaction_id) >= 2
