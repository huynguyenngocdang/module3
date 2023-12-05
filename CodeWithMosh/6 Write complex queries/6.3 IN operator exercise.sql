select *
from clients
where client_id NOT IN (
	select distinct client_id
    from invoices)