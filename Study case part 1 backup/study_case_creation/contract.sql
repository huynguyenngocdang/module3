use study_case_1;
CREATE TABLE IF NOT EXISTS `contract` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    deposit DOUBLE NOT NULL,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    facility_id INT NOT NULL,
    is_delete BIT(1),
    FOREIGN KEY (employee_id)
        REFERENCES `employee` (id),
    FOREIGN KEY (customer_id)
        REFERENCES `customer` (id),
    FOREIGN KEY (facility_id)
        REFERENCES `facility` (id)
);

truncate `contract`;
insert into `contract`(
start_date, end_date, deposit, employee_id, customer_id, facility_id, is_delete)
values
('2022-01-10 09:00:00', '2022-01-15 15:00:00', 50, 7, 1, 1, 0),
('2022-01-17 09:00:00', '2022-01-24 15:00:00', 50, 7, 1, 2, 0),
('2022-01-01 09:00:00', '2022-01-24 15:00:00', 50, 7, 1, 3, 0),
('2023-02-10 09:00:00', '2023-02-15 15:00:00', 50, 7, 2, 1, 0),
('2023-02-17 09:00:00', '2023-02-24 15:00:00', 50, 7, 2, 2, 0),
('2023-02-01 09:00:00', '2023-02-24 15:00:00', 50, 7, 2, 3, 0),
('2023-03-10 09:00:00', '2023-03-15 15:00:00', 50, 7, 3, 4, 0),
('2023-03-17 09:00:00', '2023-03-24 15:00:00', 50, 7, 3, 5, 0),
('2023-03-01 09:00:00', '2023-03-24 15:00:00', 50, 7, 3, 6, 0),
('2023-04-10 09:00:00', '2023-04-15 15:00:00', 50, 7, 4, 7, 0),
('2023-04-17 09:00:00', '2023-04-24 15:00:00', 50, 7, 4, 8, 0),
('2023-04-01 09:00:00', '2023-04-24 15:00:00', 50, 7, 4, 9, 0),
('2023-05-10 09:00:00', '2023-05-15 15:00:00', 50, 7, 5, 7, 0),
('2023-05-17 09:00:00', '2023-05-24 15:00:00', 50, 7, 5, 8, 0),
('2023-05-01 09:00:00', '2023-05-24 15:00:00', 50, 7, 5, 9, 0),
('2023-06-10 09:00:00', '2023-06-15 15:00:00', 50, 7, 6, 7, 0),
('2023-06-17 09:00:00', '2023-06-24 15:00:00', 50, 7, 6, 8, 0),
('2023-06-01 09:00:00', '2023-06-24 15:00:00', 50, 7, 6, 9, 0),
('2023-07-10 09:00:00', '2023-07-15 15:00:00', 50, 7, 6, 8, 0),
('2023-07-17 09:00:00', '2023-07-24 15:00:00', 50, 7, 6, 9, 0),
('2023-07-01 09:00:00', '2023-07-24 15:00:00', 50, 7, 6, 10, 0),
('2023-08-10 09:00:00', '2023-08-15 15:00:00', 50, 7, 6, 12, 0),
('2023-08-17 09:00:00', '2023-08-24 15:00:00', 50, 7, 6, 13, 0),
('2023-08-01 09:00:00', '2023-08-24 15:00:00', 50, 7, 6, 14, 0)