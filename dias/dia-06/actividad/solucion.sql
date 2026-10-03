CREATE TYPE core.loan_status_enum
AS Enum ('Paid', 'DEFAULTED', 'CANCELLED' [borde cortado]

BEGIN;

ALTER TABLE core.customers
ADD Column credit_score INTEGER;

ALTER TABLE core.customers
ADD Constraint chk_customers_credit_score_
    range
CHECK (credit_score BETWEEN 300 AND
    850);

ALTER TABLE core.accounts
ADD COLUMN iban VARCHAR(34);

ALTER TABLE core.accounts
ADD Constraint uq_accounts_iban
UNIQUE (iban);

ALTER TABLE core.loans
ALTER COLUMN status
TYPE core.loan_status_enum
USING status::core.loan_status_enum;

COMMIT;
