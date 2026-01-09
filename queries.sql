-- Select all customers
SELECT * FROM customers;

-- Customers from Pune
SELECT customer_name, city FROM customers WHERE city = 'Pune';


-- Total order amount per customer
SELECT c.customer_name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- Display all orders
SELECT *
FROM orders;


-- Show orders with amount greater than 10,000
SELECT *
FROM orders
WHERE amount > 10000;


-- Display customer name with order amount (JOIN)
SELECT c.customer_name, o.amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


-- Find total order amount for each customer
SELECT c.customer_name, SUM(o.amount) AS total_order_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- Show customers who have placed orders
SELECT DISTINCT c.customer_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;