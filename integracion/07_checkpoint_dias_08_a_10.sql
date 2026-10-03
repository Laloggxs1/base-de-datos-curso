-- Fixture didáctica preparada para comprobar los resultados de las claves actuales.
-- No es una descarga de la semilla oficial ni evidencia de ejecución en producción.
-- Ejecutar después de 05_datos_iniciales.sql y 06_kyc.sql en una base de práctica.
BEGIN;
INSERT INTO core.accounts (account_id,customer_id,account_number,account_type,balance,is_active)
SELECT v.account_id::uuid,c.customer_id,v.account_number,v.kind::core.tipo_cuenta,0,v.active
FROM (VALUES
('dddddddd-dddd-dddd-dddd-dddddddddddd','john.doe@email.com','ACCT-1002','CHECKING',false),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee','alice.j@email.com','ACCT-3002','SAVINGS',true)
) AS v(account_id,email,account_number,kind,active)
JOIN core.customers c ON c.email=v.email
ON CONFLICT (account_number) DO NOTHING;

INSERT INTO core.transactions (transaction_id,account_id,tx_type,amount,tx_timestamp,description)
SELECT '10000000-0000-0000-0000-000000000004',account_id,'DEPOSIT',300,
       '2026-01-01 13:00:00+00','Depósito histórico didáctico'
FROM core.accounts WHERE account_number='ACCT-3001'
ON CONFLICT (transaction_id) DO NOTHING;

-- El caso sin descripción reproduce el retiro mencionado en la clave del día 8.
UPDATE core.transactions SET description=NULL
WHERE transaction_id='10000000-0000-0000-0000-000000000003';
COMMIT;
