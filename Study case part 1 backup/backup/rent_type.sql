use study_case_1;
CREATE TABLE IF NOT EXISTS `rent_type` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    is_delete BIT(1)
);

insert into `rent_type`(
`name`, is_delete)
values
('hourly', 0),
('daily',0),
('monthly',0),
('yearly',0)