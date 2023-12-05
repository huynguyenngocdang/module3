use study_case_1;
CREATE TABLE IF NOT EXISTS `service_category` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100),
    is_delete bit(1)
);

insert into `service_category`(
`name`, is_delete)
values
('general service', 0),
('massage', 0),
('transport', 0),
('food', 0),
('bevarage', 0)