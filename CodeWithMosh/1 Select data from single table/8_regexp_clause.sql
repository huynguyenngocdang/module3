-- SELECT 
--     *
-- FROM
--     customers
-- WHERE
--     last_name LIKE '%field%'
    
--     select * from customers where last_name regexp 'field$'
    
    -- select * from customers where last_name regexp 'field|mac|rose'
    
    -- customer contain ge, ie, me
--     select * from customers where last_name regexp '[gim]e'
    
    -- ^ beginning
    -- $ end
    -- | logical or
    -- [] represent 1 character
    -- [a-f] character from a - f
    
--     select * from customers where first_name regexp 'elka|ambur'    
-- select * from customers where last_name regexp 'ey$|on$'
-- select * from customers where last_name regexp '^my|se'
select * from customers where last_name regexp 'b[r|u]'