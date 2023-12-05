use study_case_1;
create table if not exists `facility_type`(
id int primary key auto_increment,
`name` varchar(45),
is_delete bit(1)
);

insert into `facility_type`(
`name`, is_delete)
values
('room', 0),
('house', 0),
('villa', 0)