-- select employees whose salary is above average salary in same office

use sql_hr;
select *
from employees e
where salary > (
	select avg(salary)
    from employees
    where office_id = e.office_id
)