CREATE TABLE IF NOT EXISTS `service_category` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100),
    is_delete bit(1)
);

INSERT INTO `service_category` (`name`, `is_delete`) VALUES
('general service', 0),
('massage', 0),
('transport', 0),
('food', 0),
('beverage', 0),
('entertainment', 0),
('cleaning', 0),
('security', 0),
('laundry', 0),
('internet', 0);