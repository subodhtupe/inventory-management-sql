CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    supplier_id INT,
    stock_qty INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO suppliers (supplier_name, city) VALUES
('ABC Traders', 'Mumbai'),
('Global Supplies', 'Delhi'),
('Quick Distributors', 'Pune');

INSERT INTO products (product_name, category, price, supplier_id, stock_qty) VALUES
('Laptop', 'Electronics', 55000, 1, 20),
('Mouse', 'Electronics', 500, 1, 100),
('Office Chair', 'Furniture', 7000, 2, 15),
('Desk', 'Furniture', 12000, 3, 10);

INSERT INTO sales (product_id, quantity_sold, sale_date) VALUES
(1, 2, '2025-01-05'),
(2, 10, '2025-01-06'),
(3, 1, '2025-01-07');




