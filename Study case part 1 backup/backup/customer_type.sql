use study_case_1;
CREATE TABLE IF NOT EXISTS `customer_type` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    is_delete BIT(1)
);

insert into `customer_type`(
`name`, is_delete)
values
('not member', 0),
('member', 0),
('silver', 0),
('gold', 0),
('platinium', 0),
('diamond', 0)