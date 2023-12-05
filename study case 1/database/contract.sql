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

INSERT INTO `contract` (
    `start_date`, 
    `end_date`, 
    `deposit`, 
    `employee_id`, 
    `customer_id`, 
    `facility_id`, 
    `is_delete`
) VALUES
('2022-01-15 08:00:00', '2022-02-15 18:00:00', 1000.0, 1, 1, 1, 0),
('2022-03-20 10:30:00', '2022-04-20 20:30:00', 1200.0, 2, 2, 2, 0),
('2022-05-10 09:15:00', '2022-06-10 19:15:00', 800.0, 3, 3, 3, 0),
('2022-07-05 11:45:00', '2022-08-05 21:45:00', 1500.0, 4, 4, 4, 0),
('2022-09-15 14:00:00', '2022-10-15 23:00:00', 900.0, 5, 5, 5, 0),
('2022-11-08 13:30:00', '2022-12-08 23:30:00', 1100.0, 6, 6, 6, 0),
('2022-02-22 16:45:00', '2022-03-22 22:45:00', 1300.0, 7, 7, 7, 0),
('2022-04-12 18:20:00', '2022-05-12 23:20:00', 950.0, 8, 8, 8, 0),
('2022-06-30 15:00:00', '2022-07-30 22:00:00', 1000.0, 9, 9, 9, 0),
('2022-08-25 17:00:00', '2022-09-25 23:00:00', 1200.0, 10, 10, 10, 0),
('2022-10-01 09:00:00', '2022-11-01 18:00:00', 1100.0, 11, 11, 11, 0),
('2022-11-15 11:30:00', '2022-12-15 20:30:00', 1300.0, 12, 12, 12, 0),
('2022-12-10 10:15:00', '2023-01-10 19:15:00', 900.0, 13, 13, 13, 0),
('2022-02-05 12:45:00', '2022-03-05 21:45:00', 1600.0, 14, 14, 14, 0),
('2022-03-20 14:00:00', '2022-04-20 23:00:00', 1000.0, 15, 15, 15, 0),
('2022-04-15 13:30:00', '2022-05-15 23:30:00', 1200.0, 16, 16, 16, 0),
('2022-05-22 16:45:00', '2022-06-22 22:45:00', 1100.0, 17, 17, 17, 0),
('2022-06-12 18:20:00', '2022-07-12 23:20:00', 1050.0, 18, 18, 18, 0),
('2022-07-30 15:00:00', '2022-08-30 22:00:00', 1200.0, 19, 19, 19, 0),
('2022-08-15 17:00:00', '2022-09-15 23:00:00', 1400.0, 20, 20, 20, 0),
('2022-09-10 09:30:00', '2022-10-10 18:30:00', 1150.0, 11, 11, 11, 0),
('2022-10-25 11:45:00', '2022-11-25 20:45:00', 1350.0, 12, 12, 12, 0),
('2022-11-20 10:30:00', '2022-12-20 19:30:00', 950.0, 13, 13, 13, 0),
('2022-02-15 12:00:00', '2022-03-15 21:00:00', 1650.0, 14, 14, 14, 0),
('2022-03-30 13:15:00', '2022-04-30 22:15:00', 1100.0, 15, 15, 15, 0),
('2022-04-25 15:45:00', '2022-05-25 23:45:00', 1300.0, 16, 16, 16, 0),
('2022-05-02 14:20:00', '2022-06-02 22:20:00', 1200.0, 17, 17, 17, 0),
('2022-06-22 16:00:00', '2022-07-22 23:00:00', 1150.0, 18, 18, 18, 0),
('2022-07-10 18:30:00', '2022-08-10 22:30:00', 1300.0, 19, 19, 19, 0),
('2022-08-25 17:45:00', '2022-09-25 23:45:00', 1450.0, 20, 20, 20, 0),
('2022-09-10 09:30:00', '2022-10-10 18:30:00', 1150.0, 11, 11, 11, 0),
('2022-10-25 11:45:00', '2022-11-25 20:45:00', 1350.0, 12, 12, 12, 0),
('2022-11-20 10:30:00', '2022-12-20 19:30:00', 950.0, 13, 13, 13, 0),
('2022-02-15 12:00:00', '2022-03-15 21:00:00', 1650.0, 14, 14, 14, 0),
('2022-03-30 13:15:00', '2022-04-30 22:15:00', 1100.0, 15, 15, 15, 0),
('2022-04-25 15:45:00', '2022-05-25 23:45:00', 1300.0, 16, 16, 16, 0),
('2022-05-02 14:20:00', '2022-06-02 22:20:00', 1200.0, 17, 17, 17, 0),
('2022-06-22 16:00:00', '2022-07-22 23:00:00', 1150.0, 18, 18, 18, 0),
('2022-07-10 18:30:00', '2022-08-10 22:30:00', 1300.0, 19, 19, 19, 0),
('2022-08-25 17:45:00', '2022-09-25 23:45:00', 1450.0, 20, 20, 20, 0),
('2022-09-10 09:30:00', '2022-10-10 18:30:00', 1150.0, 11, 11, 1, 0),
('2022-10-25 11:45:00', '2022-11-25 20:45:00', 1350.0, 12, 12, 2, 0),
('2022-11-20 10:30:00', '2022-12-20 19:30:00', 950.0, 13, 13, 3, 0),
('2022-02-15 12:00:00', '2022-03-15 21:00:00', 1650.0, 14, 14, 4, 0),
('2022-03-30 13:15:00', '2022-04-30 22:15:00', 1100.0, 15, 15, 5, 0),
('2022-04-25 15:45:00', '2022-05-25 23:45:00', 1300.0, 16, 16, 6, 0),
('2022-05-02 14:20:00', '2022-06-02 22:20:00', 1200.0, 17, 17, 7, 0),
('2022-06-22 16:00:00', '2022-07-22 23:00:00', 1150.0, 18, 18, 8, 0),
('2022-07-10 18:30:00', '2022-08-10 22:30:00', 1300.0, 19, 19, 9, 0),
('2022-08-25 17:45:00', '2022-09-25 23:45:00', 1450.0, 20, 20, 10, 0),
('2023-01-05 08:30:00', '2023-02-05 17:30:00', 1200.0, 1, 1, 1, 0),
('2023-02-20 10:45:00', '2023-03-20 19:45:00', 1400.0, 2, 2, 2, 0),
('2023-03-15 09:30:00', '2023-04-15 18:30:00', 1000.0, 3, 3, 3, 0),
('2023-04-20 11:00:00', '2023-05-20 20:00:00', 1600.0, 4, 4, 4, 0),
('2023-05-30 12:15:00', '2023-06-30 21:15:00', 1050.0, 5, 5, 5, 0),
('2023-06-25 14:45:00', '2023-07-25 23:45:00', 1250.0, 6, 6, 6, 0),
('2023-07-02 13:20:00', '2023-08-02 21:20:00', 1150.0, 7, 7, 7, 0),
('2023-08-22 15:00:00', '2023-09-22 23:00:00', 1100.0, 8, 8, 8, 0),
('2023-09-10 17:30:00', '2023-10-10 22:30:00', 1250.0, 9, 9, 9, 0),
('2023-10-25 16:45:00', '2023-11-25 22:45:00', 1400.0, 10, 10, 10, 0),
('2023-11-20 15:30:00', '2023-12-20 22:30:00', 950.0, 11, 11, 1, 0),
('2023-02-15 17:00:00', '2023-03-15 23:00:00', 1650.0, 12, 12, 2, 0),
('2023-03-30 18:15:00', '2023-04-30 23:15:00', 1100.0, 13, 13, 3, 0),
('2023-04-25 20:45:00', '2023-05-25 23:45:00', 1300.0, 14, 14, 4, 0),
('2023-05-02 19:20:00', '2023-06-02 23:20:00', 1200.0, 15, 15, 5, 0),
('2023-06-22 21:00:00', '2023-07-22 23:00:00', 1150.0, 16, 16, 6, 0),
('2023-07-10 23:30:00', '2023-08-10 23:30:00', 1300.0, 17, 17, 7, 0),
('2023-08-25 22:45:00', '2023-09-25 23:45:00', 1450.0, 18, 18, 8, 0),
('2023-09-15 20:15:00', '2023-10-15 23:15:00', 1050.0, 19, 19, 9, 0),
('2023-10-30 21:30:00', '2023-11-30 23:30:00', 1200.0, 20, 20, 10, 0),
('2023-11-20 23:00:00', '2023-12-20 23:00:00', 1350.0, 1, 1, 1, 0),
('2023-01-05 08:30:00', '2023-02-05 17:30:00', 1200.0, 2, 2, 2, 0),
('2023-02-20 10:45:00', '2023-03-20 19:45:00', 1400.0, 3, 3, 3, 0),
('2023-03-15 09:30:00', '2023-04-15 18:30:00', 1000.0, 4, 4, 4, 0),
('2023-04-20 11:00:00', '2023-05-20 20:00:00', 1600.0, 5, 5, 5, 0),
('2023-05-30 12:15:00', '2023-06-30 21:15:00', 1050.0, 6, 6, 6, 0),
('2023-06-25 14:45:00', '2023-07-25 23:45:00', 1250.0, 7, 7, 7, 0),
('2023-07-02 13:20:00', '2023-08-02 21:20:00', 1150.0, 8, 8, 8, 0),
('2023-08-22 15:00:00', '2023-09-22 23:00:00', 1100.0, 9, 9, 9, 0),
('2023-09-10 17:30:00', '2023-10-10 22:30:00', 1250.0, 10, 10, 10, 0),
('2023-10-25 16:45:00', '2023-11-25 22:45:00', 1400.0, 11, 11, 1, 0),
('2023-11-20 15:30:00', '2023-12-20 22:30:00', 950.0, 12, 12, 2, 0),
('2023-02-15 17:00:00', '2023-03-15 23:00:00', 1650.0, 13, 13, 3, 0),
('2023-03-30 18:15:00', '2023-04-30 23:15:00', 1100.0, 14, 14, 4, 0),
('2023-04-25 20:45:00', '2023-05-25 23:45:00', 1300.0, 15, 15, 5, 0),
('2023-05-02 19:20:00', '2023-06-02 23:20:00', 1200.0, 16, 16, 6, 0),
('2023-06-22 21:00:00', '2023-07-22 23:00:00', 1150.0, 17, 17, 7, 0),
('2023-07-10 23:30:00', '2023-08-10 23:30:00', 1300.0, 18, 18, 8, 0),
('2023-08-25 22:45:00', '2023-09-25 23:45:00', 1450.0, 19, 19, 9, 0),
('2023-09-15 20:15:00', '2023-10-15 23:15:00', 1050.0, 20, 20, 10, 0),
('2023-10-30 21:30:00', '2023-11-30 23:30:00', 1200.0, 1, 1, 1, 0),
('2023-11-20 23:00:00', '2023-12-20 23:00:00', 1350.0, 2, 2, 2, 0),
('2023-01-05 08:30:00', '2023-02-05 17:30:00', 1200.0, 3, 3, 3, 0),
('2023-02-20 10:45:00', '2023-03-20 19:45:00', 1400.0, 4, 4, 4, 0),
('2023-03-15 09:30:00', '2023-04-15 18:30:00', 1000.0, 5, 5, 5, 0),
('2023-04-20 11:00:00', '2023-05-20 20:00:00', 1600.0, 6, 6, 6, 0),
('2023-05-30 12:15:00', '2023-06-30 21:15:00', 1050.0, 7, 7, 7, 0),
('2023-06-25 14:45:00', '2023-07-25 23:45:00', 1250.0, 8, 8, 8, 0),
('2023-07-02 13:20:00', '2023-08-02 21:20:00', 1150.0, 9, 9, 9, 0),
('2023-08-22 15:00:00', '2023-09-22 23:00:00', 1100.0, 10, 10, 10, 0)