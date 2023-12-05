select c.id, c.name, con.id, s.name, con.start_date, con.end_date  from customer c
left join customer_type ct on c.customer_type_id = ct.id
left join contract con on c.id = con.customer_id
left join contract_service cs on cs.contract_id = con.id
left join service s on cs.service_id = s.id