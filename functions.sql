DELIMITER $$

CREATE FUNCTION check_credit(credit DECIMAL(10,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF credit >= 50000 THEN
        RETURN 'HIGH CREDIT';
    ELSE
        RETURN 'LOW CREDIT';
    END IF;
END $$

DELIMITER ;



-- return square of a number
DELIMITER $$

CREATE FUNCTION square_num(n INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN n * n;
END $$

DELIMITER ;
SELECT square_num(5);



-- Function to add two numbers
DELIMITER $$

CREATE FUNCTION add_numbers(a INT, b INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN a + b;
END $$

DELIMITER ;
SELECT add_numbers(10, 20);



-- Function to check EVEN or ODD
DELIMITER $$

CREATE FUNCTION check_even_odd(n INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF n % 2 = 0 THEN
        RETURN 'EVEN';
    ELSE
        RETURN 'ODD';
    END IF;
END $$

DELIMITER ;


-- Function to check PASS or FAIL
DELIMITER $$

CREATE FUNCTION check_result(marks INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF marks >= 40 THEN
        RETURN 'PASS';
    ELSE
        RETURN 'FAIL';
    END IF;
END $$

DELIMITER ;



-- Function to calculate annual salary
DELIMITER $$

CREATE FUNCTION annual_salary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END $$

DELIMITER ;



-- Function to categorize age
DELIMITER $$

CREATE FUNCTION age_group(age INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF age < 18 THEN
        RETURN 'MINOR';
    ELSEIF age BETWEEN 18 AND 60 THEN
        RETURN 'ADULT';
    ELSE
        RETURN 'SENIOR';
    END IF;
END $$

DELIMITER ;



-- Function to calculate discount
DELIMITER $$

CREATE FUNCTION discount(price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    IF price >= 5000 THEN
        RETURN price * 0.10;
    ELSE
        RETURN price * 0.05;
    END IF;
END $$

DELIMITER ;

