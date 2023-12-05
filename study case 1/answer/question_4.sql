SELECT 
    c.id,
    c.name,
    t.name AS 'customer type',
    COUNT(b.id) AS total_booking
FROM
    customer c
        LEFT JOIN
    customer_type t ON c.customer_type_id = t.id
        LEFT JOIN
    contract b ON c.id = b.customer_id
GROUP BY c.id
HAVING t.name REGEXP 'diamond'
ORDER BY COUNT(b.id)