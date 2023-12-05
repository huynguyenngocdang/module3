use study_case_1;
CREATE TABLE IF NOT EXISTS contract (
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
('2023-05-10 09:00:00', '2023-05-15 15:00:00', 50, 7, 1, 1, 0),
('2023-05-17 09:00:00', '2023-05-24 15:00:00', 50, 7, 1, 2, 0),
('2023-06-01 09:00:00', '2023-06-24 15:00:00', 50, 7, 1, 3, 0)