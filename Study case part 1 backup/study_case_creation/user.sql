
drop table if exists `user`;
CREATE TABLE `user` (
    user_name VARCHAR(255) PRIMARY KEY,
    `password` VARCHAR(255),
    is_delete BIT(1)
);

truncate `user`;
insert into `user`(
user_name,
`password`,
is_delete)
values
('huy','123',0),
('viet','123',0),
('giang','123',0),
('hieu','123',0),
('son','123',0),
('thao','123',0),
('long','123',0),
('ton','123',0)