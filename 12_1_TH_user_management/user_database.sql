CREATE SCHEMA IF NOT EXISTS `12_1_user_management` ;
USE `12_1_user_management`;

create table if not exists `users` ( 
      `id` int NOT NULL AUTO_INCREMENT, 
      `name` varchar(120) NOT NULL, 
      `email` varchar(220) NOT NULL, 
      `country` varchar(120), 
      PRIMARY KEY (id) 
);

insert into `users`(`name`, `email`, `country`) values('Minh','minh@codegym.vn','Viet Nam');
insert into `users`(`name`, `email`, `country`) values('Kante','kante@che.uk','Kenia');
