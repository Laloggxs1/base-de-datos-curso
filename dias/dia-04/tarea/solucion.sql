CREATE DOMAIN monto_financiero AS
NUMERIC(15,2) CHECK (Value >= 0.00);


CREATE DOMAIN texto_obligatorio AS
varchar(100) CHECK (Value <> '' AND
LEGTH(TRIM(Value)) > 0);
