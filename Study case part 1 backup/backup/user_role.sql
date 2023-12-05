use study_case_1;

CREATE TABLE IF NOT EXISTS user_role (
    role_id INT NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    is_delete BIT(1),
    PRIMARY KEY (role_id , user_name),
    FOREIGN KEY (user_name)
        REFERENCES `user` (user_name),
    FOREIGN KEY (role_id)
        REFERENCES `role` (role_id)
);

insert into user_role(
user_name,
role_id,
is_delete)
values 
('giang', 1, 0),
('giang',2,0),
('hieu',1,0),
('huy',1,0),
('huy',2,0),
('huy',3,0),
('long',1,0),
('son',1,0),
('son',2,0),
('thao',1,0),
('ton',1,0),
('viet',1,0)