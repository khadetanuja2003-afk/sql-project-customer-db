CREATE VIEW customer_orders_view AS
SELECT c.customer_name, o.order_date, o.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;


-- View showing customer name and city
CREATE VIEW customer_city_view AS
SELECT customer_name, city
FROM customers;


-- View showing customer name with credit limit
CREATE VIEW customer_credit_view AS
SELECT customer_name, credit_limit
FROM customers;


-- View showing all orders with customer name
CREATE VIEW orders_customer_view AS
SELECT c.customer_name, o.order_id, o.amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;



-- View showing only Pune customers
CREATE VIEW pune_customers_view AS
SELECT *
FROM customers
WHERE city = 'Pune';



-- View showing orders greater than 10,000
CREATE VIEW high_value_orders_view AS
SELECT *
FROM orders
WHERE amount > 10000;


-- View showing total order amount per customer
CREATE VIEW total_orders_per_customer AS
SELECT c.customer_name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- View showing customers with HIGH credit
CREATE VIEW high_credit_customers_view AS
SELECT customer_name, credit_limit
FROM customers
WHERE credit_limit >= 50000;



-- View showing customer orders with date
CREATE VIEW customer_order_dates_view AS
SELECT c.customer_name, o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


SHOW FULL TABLES
WHERE table_type = 'VIEW';

