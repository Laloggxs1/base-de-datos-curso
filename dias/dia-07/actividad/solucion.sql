-- Actividad 07: corrección basada en la clave del profesor.
-- Fuente: https://moodle.umsa.edu.mx/mod/resource/view.php?id=23173
-- Semilla didáctica. Se puede repetir sin duplicar eventos ni cobrar dos veces.
BEGIN;
INSERT INTO core.customers (customer_id,first_name,last_name,email,phone,tax_id)
VALUES
('11111111-1111-1111-1111-111111111111','John','Doe','john.doe@email.com','555-0100','TAX-100'),
('22222222-2222-2222-2222-222222222222','Jane','Smith','jane.smith@email.com','555-0200','TAX-200'),
('33333333-3333-3333-3333-333333333333','Alice','Johnson','alice.j@email.com','555-0300','TAX-300')
ON CONFLICT (email) DO NOTHING;

-- Resolver los titulares por email evita depender de un UUID previo diferente.
INSERT INTO core.accounts (account_id,customer_id,account_number,account_type,balance)
SELECT v.account_id::uuid,c.customer_id,v.account_number,v.account_type::core.tipo_cuenta,v.balance
FROM (VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa','john.doe@email.com','ACCT-1001','CHECKING',5000.00),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','jane.smith@email.com','ACCT-2001','SAVINGS',15000.00),
('cccccccc-cccc-cccc-cccc-cccccccccccc','alice.j@email.com','ACCT-3001','CREDIT',0.00)
) AS v(account_id,email,account_number,account_type,balance)
JOIN core.customers c ON c.email=v.email
ON CONFLICT (account_number) DO NOTHING;

INSERT INTO core.transactions (transaction_id,account_id,tx_type,amount,tx_timestamp,description)
SELECT v.transaction_id::uuid,a.account_id,'TRANSFER',v.amount,v.ts::timestamptz,v.description
FROM (VALUES
('10000000-0000-0000-0000-000000000001','ACCT-1001',150.00,'2026-01-01 10:00:00+00','Pago de cena a Jane'),
('10000000-0000-0000-0000-000000000002','ACCT-2001',300.00,'2026-01-01 11:00:00+00','Abono a tarjeta de crédito de Alice')
) AS v(transaction_id,account_number,amount,ts,description)
JOIN core.accounts a ON a.account_number=v.account_number
ON CONFLICT (transaction_id) DO NOTHING;

-- Cobrar solo cuando se inserta por primera vez el evento de comisión.
WITH inserted_fee AS (
 INSERT INTO core.transactions (transaction_id,account_id,tx_type,amount,tx_timestamp,description)
 SELECT '10000000-0000-0000-0000-000000000003',account_id,'WITHDRAWAL',50.00,
        '2026-01-01 12:00:00+00','Comisión mensual por manejo de cuenta'
 FROM core.accounts WHERE account_number='ACCT-1001'
 ON CONFLICT (transaction_id) DO NOTHING
 RETURNING account_id,amount
)
UPDATE core.accounts a SET balance=a.balance-f.amount,updated_at=CURRENT_TIMESTAMP
FROM inserted_fee f
WHERE a.account_id=f.account_id AND a.account_number='ACCT-1001'
RETURNING a.account_number,a.balance;
COMMIT;
