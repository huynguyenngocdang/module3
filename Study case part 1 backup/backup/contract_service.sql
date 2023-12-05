use study_case_1;
CREATE TABLE IF NOT EXISTS `contract_service` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    contract_id INT NOT NULL,
    service_id INT NOT NULL,
    quantity INT NOT NULL,
    is_delete BIT(1),
    FOREIGN KEY (contract_id)
        REFERENCES `contract` (id),
    FOREIGN KEY (service_id)
        REFERENCES `service` (id)
);

truncate `contract_service`;
insert into `contract_service`(
contract_id, service_id, quantity, is_delete)
values
(1, 8, 1, 0),
(1, 12, 1, 0),
(1, 5, 2, 0),
(1, 1, 2, 0),
(2, 8, 1, 0),
(2, 12, 1, 0),
(2, 5, 3, 0),
(2, 2, 3, 0),
(3, 8, 1, 0),
(3, 12, 1, 0),
(3, 5, 12, 0),
(3, 3, 1, 0)