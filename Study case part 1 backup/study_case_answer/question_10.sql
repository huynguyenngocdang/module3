select c.id, c.start_date, c.end_date, c.deposit,
count(cs.id) as `total service count`
from contract c
left join contract_service cs on c.id = cs.contract_id
group by c.id