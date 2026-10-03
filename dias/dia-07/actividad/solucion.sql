BEGIN;

Inserto core.customers.
(id, first_name, last_name, email, phone, tax_id
 date_of_birth)
VALUES
('[UUID de unos: cantidad de dígitos dudosa]',
 'John', 'Doe', 'John.doe@gmail.com',
 '555-0100', 'Tax-100', '1985-04-12' [borde cortado]

('22222222-2222-2222-2222-222222222222'
 'Jane', 'Smith', 'Jane.smith@gmail.com', '555-0200'
 'Tax-200', '1990-08-25');

('33333333-3333-3333-3333-333333333333'
 'Alice', 'Johnson', 'alice.j@gmail.com', '555-0300'
 'TAX-300', '1978-11-05'),

ON CONFLICT ('1978-11-05')
