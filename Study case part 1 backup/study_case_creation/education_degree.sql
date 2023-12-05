use study_case_1;
create table if not exists `education_degree`(
id int primary key auto_increment,
`name` varchar(45),
is_delete bit(1)
);
insert into `education_degree`(
`name`, is_delete)
values
('vocational',0),
('college', 0),
('university',0),
('doctoral',0)