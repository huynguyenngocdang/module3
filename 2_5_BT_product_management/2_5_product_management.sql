create database if not exists `2_5_product_management`;

use `2_5_product_management`;

create table if not exists customer(
	customer_id int primary key auto_increment,
    customer_name varchar(255),
    customer_age int
);

create table if not exists product(
	product_id int primary key auto_increment,
    product_name varchar(255),
    product_price double
);

create table if not exists orders(
	order_id int primary key auto_increment,
    customer_id int not null,
    order_date datetime,
    order_total_price double,
    foreign key (customer_id) references customer(customer_id)
);

create table if not exists orderdetail (
	order_id int not null,
    product_id int not null,
    order_detail_quantity double,
    primary key (order_id, product_id),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references product(product_id)
);