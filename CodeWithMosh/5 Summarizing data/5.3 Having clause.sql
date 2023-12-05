SELECT 
    client_id, SUM(invoice_total) AS total_sales,
    count(*) as number_of_invoices
FROM
    invoices
GROUP BY client_id
HAVING total_sales > 500 and number_of_invoices >= 6