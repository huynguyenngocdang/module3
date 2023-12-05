select 
month(c.start_date) as `month`,
count(distinct customer_id) as `number of customer`,
sum(cs.quantity * s.price) as `service profit`,
sum(
	case 
    when f.rent_type_id = 1 then f.cost * timestampdiff(hour, c.end_date, c.start_date)
    when f.rent_type_id= 2 then f.cost * datediff( c.end_date, c.start_date)
    when f.rent_type_id = 3 then f.cost * timestampdiff(month, c.end_date, c.start_date)
    when f.rent_type_id = 4 then f.cost * timestampdiff(year, c.end_date, c.start_date)
    else 0
    end 
    ) as `rent_profit`
from contract c
join  customer cu on c.customer_id = cu.id
join facility f on c.facility_id = f.id
join contract_service cs on cs.contract_id = c.id
join service s on cs.service_id = s.id
where year(c.start_date) = 2023 and f.rent_type_id = 2
group by month(c.start_date)

-- select 
-- month(c.start_date) as `month`,
-- count(distinct customer_id) as `number of customer`,
-- sum(cs.quantity * s.price) as `service profit`,
-- sum(f.cost * timestampdiff(month, c.end_date, c.start_date) as `monthly rent profit`
-- from contract c
-- join  customer cu on c.customer_id = cu.id
-- join facility f on c.facility_id = f.id
-- join contract_service cs on cs.contract_id = c.id
-- join service s on cs.service_id = s.id
-- where year(c.start_date) = 2023 and f.facility_type_id = 1
-- group by month(c.start_date)