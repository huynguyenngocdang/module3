use study_case_1;
CREATE TABLE IF NOT EXISTS `facility` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    area INT,
    cost DOUBLE,
    max_people INT,
    rent_type_id INT,
    facility_type_id INT,
    standard_room VARCHAR(45),
    description_other_convenience TEXT,
    pool_area DOUBLE,
    number_of_floors INT,
    facility_free TEXT,
    is_delete BIT(1),
    FOREIGN KEY (rent_type_id)
        REFERENCES `rent_type` (id),
    FOREIGN KEY (facility_type_id)
        REFERENCES `facility_type` (id)
);

truncate `facility`;
insert into `facility` (
`name`, area, cost, max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors, facility_free, is_delete)
values
('room_101', 100, 80, 2, 1, 1, default, default, default, default, 'free chip, free coke', 0),
('room_102', 100, 80, 2, 1, 1, default, default, default, default, 'free chip, free coke', 0),
('room_103', 100, 80, 2, 2, 1, default, default, default, default, 'free chip, free coke', 0),
('room_104', 100, 80, 2, 2, 1, default, default, default, default, 'free chip, free coke', 0),
('room_105', 100, 80, 2, 3, 1, default, default, default, default, 'free chip, free coke', 0),
('room_201', 250, 120, 4, 1, 1, default, default, default, default, 'free chip, free candy, free coke, free tour', 0), 
('room_202', 300, 120, 4, 2, 1, default, default, default, default, 'free chip, free candy, free coke, free tour', 0),
('room_203', 300, 120, 4, 3, 1, default, default, default, default, 'free chip, free candy, free coke, free tour', 0), 
('house_1', 500, 250, 8, 2, 2, '4 bedroom', '4 bedroom, 2 toilet, 1 kitchen', default, 3, default, 0), 
('house_2', 500, 1400, 8, 3, 2, '5 bedroom', '4 bedroom, 1 guest bedroom, 3 toilet, 1 kitchen', default, 4, default, 0), 
('house_3', 500, 10000, 8, 4, 2, '5 bedroom', '4 bedroom, 1 guest bedroom, 3 toilet, 1 kitchen', default, 4, default, 0),
('villa_1', 1000, 500, 8, 2, 3, '8 bedroom', '6 bedroom, 2 guest bedroom, 8 toilet, 2 kitchen, elevator', 100, 4, default, 0),
('villa_2', 1000, 2500, 8, 3, 3, '8 bedroom', '6 bedroom, 2 guest bedroom, 8 toilet, 2 kitchen, elevator', 150, 4, default, 0),
('villa_3', 2500, 2500, 16, 3, 3, '16 bedroom', '14 bedroom, 2 guest bedroom, 16 toilet, 3 kitchen, 2 elevator', 300, 5, default, 0)