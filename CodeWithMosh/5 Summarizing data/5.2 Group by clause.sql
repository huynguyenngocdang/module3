SELECT 
    state, city, SUM(invoice_total) AS total_sales
FROM
    invoices
    join clients using (client_id)
WHERE
    MONTH(invoice_date) BETWEEN 6 AND 12
GROUP BY state, city
ORDER BY total_sales DESC;
