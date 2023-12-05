use sql_invoicing;
-- select client with at least two invoices

select *
from clients
where client_id = any (
select client_id
from invoices
group by client_id
having count(*) >= 2
)