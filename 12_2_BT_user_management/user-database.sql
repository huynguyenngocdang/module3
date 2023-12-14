USE `12_2_user_management`;
CREATE TABLE IF NOT EXISTS `user`(
	`id` int PRIMARY KEY AUTO_INCREMENT,
    `username` varchar(255) not null,
    `password` varchar(255),
    `is_delete` bit(1)
);

INSERT INTO `user`(
	`username`, `password`, `is_delete`)
    VALUES
    ('Huy', '123', 0),
    ('Giang', '123', 0),
    ('Long', '123', 0),
    ('Tu', '123', 0)