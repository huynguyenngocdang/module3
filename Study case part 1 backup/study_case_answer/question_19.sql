SET SQL_SAFE_UPDATES = 0;

UPDATE service
SET price = price * 2
WHERE id IN (
--     SELECT id
--     FROM (
--         SELECT s.id
--         FROM service s
--         JOIN contract_service cs ON s.id = cs.service_id
--         JOIN contract c ON c.id = cs.contract_id
--         WHERE YEAR(c.start_date) = 2022
--         GROUP BY s.id
--         HAVING SUM(cs.quantity) > 10
--     ) AS temp
	select id
	from (
			SELECT s.id
			FROM service s
			where id = ANY (
				select s.id
				from service s
				join contract_service cs on s.id = cs.service_id
				join contract c on c.id = cs.contract_id
				where year(c.start_date) = 2022
				group by s.id
				having sum(cs.quantity) > 10 
			) 
	) as emp
);

SET SQL_SAFE_UPDATES = 1;

-- select service.id
-- from service
-- where id = ANY (
-- select s.id
-- from service s
-- join contract_service cs on s.id = cs.service_id
-- join contract c on c.id = cs.contract_id
-- where year(c.start_date) = 2022
-- group by s.id
-- having sum(cs.quantity) > 10 
-- )