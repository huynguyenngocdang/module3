SELECT 
pm.name, day(date), sum(amount) 

FROM payments as p
join payment_methods as pm on p.payment_method = pm.payment_method_id
group by pm.name, day(date)
order by day(date)