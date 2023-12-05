select s.name, sum(cs.quantity) as service_count
from contract_service cs
join service s on cs.service_id = s.id
group by s.id
order by service_count desc