USE `2_5_product_management`;

select 
order_id, order_date,
(order_detail_quantity * product_price) as total_price
from orders
join orderdetail using (order_id)
join product using (product_id);

select 
customer_name, product_name, 
product_price, order_detail_quantity, 
(order_detail_quantity * product_price) as total_price
from customer
join orders using (customer_id)
join orderdetail using (order_id)
join product using (product_id);

select *
from customer
where customer_id NOT IN (
select distinct customer_id
from orders);

select *
from customer c
where 
	not exists(
    select 1
    from orders
    where c.customer_id = orders.customer_id
    );

select order_id, order_date, 
sum(order_detail_quantity * product_price) as total_price
from orders
join orderdetail using(order_id)
join product using (product_id)
group by order_id
