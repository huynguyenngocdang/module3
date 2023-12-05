select id, name, email, phone_number, date_of_birth, address, 'customer' as record_type

from customer

union

select id, name, email, phone_number, date_of_birth, address, 'employee' as record_type

from employee