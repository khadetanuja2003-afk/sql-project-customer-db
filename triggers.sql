DELIMITER $$

CREATE TRIGGER before_customer_insert
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    IF NEW.creditLimit < 0 THEN
        SET NEW.creditLimit = 0;
    END IF;
END$$

DELIMITER ;


