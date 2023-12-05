CREATE TABLE IF NOT EXISTS `position` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    is_delete BIT(1)
);

insert into `position`(
`name`,
is_delete
) values 
('receptionist', 0),
('server',0),
('specialist',0),
('supervisor', 0),
('director',0)