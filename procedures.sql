DELIMITER $$

CREATE PROCEDURE get_customer_orders(IN cid INT)
BEGIN
    SELECT * FROM orders WHERE customer_id = cid;
END $$

DELIMITER ;


-- Procedure to get all customers
DELIMITER $$

CREATE PROCEDURE get_all_customers()
BEGIN
    SELECT * FROM customers;
END $$

DELIMITER ;


-- Procedure to get customer details by ID
DELIMITER $$

CREATE PROCEDURE get_customer_by_id(IN cid INT)
BEGIN
    SELECT * FROM customers WHERE customer_id = cid;
END $$

DELIMITER ;



-- Procedure to get customers by city
DELIMITER $$

CREATE PROCEDURE get_customers_by_city(IN city_name VARCHAR(30))
BEGIN
    SELECT * FROM customers WHERE city = city_name;
END $$

DELIMITER ;


-- Procedure to get all orders
DELIMITER $$

CREATE PROCEDURE get_all_orders()
BEGIN
    SELECT * FROM orders;
END $$

DELIMITER ;


-- Procedure to get orders above a certain amount
DELIMITER $$

CREATE PROCEDURE get_orders_above_amount(IN min_amount DECIMAL(10,2))
BEGIN
    SELECT * FROM orders WHERE amount > min_amount;
END $$

DELIMITER ;



-- Procedure to get total order amount for a customer
DELIMITER $$

CREATE PROCEDURE get_total_order_amount(IN cid INT)
BEGIN
    SELECT SUM(amount) AS total_amount
    FROM orders
    WHERE customer_id = cid;
END $$

DELIMITER ;


-- Procedure to count orders per customer
DELIMITER $$

CREATE PROCEDURE count_orders_by_customer(IN cid INT)
BEGIN
    SELECT COUNT(*) AS total_orders
    FROM orders
    WHERE customer_id = cid;
END $$

DELIMITER ;


-- Procedure to get customers with high credit
DELIMITER $$

CREATE PROCEDURE get_high_credit_customers()
BEGIN
    SELECT customer_name, credit_limit
    FROM customers
    WHERE credit_limit >= 50000;
END $$

DELIMITER ;



-- Procedure to get customer orders with name (JOIN)
DELIMITER $$

CREATE PROCEDURE get_customer_order_details()
BEGIN
    SELECT c.customer_name, o.order_date, o.amount
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id;
END $$

DELIMITER ;

SHOW PROCEDURE STATUS;
