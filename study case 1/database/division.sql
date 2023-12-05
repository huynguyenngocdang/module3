CREATE TABLE IF NOT EXISTS `division` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    is_delete BIT(1)
);

insert into `division`(
`name`, is_delete)
values 
('sale - marketing', 0),
('administration', 0),
('service', 0),
('management',0)