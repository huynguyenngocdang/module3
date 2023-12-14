use cg_lazada_plus_project;

create table if not exists user_role(
user_role_id int primary key auto_increment,
user_role varchar(50),
is_delete bit(1) default 0
);

insert into `user_role` (
	user_role, is_delete)
    values
    ('customer', 0),
    ('admin', 0);

create table if not exists `user`(
user_id int primary key auto_increment,
user_name varchar(50),
user_password varchar(50),
user_role_id int,
is_active bit(1) default 1,
is_delete bit(1) default 0,
foreign key (user_role_id)
references user_role(user_role_id)
);

insert into `user`
	(user_name, user_password, user_role_id)
    values
    ('huy', '123', 2),
    ('giang', '123', 1),
    ('tu', '123', 1),
    ('long', '123', 1);

create table if not exists customer_membership(
customer_membership_id int primary key auto_increment,
customer_membership_name varchar(15),
customer_membership_point_reference int,
customer_membership_promotion_percent double,
is_delete bit(1)
);

insert into customer_memebership
	(customer_membership_name, customer_membership_point_reference, customer_membership_promotion_percent)
    values
    ('bronze', 200, );

create table if not exists customer(
customer_id int primary key auto_increment,
user_id int,
customer_name varchar(50),
customer_address varchar(50),
customer_point int,
customer_membership_id int,
is_delete bit default 0,
foreign key (user_id)
references user(user_id),
foreign key (customer_membership_id)
references customer_membership(customer_membership_id)
);


create table if not exists admin(
admin_id int primary key auto_increment,
user_id int,
admin_name varchar(50),
is_delete bit default 0,
foreign key (user_id)
references user(user_id)
);
create table if not exists product(
product_id int primary key auto_increment,
user_id int,
product_name varchar(50),
product_quantity int,
product_cost double,
is_delete bit default 0,
foreign key (user_id)
references user(user_id)
);
create table if not exists category(
category_id int primary key auto_increment,
category_name varchar(50),
is_delete bit default 0
);
create table if not exists product_category(
product_id int,
category_id int,
is_delete bit default 0,
foreign key (product_id)
references product(product_id),
foreign key (category_id)
references category(category_id)
);
create table if not exists purchase_order(
purchase_order_id int primary key auto_increment,
product_id int,
buyer_id int,
seller_id int,
purchase_order_date datetime,
purchase_order_quantity int,
purchase_order_unit_price varchar(10),
purchase_order_total_cost double,
purchase_order_final_cost double,
is_delete bit default 0,
foreign key (product_id)
references product(product_id)
);
create table if not exists review(
review_id int primary key auto_increment,
customer_id int,
product_id int,
review_point int,
review_date datetime,
review_detail text,
is_delete bit default 0,
foreign key (customer_id)
references customer(customer_id),
foreign key (product_id)
references product(product_id)
);
create table if not exists mail(
mail_id int primary key auto_increment,
user_id int,
sender_id int,
mail_message text,
is_delete bit default 0,
foreign key (user_id)
references user(user_id)
);