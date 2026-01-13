-- 1. Index on customer_name
CREATE INDEX idx_customer_name ON customers(customer_name);

-- 2. Unique index on email
CREATE UNIQUE INDEX idx_customer_email ON customers(email);

-- 3. Index on city
CREATE INDEX idx_customer_city ON customers(city);

-- 4. Index on order_date
CREATE INDEX idx_order_date ON orders(order_date);

-- 5. Composite index on customer_id and order_date
CREATE INDEX idx_customer_order_date ON orders(customer_id, order_date);
