use customer_db;
-- Find customers who have placed at least one order
SELECT *
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);


-- Find customers whose total order amount is greater than average order amount
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(amount) > (
        SELECT AVG(amount)
        FROM orders
    )
);


-- Show customer name with total order amount
SELECT customer_name,
       (
           SELECT SUM(amount)
           FROM orders
           WHERE orders.customer_id = customers.customer_id
       ) AS total_amount
FROM customers;


-- Find customers who have NOT placed any orders
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);


-- Find customers whose credit limit is higher than average credit limit
SELECT customer_name, credit_limit
FROM customers
WHERE credit_limit > (
    SELECT AVG(credit_limit)
    FROM customers
);
