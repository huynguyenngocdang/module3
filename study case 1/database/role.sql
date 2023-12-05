CREATE TABLE IF NOT EXISTS `role` (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(255) NOT NULL,
    is_delete BIT(1) NOT NULL
);

insert into `role`(role_name, is_delete) 
values 
('employee',0),
('moderator',0),
('admin',0)