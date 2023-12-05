CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    date_of_birth VARCHAR(50) NOT NULL,
    id_card VARCHAR(12) NOT NULL,
    salary DOUBLE NOT NULL,
    phone_number VARCHAR(12) NOT NULL,
    email VARCHAR(45),
    address VARCHAR(50),
    position_id INT NOT NULL,
    education_degree_id INT NOT NULL,
    division_id INT NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    is_delete BIT(1),
    FOREIGN KEY (position_id)
        REFERENCES `position` (id),
    FOREIGN KEY (education_degree_id)
        REFERENCES `education_degree` (id),
    FOREIGN KEY (division_id)
        REFERENCES `division` (id),
    FOREIGN KEY (user_name)
        REFERENCES `user` (user_name)
);

-- Insert data for employee table
INSERT INTO `employee` (
    `name`, 
    `date_of_birth`, 
    `id_card`, 
    `salary`, 
    `phone_number`, 
    `email`, 
    `address`, 
    `position_id`, 
    `education_degree_id`, 
    `division_id`, 
    `user_name`, 
    `is_delete`
) VALUES
-- Admin (Director)
('John Doe', '1980-01-15', '123456789012', 80000, '123-456-7890', 'john.doe@email.com', '123 Main St, City', 5, 4, 4, 'john_doe', 0),

-- Management Division (Supervisors)
('Jane Smith', '1985-05-20', '234567890123', 60000, '234-567-8901', 'jane.smith@email.com', '456 Oak St, City', 4, 3, 4, 'jane_smith', 0),
('Michael Jones', '1988-11-10', '345678901234', 60000, '345-678-9012', 'michael.jones@email.com', '789 Pine St, City', 4, 3, 4, 'michael_jones', 0),
('Emily Wilson', '1982-08-25', '456789012345', 60000, '456-789-0123', 'emily.wilson@email.com', '101 Elm St, City', 4, 3, 4, 'emily_wilson', 0),
('Ryan Taylor', '1984-03-18', '567890123456', 60000, '567-890-1234', 'ryan.taylor@email.com', '202 Birch St, City', 4, 3, 4, 'ryan_taylor', 0),
('Olivia Davis', '1987-07-05', '678901234567', 60000, '678-901-2345', 'olivia.davis@email.com', '303 Cedar St, City', 4, 3, 4, 'olivia_davis', 0),

-- Other Employees
('Adam Martin', '1990-02-28', '789012345678', 50000, '789-012-3456', 'adam.martin@email.com', '404 Maple St, City', 3, 2, 1, 'adam_martin', 0),
('Lily Thompson', '1993-09-12', '890123456789', 50000, '890-123-4567', 'lily.thompson@email.com', '505 Walnut St, City', 3, 2, 1, 'lily_thompson', 0),
('Nathan Anderson', '1989-04-03', '901234567890', 50000, '901-234-5678', 'nathan.anderson@email.com', '606 Pine St, City', 3, 2, 1, 'nathan_anderson', 0),
('Sophia Miller', '1995-12-17', '012345678901', 50000, '012-345-6789', 'sophia.miller@email.com', '707 Cedar St, City', 3, 2, 1, 'sophia_miller', 0),
('William Baker', '1992-06-09', '123456789012', 50000, '123-456-7890', 'william.baker@email.com', '808 Birch St, City', 3, 2, 1, 'william_baker', 0),
('Ava Wright', '1997-01-22', '234567890123', 50000, '234-567-8901', 'ava.wright@email.com', '909 Oak St, City', 3, 2, 1, 'ava_wright', 0),
('Alexander Morris', '1994-07-14', '345678901234', 50000, '345-678-9012', 'alexander.morris@email.com', '1010 Maple St, City', 3, 2, 1, 'alexander_morris', 0),
('Chloe Hall', '1991-11-05', '456789012345', 50000, '456-789-0123', 'chloe.hall@email.com', '1111 Walnut St, City', 3, 2, 1, 'chloe_hall', 0),
('Daniel Robinson', '1998-04-29', '567890123456', 50000, '567-890-1234', 'daniel.robinson@email.com', '1212 Pine St, City', 3, 2, 1, 'daniel_robinson', 0),
('Ella Hill', '1996-09-01', '678901234567', 50000, '678-901-2345', 'ella.hill@email.com', '1313 Cedar St, City', 3, 2, 1, 'ella_hill', 0),
('Matthew Jackson', '1986-03-14', '789012345678', 50000, '789-012-3456', 'matthew.jackson@email.com', '1414 Maple St, City', 3, 2, 1, 'matthew_jackson', 0),
('Grace Evans', '1983-08-27', '890123456789', 50000, '890-123-4567', 'grace.evans@email.com', '1515 Walnut St, City', 3, 2, 1, 'grace_evans', 0),
('Jacob Clark', '1984-12-03', '901234567890', 50000, '901-234-5678', 'jacob.clark@email.com', '1616 Pine St, City', 3, 2, 1, 'jacob_clark', 0),
('Amelia Turner', '1982-04-16', '012345678901', 50000, '012-345-6789', 'amelia.turner@email.com', '1717 Cedar St, City', 3, 2, 1, 'amelia_turner', 0),
('Oliver Carter', '1991-01-09', '123456789012', 50000, '123-456-7890', 'oliver.carter@email.com', '1818 Birch St, City', 3, 2, 1, 'oliver_carter', 0),
('Mia Fisher', '1993-06-22', '234567890123', 50000, '234-567-8901', 'mia.fisher@email.com', '1919 Oak St, City', 3, 2, 1, 'mia_fisher', 0),
('Ethan Nelson', '1989-10-14', '345678901234', 50000, '345-678-9012', 'ethan.nelson@email.com', '2020 Maple St, City', 3, 2, 1, 'ethan_nelson', 0),
('Isabella Harrison', '1996-02-07', '456789012345', 50000, '456-789-0123', 'isabella.harrison@email.com', '2121 Walnut St, City', 3, 2, 1, 'isabella_harrison', 0),
('Noah Wood', '1987-07-30', '567890123456', 50000, '567-890-1234', 'noah.wood@email.com', '2222 Pine St, City', 3, 2, 1, 'noah_wood', 0),
('Sophie Walker', '1994-12-23', '678901234567', 50000, '678-901-2345', 'sophie.walker@email.com', '2323 Cedar St, City', 3, 2, 1, 'sophie_walker', 0),
('Logan Mitchell', '1992-05-06', '789012345678', 50000, '789-012-3456', 'logan.mitchell@email.com', '2424 Birch St, City', 3, 2, 1, 'logan_mitchell', 0),
('Ava Watson', '1997-10-29', '890123456789', 50000, '890-123-4567', 'ava.watson@email.com', '2525 Oak St, City', 3, 2, 1, 'ava_watson', 0),
('Liam Rogers', '1985-03-13', '901234567890', 50000, '901-234-5678', 'liam.rogers@email.com', '2626 Maple St, City', 3, 2, 1, 'liam_rogers', 0),
('Olivia Fletcher', '1988-08-06', '012345678901', 50000, '012-345-6789', 'olivia.fletcher@email.com', '2727 Walnut St, City', 3, 2, 1, 'olivia_fletcher', 0),
('Mason Campbell', '1993-01-28', '123456789012', 50000, '123-456-7890', 'mason.campbell@email.com', '2828 Pine St, City', 3, 2, 1, 'mason_campbell', 0),
('Amelia Hudson', '1996-06-11', '234567890123', 50000, '234-567-8901', 'amelia.hudson@email.com', '2929 Cedar St, City', 3, 2, 1, 'amelia_hudson', 0),
('Jack Stevens', '1984-11-03', '345678901234', 50000, '345-678-9012', 'jack.stevens@email.com', '3030 Birch St, City', 3, 2, 1, 'jack_stevens', 0),
('Harper Wells', '1990-04-26', '456789012345', 50000, '456-789-0123', 'harper.wells@email.com', '3131 Oak St, City', 3, 2, 1, 'harper_wells', 0),
('Benjamin Barnes', '1995-09-19', '567890123456', 50000, '567-890-1234', 'benjamin.barnes@email.com', '3232 Maple St, City', 3, 2, 1, 'benjamin_barnes', 0),
('Ava Murray', '1989-02-11', '678901234567', 50000, '678-901-2345', 'ava.murray@email.com', '3333 Walnut St, City', 3, 2, 1, 'ava_murray', 0),
('Samuel Williams', '1994-07-05', '789012345678', 50000, '789-012-3456', 'samuel.williams@email.com', '3434 Pine St, City', 3, 2, 1, 'samuel_williams', 0),
('Grace Cooper', '1992-12-28', '890123456789', 50000, '890-123-4567', 'grace.cooper@email.com', '3535 Cedar St, City', 3, 2, 1, 'grace_cooper', 0),
('Dylan Jenkins', '1987-05-21', '901234567890', 50000, '901-234-5678', 'dylan.jenkins@email.com', '3636 Birch St, City', 3, 2, 1, 'dylan_jenkins', 0),
('Aubrey Cox', '1983-10-14', '012345678901', 50000, '012-345-6789', 'aubrey.cox@email.com', '3737 Oak St, City', 3, 2, 1, 'aubrey_cox', 0),
('Jackson Hughes', '1988-03-07', '123456789012', 50000, '123-456-7890', 'jackson.hughes@email.com', '3838 Maple St, City', 3, 2, 1, 'jackson_hughes', 0),
('Emma Ferguson', '1995-08-30', '234567890123', 50000, '234-567-8901', 'emma.ferguson@email.com', '3939 Walnut St, City', 3, 2, 1, 'emma_ferguson', 0),
('Owen Cole', '1991-01-22', '345678901234', 50000, '345-678-9012', 'owen.cole@email.com', '4040 Pine St, City', 3, 2, 1, 'owen_cole', 0),
('Abigail Ward', '1986-06-14', '456789012345', 50000, '456-789-0123', 'abigail.ward@email.com', '4141 Cedar St, City', 3, 2, 1, 'abigail_ward', 0),
('Aiden Turner', '1993-11-07', '567890123456', 50000, '567-890-1234', 'aiden.turner@email.com', '4242 Birch St, City', 3, 2, 1, 'aiden_turner', 0),
('Ella Knight', '1990-04-01', '678901234567', 50000, '678-901-2345', 'ella.knight@email.com', '4343 Oak St, City', 3, 2, 1, 'ella_knight', 0),
('Luke Porter', '1997-09-24', '789012345678', 50000, '789-012-3456', 'luke.porter@email.com', '4444 Maple St, City', 3, 2, 1, 'luke_porter', 0),
('Mia Cunningham', '1984-02-17', '890123456789', 50000, '890-123-4567', 'mia.cunningham@email.com', '4545 Walnut St, City', 3, 2, 1, 'mia_cunningham', 0),
('Carter Watts', '1989-07-10', '901234567890', 50000, '901-234-5678', 'carter.watts@email.com', '4646 Pine St, City', 3, 2, 1, 'carter_watts', 0),
('Scarlett Brooks', '1996-12-03', '012345678901', 50000, '012-345-6789', 'scarlett.brooks@email.com', '4747 Cedar St, City', 3, 2, 1, 'scarlett_brooks', 0);

