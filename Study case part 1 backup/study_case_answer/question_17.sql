SET SQL_SAFE_UPDATES = 0;

UPDATE customer AS cus
JOIN customer_type ct ON cus.customer_type_id = ct.id
JOIN contract c ON cus.id = c.customer_id
JOIN facility f ON f.id = c.facility_id
JOIN (
      SELECT cus.id
    FROM customer AS cus
    JOIN customer_type ct ON cus.customer_type_id = ct.id
    JOIN contract c ON cus.id = c.customer_id
    JOIN facility f ON f.id = c.facility_id
	where ct.name like 'platinium'
    GROUP BY cus.id
    HAVING SUM(
        CASE 
            WHEN f.rent_type_id = 1 AND YEAR(c.start_date) = 2023 THEN f.cost * TIMESTAMPDIFF(HOUR, c.end_date, c.start_date)
            WHEN f.rent_type_id = 2 AND YEAR(c.start_date) = 2023  THEN f.cost * DATEDIFF(c.end_date, c.start_date)
            WHEN f.rent_type_id = 3 AND YEAR(c.start_date) = 2023  THEN f.cost * TIMESTAMPDIFF(MONTH, c.end_date, c.start_date)
            ELSE 0
        END
    ) >= 420
) AS filtered_customer
ON cus.id = filtered_customer.id
SET cus.customer_type_id = (
    SELECT ct2.id
    FROM customer_type ct2
    WHERE ct2.name LIKE 'diamond'
);

SET SQL_SAFE_UPDATES = 1;
