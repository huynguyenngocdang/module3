
select 
 cs.service_id, s.name
from service s
join contract_service cs on s.id = cs.service_id
group by cs.service_id
having count(cs.service_id) = 1;

select cs.service_id, s.name from service s
join contract_service cs on s.id = cs.service_id
