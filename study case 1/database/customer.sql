CREATE TABLE IF NOT EXISTS `customer` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_type_id INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    gender BIT(1) NOT NULL,
    date_of_birth VARCHAR(50) NOT NULL,
    id_card VARCHAR(12) NOT NULL,
    phone_number VARCHAR(12) NOT NULL,
    email VARCHAR(45),
    address VARCHAR(50),
    is_delete BIT(1),
    foreign key (customer_type_id) references `customer_type`(id)
);

-- Customers
INSERT INTO `customer` (
    `customer_type_id`, 
    `name`, 
    `gender`, 
    `date_of_birth`, 
    `id_card`, 
    `phone_number`, 
    `email`, 
    `address`, 
    `is_delete`
) VALUES
(1, 'John Doe', 1, '1990-05-15', '123456789012', '1234567890', 'john.doe@example.com', '123 Main St, Cityville', 0),
(2, 'Jane Smith', 0, '1988-08-25', '987654321098', '0987654321', 'jane.smith@example.com', '456 Oak St, Townsville', 0),
(3, 'Robert Johnson', 1, '1975-02-10', '567890123456', '7654321098', 'robert.j@example.com', '789 Pine St, Villagetown', 0),
(4, 'Alice Brown', 0, '1995-11-03', '345678901234', '3456789012', 'alice.b@example.com', '101 Elm St, Hamletville', 0),
(5, 'Michael Davis', 1, '1980-07-18', '890123456789', '6789012345', 'michael.d@example.com', '202 Birch St, Countryside', 0),
(6, 'Emily White', 0, '1992-04-22', '012345678901', '5678901234', 'emily.white@example.com', '303 Maple St, Riverside', 0),
(6, 'Daniel Black', 1, '1987-09-14', '234567890123', '4567890123', 'daniel.black@example.com', '404 Pine St, Hillside', 0),
(6, 'Olivia Green', 0, '1978-01-30', '678901234567', '3456789012', 'olivia.green@example.com', '505 Oak St, Mountainside', 0),
(6, 'William Gray', 1, '1993-06-08', '901234567890', '2345678901', 'william.gray@example.com', '606 Birch St, Lakeside', 0),
(5, 'Sophia Adams', 0, '1985-03-12', '456789012345', '1234567890', 'sophia.adams@example.com', '707 Elm St, Seaside', 0),
(2, 'Ella Miller', 0, '1986-12-05', '543210987654', '6789012345', 'ella.miller@example.com', '808 Maple St, Lakeshore', 0),
(3, 'James Turner', 1, '1997-10-20', '765432109876', '8901234567', 'james.turner@example.com', '909 Oak St, Hilltop', 0),
(4, 'Mia Wilson', 0, '1984-05-18', '123456789012', '3456789012', 'mia.wilson@example.com', '101 Pine St, Uptown', 0),
(5, 'Benjamin Baker', 1, '1991-08-28', '456789012345', '5678901234', 'benjamin.baker@example.com', '202 Elm St, Downtown', 0),
(1, 'Ava Scott', 0, '1989-03-15', '890123456789', '2345678901', 'ava.scott@example.com', '303 Birch St, Suburbia', 0),
(2, 'Henry Campbell', 1, '1994-07-01', '012345678901', '6789012345', 'henry.campbell@example.com', '404 Oak St, Countryside', 0),
(3, 'Grace Murphy', 0, '1977-02-09', '234567890123', '3456789012', 'grace.murphy@example.com', '505 Pine St, Hometown', 0),
(4, 'Joseph Hughes', 1, '1996-11-26', '456789012345', '5678901234', 'joseph.hughes@example.com', '606 Maple St, City Center', 0),
(5, 'Chloe Simmons', 0, '1983-09-10', '567890123456', '6789012345', 'chloe.simmons@example.com', '707 Birch St, Riverside', 0),
(1, 'Samuel Ward', 1, '1990-04-03', '678901234567', '7890123456', 'samuel.ward@example.com', '808 Pine St, Uptown', 0),
(2, 'Olivia Turner', 0, '1988-06-22', '987654321012', '3456789012', 'olivia.turner@example.com', '909 Oak St, Hilltop', 0),
(3, 'Lucas Baker', 1, '1993-09-15', '234567890123', '5678901234', 'lucas.baker@example.com', '101 Pine St, Uptown', 0),
(4, 'Lily Wilson', 0, '1985-04-08', '123456789012', '3456789012', 'lily.wilson@example.com', '202 Elm St, Downtown', 0),
(5, 'William Scott', 1, '1992-11-30', '456789012345', '5678901234', 'william.scott@example.com', '303 Birch St, Suburbia', 0),
(1, 'Abigail Campbell', 0, '1997-01-17', '890123456789', '2345678901', 'abigail.campbell@example.com', '404 Oak St, Countryside', 0),
(2, 'Daniel Murphy', 1, '1980-07-03', '012345678901', '6789012345', 'daniel.murphy@example.com', '505 Pine St, Hometown', 0),
(3, 'Sophia Hughes', 0, '1975-04-18', '234567890123', '3456789012', 'sophia.hughes@example.com', '606 Maple St, City Center', 0),
(4, 'Alexander Simmons', 1, '1995-12-05', '456789012345', '5678901234', 'alexander.simmons@example.com', '707 Birch St, Riverside', 0),
(5, 'Avery Ward', 0, '1982-08-20', '567890123456', '6789012345', 'avery.ward@example.com', '808 Pine St, Uptown', 0),
(1, 'Scarlett Turner', 0, '1989-03-15', '987654321012', '3456789012', 'scarlett.turner@example.com', '909 Oak St, Hilltop', 0),
(2, 'Elijah Mitchell', 1, '1987-02-12', '234567890123', '5678901234', 'elijah.mitchell@example.com', '101 Pine St, Uptown', 0),
(3, 'Harper Roberts', 0, '1983-05-25', '123456789012', '3456789012', 'harper.roberts@example.com', '202 Elm St, Downtown', 0),
(4, 'Benjamin Simmons', 1, '1990-10-08', '456789012345', '5678901234', 'benjamin.simmons@example.com', '303 Birch St, Suburbia', 0),
(5, 'Aria Evans', 0, '1986-07-21', '890123456789', '2345678901', 'aria.evans@example.com', '404 Oak St, Countryside', 0),
(1, 'Jackson Reed', 1, '1999-04-03', '012345678901', '6789012345', 'jackson.reed@example.com', '505 Pine St, Hometown', 0),
(2, 'Mia Stewart', 0, '1979-11-18', '234567890123', '3456789012', 'mia.stewart@example.com', '606 Maple St, City Center', 0),
(3, 'James Hughes', 1, '1994-06-05', '456789012345', '5678901234', 'james.hughes@example.com', '707 Birch St, Riverside', 0),
(4, 'Eva Morgan', 0, '1981-01-20', '567890123456', '6789012345', 'eva.morgan@example.com', '808 Pine St, Uptown', 0),
(5, 'Logan Ward', 1, '1988-08-04', '987654321012', '3456789012', 'logan.ward@example.com', '909 Oak St, Hilltop', 0),
(1, 'Isabella Turner', 0, '1984-03-29', '012345678901', '6789012345', 'isabella.turner@example.com', '101 Pine St, Uptown', 0),
(2, 'Oliver Watson', 1, '1992-09-15', '345678901234', '4567890123', 'oliver.watson@example.com', '202 Elm St, Downtown', 0),
(3, 'Sophia Ross', 0, '1985-04-28', '456789012345', '5678901234', 'sophia.ross@example.com', '303 Birch St, Suburbia', 0),
(4, 'Henry Perez', 1, '1996-11-11', '567890123456', '6789012345', 'henry.perez@example.com', '404 Oak St, Countryside', 0),
(5, 'Amelia Rivera', 0, '1980-06-24', '987654321012', '3456789012', 'amelia.rivera@example.com', '505 Pine St, Hometown', 0),
(1, 'Lucas Powell', 1, '1997-01-07', '012345678901', '6789012345', 'lucas.powell@example.com', '606 Maple St, City Center', 0),
(2, 'Emma Hunt', 0, '1978-08-20', '234567890123', '3456789012', 'emma.hunt@example.com', '707 Birch St, Riverside', 0),
(3, 'Liam Collins', 1, '1993-03-13', '456789012345', '5678901234', 'liam.collins@example.com', '808 Pine St, Uptown', 0),
(4, 'Ava Griffin', 0, '1977-10-06', '567890123456', '6789012345', 'ava.griffin@example.com', '909 Oak St, Hilltop', 0),
(5, 'Mason Diaz', 1, '1989-04-30', '987654321012', '3456789012', 'mason.diaz@example.com', '101 Pine St, Uptown', 0),
(1, 'Abigail Coleman', 0, '1982-11-23', '012345678901', '6789012345', 'abigail.coleman@example.com', '202 Elm St, Downtown', 0),
(2, 'Oliver Watson', 1, '1992-09-15', '345678901234', '4567890123', 'oliver.watson@example.com', '202 Elm St, Downtown', 0),
(3, 'Sophia Ross', 0, '1985-04-28', '456789012345', '5678901234', 'sophia.ross@example.com', '303 Birch St, Suburbia', 0),
(4, 'Henry Perez', 1, '1996-11-11', '567890123456', '6789012345', 'henry.perez@example.com', '404 Oak St, Countryside', 0),
(5, 'Amelia Rivera', 0, '1980-06-24', '987654321012', '3456789012', 'amelia.rivera@example.com', '505 Pine St, Hometown', 0),
(1, 'Lucas Powell', 1, '1997-01-07', '012345678901', '6789012345', 'lucas.powell@example.com', '606 Maple St, City Center', 0),
(2, 'Emma Hunt', 0, '1978-08-20', '234567890123', '3456789012', 'emma.hunt@example.com', '707 Birch St, Riverside', 0),
(3, 'Liam Collins', 1, '1993-03-13', '456789012345', '5678901234', 'liam.collins@example.com', '808 Pine St, Uptown', 0),
(4, 'Ava Griffin', 0, '1977-10-06', '567890123456', '6789012345', 'ava.griffin@example.com', '909 Oak St, Hilltop', 0),
(5, 'Mason Diaz', 1, '1989-04-30', '987654321012', '3456789012', 'mason.diaz@example.com', '101 Pine St, Uptown', 0),
(1, 'Abigail Coleman', 0, '1982-11-23', '012345678901', '6789012345', 'abigail.coleman@example.com', '202 Elm St, Downtown', 0),
(2, 'Olivia Turner', 0, '1988-06-22', '987654321012', '3456789012', 'olivia.turner@example.com', '909 Oak St, Hilltop', 0),
(3, 'Lucas Baker', 1, '1993-09-15', '234567890123', '5678901234', 'lucas.baker@example.com', '101 Pine St, Uptown', 0),
(4, 'Lily Wilson', 0, '1985-04-08', '123456789012', '3456789012', 'lily.wilson@example.com', '202 Elm St, Downtown', 0),
(5, 'William Scott', 1, '1992-11-30', '456789012345', '5678901234', 'william.scott@example.com', '303 Birch St, Suburbia', 0),
(1, 'Abigail Campbell', 0, '1997-01-17', '890123456789', '2345678901', 'abigail.campbell@example.com', '404 Oak St, Countryside', 0),
(2, 'Daniel Murphy', 1, '1980-07-03', '012345678901', '6789012345', 'daniel.murphy@example.com', '505 Pine St, Hometown', 0),
(3, 'Sophia Hughes', 0, '1975-04-18', '234567890123', '3456789012', 'sophia.hughes@example.com', '606 Maple St, City Center', 0),
(4, 'Alexander Simmons', 1, '1995-12-05', '456789012345', '5678901234', 'alexander.simmons@example.com', '707 Birch St, Riverside', 0),
(5, 'Avery Ward', 0, '1982-08-20', '567890123456', '6789012345', 'avery.ward@example.com', '808 Pine St, Uptown', 0),
(1, 'Scarlett Turner', 0, '1989-03-15', '987654321012', '3456789012', 'scarlett.turner@example.com', '909 Oak St, Hilltop', 0),
(2, 'Elijah Mitchell', 1, '1987-02-12', '234567890123', '5678901234', 'elijah.mitchell@example.com', '101 Pine St, Uptown', 0),
(3, 'Harper Roberts', 0, '1983-05-25', '123456789012', '3456789012', 'harper.roberts@example.com', '202 Elm St, Downtown', 0),
(4, 'Benjamin Simmons', 1, '1990-10-08', '456789012345', '5678901234', 'benjamin.simmons@example.com', '303 Birch St, Suburbia', 0),
(5, 'Aria Evans', 0, '1986-07-21', '890123456789', '2345678901', 'aria.evans@example.com', '404 Oak St, Countryside', 0),
(1, 'Jackson Reed', 1, '1999-04-03', '012345678901', '6789012345', 'jackson.reed@example.com', '505 Pine St, Hometown', 0),
(2, 'Mia Stewart', 0, '1979-11-18', '234567890123', '3456789012', 'mia.stewart@example.com', '606 Maple St, City Center', 0),
(3, 'James Hughes', 1, '1994-06-05', '456789012345', '5678901234', 'james.hughes@example.com', '707 Birch St, Riverside', 0),
(4, 'Eva Morgan', 0, '1981-01-20', '567890123456', '6789012345', 'eva.morgan@example.com', '808 Pine St, Uptown', 0),
(5, 'Logan Ward', 1, '1988-08-04', '987654321012', '3456789012', 'logan.ward@example.com', '909 Oak St, Hilltop', 0),
(1, 'Isabella Turner', 0, '1984-03-29', '012345678901', '6789012345', 'isabella.turner@example.com', '101 Pine St, Uptown', 0),
(2, 'Oliver Watson', 1, '1992-09-15', '345678901234', '4567890123', 'oliver.watson@example.com', '202 Elm St, Downtown', 0),
(3, 'Sophia Ross', 0, '1985-04-28', '456789012345', '5678901234', 'sophia.ross@example.com', '303 Birch St, Suburbia', 0),
(4, 'Henry Perez', 1, '1996-11-11', '567890123456', '6789012345', 'henry.perez@example.com', '404 Oak St, Countryside', 0),
(5, 'Amelia Rivera', 0, '1980-06-24', '987654321012', '3456789012', 'amelia.rivera@example.com', '505 Pine St, Hometown', 0),
(1, 'Lucas Powell', 1, '1997-01-07', '012345678901', '6789012345', 'lucas.powell@example.com', '606 Maple St, City Center', 0),
(2, 'Emma Hunt', 0, '1978-08-20', '234567890123', '3456789012', 'emma.hunt@example.com', '707 Birch St, Riverside', 0),
(3, 'Liam Collins', 1, '1993-03-13', '456789012345', '5678901234', 'liam.collins@example.com', '808 Pine St, Uptown', 0),
(4, 'Ava Griffin', 0, '1977-10-06', '567890123456', '6789012345', 'ava.griffin@example.com', '909 Oak St, Hilltop', 0),
(5, 'Mason Diaz', 1, '1989-04-30', '987654321012', '3456789012', 'mason.diaz@example.com', '101 Pine St, Uptown', 0),
(1, 'Abigail Coleman', 0, '1982-11-23', '012345678901', '6789012345', 'abigail.coleman@example.com', '202 Elm St, Downtown', 0),
(2, 'Aiden Thompson', 1, '1998-12-10', '345678901234', '4567890123', 'aiden.thompson@example.com', '505 Pine St, Hometown', 0),
(3, 'Aria Collins', 0, '1990-05-27', '567890123456', '6789012345', 'aria.collins@example.com', '606 Maple St, City Center', 0),
(4, 'Ethan Hall', 1, '1983-02-15', '890123456789', '1234567890', 'ethan.hall@example.com', '707 Birch St, Riverside', 0),
(5, 'Grace Lee', 0, '1986-09-18', '012345678901', '2345678901', 'grace.lee@example.com', '808 Pine St, Uptown', 0),
(1, 'Leo Murphy', 1, '1995-04-03', '234567890123', '3456789012', 'leo.murphy@example.com', '909 Oak St, Hilltop', 0),
(2, 'Luna Clark', 0, '1988-11-22', '456789012345', '5678901234', 'luna.clark@example.com', '101 Pine St, Uptown', 0),
(6, 'Mason Foster', 1, '1993-07-15', '567890123456', '6789012345', 'mason.foster@example.com', '202 Elm St, Downtown', 0),
(6, 'Hazel Garcia', 0, '1985-04-28', '123456789012', '3456789012', 'hazel.garcia@example.com', '303 Birch St, Suburbia', 0),
(6, 'Logan Allen', 1, '1992-11-30', '456789012345', '5678901234', 'logan.allen@example.com', '404 Oak St, Countryside', 0),
(6, 'Mia Simmons', 0, '1989-01-17', '890123456789', '2345678901', 'mia.simmons@example.com', '505 Pine St, Hometown', 0)
