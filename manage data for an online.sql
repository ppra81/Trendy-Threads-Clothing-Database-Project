-- Create the database
CREATE DATABASE clothing_store;
USE clothing_store;

-- Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit VARCHAR(20)
);

-- Vendors table
CREATE TABLE Vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL
);

-- Customers table
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Inventory table
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    vendor_id INT,
    quantity_on_hand INT,
    cost DECIMAL(10,2),
    purchase_date DATE,
    location VARCHAR(10),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);

-- Sales table
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id VARCHAR(10),
    quantity_sold INT,
    price DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Data for Products
INSERT INTO Products (product_id, description, category, unit) VALUES
(1001, 'Classic Blue Denim Jacket', 'Outerwear', 'piece'),
(1002, 'White Cotton T-Shirt', 'Tops', 'piece'),
(1003, 'Slim Fit Jeans', 'Bottoms', 'piece'),
(1004, 'Leather Boots', 'Footwear', 'pair'),
(1005, 'Summer Hat', 'Accessories', 'piece');

-- Data for Vendors
INSERT INTO Vendors (vendor_name) VALUES
('Blue Ridge Apparel'),
('Casual Cloth Co.'),
('Denim Dudes Inc.'),
('Boots & More'),
('Fashion Accessories Ltd.');

-- Data for Customers
INSERT INTO Customers (customer_id, customer_name) VALUES
('C101', 'Alice Johnson'),
('C102', 'Bob Smith'),
('C103', 'Charlie Davis'),
('C104', 'Dana Lee');

-- Data for Inventory
INSERT INTO Inventory (product_id, vendor_id, quantity_on_hand, cost, purchase_date, location) VALUES
(1001, 1, 20, 35.50, '2025-03-15', 'A1'),
(1002, 2, 50, 5.00,  '2025-03-20', 'B2'),
(1003, 3, 30, 20.00, '2025-03-18', 'C3'),
(1004, 4, 15, 40.00, '2025-03-25', 'D4'),
(1005, 5, 40, 8.00,  '2025-03-22', 'E5');

-- Data for Sales
INSERT INTO Sales (product_id, customer_id, quantity_sold, price, sale_date) VALUES
(1001, 'C101', 1, 75.00, '2025-04-01'),
(1002, 'C102', 2, 15.00, '2025-04-10'),
(1003, 'C103', 1, 45.00, '2025-04-19'),
(1004, 'C101', 1, 95.00, '2025-04-03'),
(1005, 'C104', 3, 20.00, '2025-04-21');
