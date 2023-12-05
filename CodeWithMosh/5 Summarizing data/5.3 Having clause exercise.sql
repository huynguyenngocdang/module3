select 
c.customer_id,
c.first_name,
c.last_name,
sum(oi.quantity * oi.unit_price) as total_sales
from customers c
join orders o using (customer_id)
join order_items oi using (order_id)
group by c.customer_id
having total_sales > 100