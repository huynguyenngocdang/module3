use study_case_1;
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

truncate `employee`;
insert into `employee`(
 `name`, date_of_birth, id_card, salary, phone_number, email, address, position_id, education_degree_id, division_id, user_name, is_delete)
values
( 'Huy Nguyen Ngoc Dang', '1992-02-13', '985893243330', 2000.00, '580567297496', 'huy@gmail.com', 'Sai Gon', 5, 4, 4, 'huy', 0),
( 'Giang Vu Huong', '2002-12-31', '891160223190', 500.00, '745168394934', 'giang@gmail.com', 'Quang Nam', 4, 4, 4, 'giang', 0),
( 'Hieu Nguyen Le Dinh', '2001-07-03', '107262606363', 500.00, '563406045991', 'hieu@gmail.com', 'Quang Nam', 2, 2, 3, 'hieu', 0),
( 'Long Le Phi', '2000-08-10', '989097755282', 500.00, '996464734123', 'long@gmail.com', 'Quang Ngai', 1, 1, 3, 'long', 0),
( 'Son Nguyen Ly', '2003-04-12', '811271387163', 500.00, '883241056328', 'son@gmail.com', 'Sai Gon', 3, 3, 1, 'son', 0),
( 'Thao Nguyen Thi Thanh', '2004-02-06', '899984234347', 500.00, '957121871668', 'thao@gmail.com', 'Ha Noi', 3, 3, 2, 'thao', 0),
( 'Ton Nguyen Huu', '2000-05-06', '119629433994', 500.00, '449733668052', 'ton@gmail.com', 'Ha Noi', 1, 1, 2, 'ton', 0),
( 'Viet Vu Hoang Quoc', '1998-01-01', '007930066377', 500.00, '437236341926', 'viet@gmail.com', 'Sai Gon', 2, 2, 3, 'viet', 0)
