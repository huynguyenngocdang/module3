SELECT *
FROM service s
where 
s.id IN (
select distinct cs.service_id
from contract_service cs
join contract c on cs.contract_id = c.id
where year(c.start_date) = 2022)
AND s.id NOT IN (
select distinct cs.service_id
from contract_service cs
join contract c on cs.contract_id = c.id
where year(c.start_date) = 2023)
