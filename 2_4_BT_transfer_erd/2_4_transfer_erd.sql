CREATE DATABASE IF NOT EXISTS `2_4_transfer_erd`;
USE `2_4_transfer_erd`;

create table if not exists supplier(
	supplier_id int primary key auto_increment,
    supplier_name varchar(50) not null,
    supplier_address varchar(255) not null,
    supplier_phone varchar(12) not null
);

create table if not exists good_delivery_note(
	gdn_id int primary key auto_increment,
    delivery_date datetime
);

create table if not exists good_recieve_note(
	grn_id int primary key auto_increment,
    recieve_date datetime  not null
);

create table if not exists product(
	product_id int primary key auto_increment,
    product_name varchar(255) not null
);

create table if not exists gdn_product(
	gdn_id int not null,
    product_id int not null,
    unit_price double not null,
    quantity double not null,
    primary key (gdn_id, product_id),
    foreign key (gdn_id) references good_delivery_note(gdn_id),
    foreign key (product_id) references product(product_id)
);

create table if not exists grn_product(
	grn_id int not null,
    product_id int not null,
    unit_price double not null,
    quantity double not null,
    primary key (grn_id, product_id),
    foreign key (grn_id) references good_recieve_note(grn_id),
    foreign key (product_id) references product(product_id)
);