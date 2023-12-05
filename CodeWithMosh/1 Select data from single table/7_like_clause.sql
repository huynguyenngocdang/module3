use sql_store;

-- select * from customers
-- where last_name like '%b%'

-- SELECT 
--     *
-- FROM
--     customers
-- WHERE
--     last_name LIKE '_____y'
    -- % any number of characters
    -- _ for single character
    
    select * from customers where address like '%trail%' or address like '%avenue%'