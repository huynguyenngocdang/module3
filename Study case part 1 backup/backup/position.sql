use study_case_1;
drop table if exists position;
create table `position`(
id int primary key auto_increment,
`name` varchar(45),
is_delete bit(1)
);

insert into `position`(
`name`,
is_delete
) values 
('receptionist', 0),
('server',0),
('specialist',0),
('supervisor', 0),
('director',0)