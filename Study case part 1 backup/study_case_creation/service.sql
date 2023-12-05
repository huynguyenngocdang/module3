use study_case_1;
CREATE TABLE IF NOT EXISTS `service` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    service_type_id INT NOT NULL,
    service_category_id INT NOT NULL,
    price DOUBLE,
    is_delete BIT(1),
    FOREIGN KEY (service_type_id)
        REFERENCES `service_type` (id),
    FOREIGN KEY (service_category_id)
        REFERENCES `service_category` (id)
);

truncate `service`;
insert into  `service`(
`name`, service_type_id, service_category_id, price, is_delete)
values
('massage', 2, 2, 25, 0),
('karaoke', 2, 1, 30, 0),
('tour', 2, 3, 20, 0),
('tour free', 1, 3, 0, 0),
('breakfast', 2, 1, 10, 0),
('breakfast free', 1, 1, 0, 0), 
('chip', 2, 4, 2, 0),
('chip free', 1, 4, 0, 0),
('candy', 2, 4, 1, 0),
('candy free', 1, 4, 0, 0),
('coke', 2, 5, 0.5, 0),
('coke free', 1, 5, 0, 0),
('gin', 2, 5, 10, 0),
('whisky', 1, 5, 12, 0)
