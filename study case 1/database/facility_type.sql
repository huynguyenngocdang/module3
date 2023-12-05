CREATE TABLE IF NOT EXISTS `facility_type` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    is_delete BIT(1)
);

insert into `facility_type`(
`name`, is_delete)
values
('room', 0),
('house', 0),
('villa', 0)