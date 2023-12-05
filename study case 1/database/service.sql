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

INSERT INTO `service` (`name`, service_type_id, service_category_id, price, is_delete)
VALUES
    ('Basic Cleaning', 2, 7, 30.0, 0),
    ('Premium Massage', 2, 2, 60.0, 0),
    ('Transportation Service', 2, 3, 50.0, 0),
    ('Meal Package', 2, 4, 25.0, 0),
    ('Beverage Package', 2, 5, 15.0, 0),
    ('Entertainment System Rental', 2, 6, 40.0, 0),
    ('Deep Cleaning', 2, 7, 50.0, 0),
    ('Security Personnel', 2, 8, 70.0, 0),
    ('Laundry Service', 2, 9, 20.0, 0),
    ('High-Speed Internet', 2, 10, 30.0, 0);


INSERT INTO `service` (`name`, service_type_id, service_category_id, price, is_delete)
VALUES
    ('Free Wi-Fi', 1, 10, 0.0, 0),
    ('Basic Cleaning (Free)', 1, 7, 0.0, 0),
    ('Complimentary Beverage', 1, 5, 0.0, 0),
    ('Free Shuttle Service', 1, 3, 0.0, 0);
