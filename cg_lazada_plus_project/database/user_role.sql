create table if not exists `user_role`(
user_role_id int primary key auto_increment,
user_role varchar(50),
is_delete bit(1) default 0
);

insert into `user_role` (
	user_role)
    values
    ('customer'),
    ('admin');