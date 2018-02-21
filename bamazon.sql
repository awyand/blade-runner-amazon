-- Drop bamazonDB if it exists --
DROP DATABASE IF EXISTS bamazonDB;
-- Create bamazonDB --
CREATE DATABASE bamazonDB;
-- Use bamazonDB --
USE bamazonDB;

-- Create products table --
CREATE TABLE products (
  id INT(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50),
  department_name VARCHAR(50),
  price DECIMAL(10,2),
  stock_quantity INT(4),
  product_sales DECIMAL(20,2),
  PRIMARY KEY (id)
);

-- Initial stock --
INSERT INTO products
  (product_name, department_name, price, stock_quantity, product_sales)
VALUES
  ("LAPD 2019 Blaster", "Weapons", 500, 50, 0),
  ("LAPD 2049 Blaster", "Weapons", 750, 40, 0),
  ("Spinner", "Vehicles", 100000, 2, 0),
  ("Voight-Kampff Machine", "Devices", 1200, 15, 0),
  ("Do Androids Dream of Electric Sheep?", "Books", 5.50, 100, 0),
  ("The Edge of Human", "Books", 6.50, 80, 0),
  ("Replicant Night", "Books", 9.99, 50, 0),
  ("Eye and Talon", "Books", 12, 25, 0),
  ("Nexus-6", "Replicants", 65000, 10, 0),
  ("Nexus-7", "Replicants", 112500, 2, 0);

-- Create departments table --
CREATE TABLE departments (
  department_id INT(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(50),
  over_head_costs DECIMAL(10,2),
  PRIMARY KEY (department_id)
);

-- Initial department data --
INSERT INTO departments
  (department_name, over_head_costs)
VALUES
  ("Weapons", 1000),
  ("Vehicles", 5000),
  ("Devices", 2500),
  ("Books", 100),
  ("Replicants", 5000);
