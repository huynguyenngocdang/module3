-- select * 
-- from service s
-- where 
-- 	not exists (
-- 	select 1
--     from contract_service cs
--     join contract c on cs.contract_id = c.id
--     where s.id = cs.service_id
--     and month(c.start_date) between 1 and 3
--     and year(c.start_date) = 2023
--     );
--     
    select *
    from service s
    where s.id NOT IN (
    select cs.id from contract_service cs
    join contract c on cs.contract_id = c.id
    where
	month(c.start_date) between 1 and 3
    and year(c.start_date) = 2023
    )

