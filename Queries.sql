-- Create Customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);

-- Create Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);
-- Insert data into customers
INSERT INTO customers (first_name, last_name, city, email) VALUES
('John', 'Doe', 'New York', 'john@example.com'),
('Jane', 'Smith', 'Los Angeles', 'jane@example.com'),
('Alice', 'Brown', 'Chicago', 'alice@example.com'),
('Bob', 'Johnson', 'Houston', 'bob@example.com');

-- Insert data into orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-08-01', 250.00),
(2, '2025-08-03', 150.50),
(1, '2025-08-05', 300.00),
(3, '2025-08-07', 99.99);

--SELECT queries
SELECT * FROM customers;
SELECT first_name, last_name FROM customers;
SELECT * FROM orders WHERE total_amount > 200;
SELECT * FROM customers WHERE city = 'New York' AND first_name = 'John';
SELECT * FROM customers WHERE city = 'Chicago' OR city = 'Houston';
SELECT * FROM customers WHERE email LIKE '%example.com';
SELECT * FROM orders WHERE total_amount BETWEEN 100 AND 300;
SELECT * FROM orders ORDER BY total_amount DESC;
SELECT * FROM orders ORDER BY order_date DESC LIMIT 2;
