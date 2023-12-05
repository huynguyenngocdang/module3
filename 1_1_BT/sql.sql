


use student_management;
DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS Teacher;
CREATE TABLE Class (
    id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(200)
);

CREATE TABLE Teacher (
    id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(200),
    age INT,
    country VARCHAR(50)
);

CREATE TABLE Student (
    id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(200),
    age INT
);

truncate student;
insert into Student(name, age)
values
("Huy","10"),
("Huy","20"),
("Huy","30"),
("Huy","40");

SELECT 
    *
FROM
    Student
WHERE
    age > 20;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student 
WHERE
    age > 20;
SET SQL_SAFE_UPDATES = 1;

