SELECT
    account_number,
    account_type,
    balance
FROM core.accounts
WHERE balance >= 1000
ORDER BY balance DESC
LIMIT 2


SELECT first_name, last_name, email
FROM core.customers.
WHERE email ILIKE '@email.com';
