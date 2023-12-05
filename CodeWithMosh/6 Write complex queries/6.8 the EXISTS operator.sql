-- select clients that have an invoice
-- select *
-- from clients
-- where client_id in (
-- select distinct client_id
-- from invoices
-- );


select *
from clients c
where exists (
	select 1
    from invoices
    where client_id = c.client_id
)

