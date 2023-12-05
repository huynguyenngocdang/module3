select c.id, e.name as `employee_name` , cus.name as `customer_name`, cus.phone_number, s.name,
sum(cs.quantity), sum(c.deposit)
 from contract c
join employee e on c.employee_id = e.id
join customer cus on c.customer_id = cus.id
join contract_service cs on cs.contract_id = c.id
join service s on s.id = cs.service_id

where 
	(month(c.start_date) between 1 and 6)
    and year(c.start_date) = 2023
    and not exists (
		select 1
        from contract_service cs2 
        join contract c2 on cs2.contract_id = c2.id
        where(month(c2.start_date) between 10 and 12)
		and year(c2.start_date) = 2022
        and cs2.id = cs.id
    )
   group by c.id, cs.id 

