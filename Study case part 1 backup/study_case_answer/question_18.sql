SET SQL_SAFE_UPDATES = 0;

UPDATE customer AS c
SET c.is_delete = 1
WHERE EXISTS (
    SELECT 1
    FROM contract con
    WHERE con.customer_id = c.id
      AND YEAR(con.start_date) < 2022
);

-- UPDATE contract AS con
-- SET con.is_delete = 1
-- WHERE YEAR(con.start_date) < 2022;

-- UPDATE contract_service AS cs
-- SET cs.is_delete = 1
-- WHERE EXISTS (
--     SELECT 1
--     FROM contract con
--     WHERE con.id = cs.contract_id
--       AND YEAR(con.start_date) < 2022
-- );
SET SQL_SAFE_UPDATES = 1;