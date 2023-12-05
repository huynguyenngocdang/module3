select
state,
COALESCE(COALESCE(city, NULL), 'Total') ,
sum(invoice_total) as total_sales
from invoices i
join clients c using (client_id)
group by state, city with rollup