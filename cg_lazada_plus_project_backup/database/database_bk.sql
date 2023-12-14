CREATE SCHEMA IF NOT EXISTS `cg_lazada_plus_project_bk` ;

USE `cg_lazada_plus_project_bk`;

CREATE TABLE IF NOT EXISTS user_role (
    user_role_id INT PRIMARY KEY AUTO_INCREMENT,
    user_role VARCHAR(50),
    is_delete BIT(1) DEFAULT 0
);

insert into `user_role` (
	user_role, is_delete)
    values
    ('customer', 0),
    ('admin', 0);

create table if not exists `users`(
user_id int primary key auto_increment,
user_name varchar(50),
user_password varchar(50),
user_role_id int,
is_active bit(1) default 1,
is_delete bit(1) default 0,
foreign key (user_role_id)
references user_role(user_role_id)
);

insert into `users`
	(user_name, user_password, user_role_id)
    values
    ('huy', '123', 2),
    ('giang', '123', 1),
    ('tu', '123', 1),
    ('long', '123', 1);    
