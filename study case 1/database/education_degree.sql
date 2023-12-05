CREATE TABLE IF NOT EXISTS `education_degree` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    is_delete BIT(1)
);
insert into `education_degree`(
`name`, is_delete)
values
('vocational',0),
('college', 0),
('university',0),
('doctoral',0)