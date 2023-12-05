CREATE TABLE IF NOT EXISTS `service_type` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    is_delete bit(1)
);

insert into `service_type`(
`name`, is_delete)
values
('free', 0),
('paid', 0)