Insert INTO core.customers
(id, first_name, last_name, email, phone)
values
('[UUID de cuatros: cantidad de dígitos dudosa]',
 'Carlos'
 'Martinez'
 'Carlos@gmail.com
 '555-0400'
)
On Conflict (email)
Do Update SET
    first_name = Executed.first_name,
    last_name Executed.first.last_name
    Phone = EXECUTED.PHONE
RETURNING id, email;
