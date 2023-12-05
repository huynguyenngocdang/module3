use sql_store;
-- SELECT 
--     *
-- FROM
--     customers
-- WHERE
--     points >= 1000 AND points <= 3000

-- select *
-- from customers
-- where points between 1000 and 3000

select *
from customers
where birth_date between '1990-01-01' and '2000-01-01'