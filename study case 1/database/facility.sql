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

INSERT INTO `facility` (
    `name`, 
    `area`, 
    `cost`, 
    `max_people`, 
    `rent_type_id`, 
    `facility_type_id`, 
    `standard_room`, 
    `description_other_convenience`, 
    `pool_area`, 
    `number_of_floors`, 
    `facility_free`, 
    `is_delete`
) VALUES
-- Rooms
('Room 101', 25, 50.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free breakfast', 0),
('Room 102', 30, 60.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 103', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 104', 26, 52.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 105', 32, 62.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 106', 29, 57.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 107', 27, 53.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 108', 31, 61.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 109', 30, 60.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 110', 28, 55.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 111', 29, 57.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 112', 26, 52.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 113', 31, 61.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 114', 30, 60.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 115', 28, 55.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 116', 27, 53.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 117', 32, 62.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 118', 29, 57.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 119', 27, 53.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 120', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 111', 29, 57.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 112', 26, 52.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 113', 31, 61.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 114', 30, 60.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 115', 28, 55.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 116', 27, 53.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 117', 32, 62.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 118', 29, 57.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 119', 27, 53.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 120', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 131', 31, 61.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 132', 29, 57.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 133', 28, 55.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 134', 27, 53.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 135', 32, 62.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 136', 30, 60.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 137', 29, 57.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 138', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 139', 27, 53.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 140', 31, 61.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 141', 30, 60.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 142', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 143', 29, 57.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 144', 27, 53.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 145', 32, 62.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 146', 31, 61.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 147', 29, 57.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 148', 28, 55.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),
('Room 149', 27, 53.00, 2, 1, 1, 'Standard Room B', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free parking', 0),
('Room 150', 31, 61.00, 2, 1, 1, 'Standard Room A', 'Free Wi-Fi, TV, Air Conditioning', NULL, NULL, 'Free toiletries', 0),

-- Houses
('House A', 120, 150.00, 6, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free parking, Free breakfast', 0),
('House B', 100, 130.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House C', 110, 140.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free parking, Free breakfast', 0),
('House D', 90, 120.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House E', 95, 125.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House F', 105, 135.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free toiletries, Free parking', 0),
('House G', 100, 130.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House H', 115, 145.00, 6, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free toiletries, Free parking', 0),
('House I', 98, 128.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House J', 92, 122.00, 3, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House K', 88, 118.00, 3, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House L', 96, 126.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free toiletries, Free parking', 0),
('House M', 95, 125.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House N', 100, 130.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House O', 105, 135.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free toiletries, Free parking', 0),
('House P', 110, 140.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free parking, Free breakfast', 0),
('House Q', 98, 128.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House R', 92, 122.00, 3, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free parking, Free breakfast', 0),
('House S', 88, 118.00, 3, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 1, 'Free toiletries, Free parking', 0),
('House T', 96, 126.00, 4, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free parking, Free breakfast', 0),
('House U', 110, 140.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free toiletries, Free parking', 0),
('House V', 105, 135.00, 5, 2, 2, 'Standard House', 'Fully furnished, Kitchen, Free Wi-Fi', NULL, 2, 'Free parking, Free breakfast', 0),


-- Villas
('Villa X', 300, 400.00, 10, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 50.00, 3, 'Free parking, Free breakfast', 0),
('Villa Y', 350, 450.00, 12, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 60.00, 4, 'Free toiletries, Free parking', 0),
('Villa Z', 320, 420.00, 11, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 55.00, 3, 'Free parking, Free breakfast', 0),
('Villa W', 310, 410.00, 10, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 52.00, 4, 'Free toiletries, Free parking', 0),
('Villa V', 330, 430.00, 12, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 58.00, 3, 'Free parking, Free breakfast', 0),
('Villa U', 340, 440.00, 11, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 56.00, 4, 'Free toiletries, Free parking', 0),
('Villa T', 325, 425.00, 10, 3, 3, 'Luxury Villa', 'Private pool, Fully furnished', 53.00, 3, 'Free parking, Free breakfast', 0);