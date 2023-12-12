-- for updatable view, must not have
-- DISTINCT
-- Aggregate function (min, max, sum, avg)
-- group by / having
-- union


create or replace view invoices_with_balances as
select
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
from invoices
where (invoice_total - payment_total) > 0
WITH CHECK OPTION