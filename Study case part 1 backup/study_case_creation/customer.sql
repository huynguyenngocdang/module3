use study_case_1;
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

truncate `customer`;
insert into `customer` (
customer_type_id, `name`, gender, date_of_birth, id_card, phone_number, email, address, is_delete)
values 
(1,'Nguyen Quoc Su', 1, '1964-01-31', '697366480846', '503780550144', 'su@gmail.com', 'Sai Gon', 0), 
(2,'Nguyen Ngoc Kim Le', 0, '1962-05-12', '709241673363', '249995388428', 'le@gmail.com', 'Sai Gon', 0),
(3,'Pham Nguyen Phuong Trinh', 0, '1963-08-18', '425516071772', '787468622478', 'trinh@gmail.com', 'Sai Gon', 0),
(4,'Phan Thi Anh', 0, '1974-04-12', '993932470529', '962961450820', 'anh@gmail.com', 'Ha Noi', 0),
(5,'Nguyen Thi Ngan', 0, '1993-08-25', '758351397039', '428582845296', 'ngan@gmail.com', 'Vinh Phuc', 0),
(6,'Truong Khanh Vinh', 1, '1974-03-15', '708340675176', '432422316949', 'vinh@gmail.com', 'Da Lat', 0),
(1, 'Nguyen Le Bao Thi', 0, '1995-03-10','273099875244','027575634834', 'this@gmail.com','Nha Trang',0)