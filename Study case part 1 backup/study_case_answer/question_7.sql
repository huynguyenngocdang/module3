
SELECT *
FROM contract_service cs
JOIN contract c ON cs.contract_id = c.id
JOIN service s ON s.id = cs.service_id
WHERE YEAR(c.start_date) = 2022
  AND NOT EXISTS (
    SELECT 1
    FROM contract_service cs2
    JOIN contract c2 ON cs2.contract_id = c2.id
    JOIN service s2 ON s2.id = cs2.service_id
    WHERE YEAR(c2.start_date) = 2023
AND s.id = s2.id
  );


