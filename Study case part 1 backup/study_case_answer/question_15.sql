select e.id, e.name, d.name, ed.name, e.phone_number, e.address, count(c.id) as `number of contract`
from employee e
left join contract c on c.employee_id = e.id and year(c.start_date) between 2022 and 2023
left join division d on d.id = e.division_id
left join education_degree ed on ed.id = e.education_degree_id

group by e.id
having count(c.id) <= 3