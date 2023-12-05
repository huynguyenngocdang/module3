use sql_hr;

SELECT 
    e.employee_id, e.first_name, e.last_name, salary
FROM
    employees e
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees e)