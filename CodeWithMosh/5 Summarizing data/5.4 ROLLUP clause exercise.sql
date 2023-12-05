select
pm.name,
sum(amount)
from payments p
join payment_methods pm on p.payment_method = pm.payment_method_id
group by pm.name with rollup