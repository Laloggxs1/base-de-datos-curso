Monedas: CREATE TYPE moneda AS Enum
('USD', 'Eur', 'Mxn');

Cuentas: CREATE TYPE tipo_cuenta AS Enum
('cheking', 'savings', 'credit');

Movimientos: CREATE TYPE tipo_transaccion
AS Enum ('Deposit', 'withdrawal', 'Transfer');
