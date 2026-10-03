SELECT
(SELECT COUNT(*) core.customers) AS customer
    count,
(SELECT COUNT(*) FROM core.accounts) AS accounts
    count
(SELECT COUNT(*) FROM core.transaction) AS
    transactions_count

SELECT
    t.transaction.id,
    c.first_name,
    c.last_name,
    a.account_number,
    a.account_number
    t.tx_type
    t.amount
FROM core.transaction AS t
INNER JOIN core.accounts AS a
    ON t.account_id = a.account_id
INNER JOIN core.customers AS c
    ON a.customer_id = c.customer_id
ORDER BY
    t.tx_time stamp,
    t.transaction_id,
