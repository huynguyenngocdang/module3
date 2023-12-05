use sql_store;
-- select * from customers
-- where birth_date > '1990-01-01' or points > 1000 and state ='VA'

select * from customers
where state collate utf8mb4_general_ci = 'va'