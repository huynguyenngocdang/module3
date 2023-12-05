SET SQL_SAFE_UPDATES = 0;

UPDATE employee AS e
LEFT JOIN contract AS c ON e.id = c.employee_id AND YEAR(c.start_date) BETWEEN 2022 AND 2023

SET e.is_delete = 1
WHERE c.id IS NULL;

SET SQL_SAFE_UPDATES = 1;
