select distinct s.id, s.name, cus.name, ct.name as `customer_type`,  cus.address
from service s 
join contract_service cs on s.id = cs.service_id
join contract c on c.id = cs.contract_id
join customer cus on cus.id = c.customer_id
join customer_type ct on cus.customer_type_id = ct.id
where ct.name like 'diamond'
and cus.address like 'da lat'
