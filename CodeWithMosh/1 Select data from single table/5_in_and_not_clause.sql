use sql_store;
-- select * from customers where state in ('VA', 'FL', 'GA')

SELECT 
    *
FROM
    customers
WHERE
    state NOT IN ('VA' , 'FL', 'GA')