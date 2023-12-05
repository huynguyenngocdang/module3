SELECT 
    c.id,
    c.name,
    t.name,
    b.id AS 'booking id',
    s.name AS 'service name',
    b.start_date AS 'contract start date',
    b.end_date AS 'contract end date',
    SUM(cs.quantity * s.price) AS 'total_cost'
FROM
    customer c
        LEFT JOIN
    customer_type t ON c.customer_type_id = t.id
        LEFT JOIN
    contract b ON b.customer_id = c.id
        LEFT JOIN
    contract_service cs ON b.id = cs.contract_id
        LEFT JOIN
    service s ON s.id = cs.service_id
GROUP BY c.id , b.id , s.id

