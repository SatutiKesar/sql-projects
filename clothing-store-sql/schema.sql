-- ==========================================================================
-- Schema for Clothing Store Project
-- ==========================================================================
-- This SQL script creates the schema for a clothing store database.
-- It includes tables for Customers, Products, Orders, Order Items, Categories,
-- Suppliers, and the many-to-many relationship between Products and Suppliers.

-- ==========================================================================
-- Create Customers Table
-- ==========================================================================
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email VARCHAR(320),
    phone_number VARCHAR(15),
    address VARCHAR (100)
);

-- ==========================================================================
-- Create Products Table
-- ==========================================================================
CREATE TABLE Products(
	product_id INTEGER PRIMARY KEY,
    name TEXT,
    description VARCHAR (100),
    price INTEGER,
    category TEXT,
    stock_quantity INTEGER
);

-- ==========================================================================
-- Create Orders Table
-- ==========================================================================
CREATE TABLE Orders(
	order_id INTEGER PRIMARY KEY,
	customer_id INTEGER,
    order_date DATE,
    total_amount INTEGER
);

-- ==========================================================================
-- Create Order_Items Table
-- ==========================================================================
CREATE TABLE Order_Items(
	order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
	product_id INTEGER,
    quantity INTEGER,
    price_at_purchase INTEGER
);

-- ==========================================================================
-- Create Categories Table 
-- ==========================================================================
CREATE TABLE Categories(
	category_id INTEGER PRIMARY KEY,
    category_name TEXT
);

-- ==========================================================================
-- Create Suppliers Table
-- ==========================================================================
CREATE TABLE Suppliers(
	supplier_id INTEGER PRIMARY KEY,
    name TEXT,
    contact_info VARCHAR(100),
    address VARCHAR(255)
);

-- ==========================================================================
-- Create Product_Supplier Table
-- ==========================================================================
CREATE TABLE Product_Supplier(
	product_id INTEGER ,
    supplier_id INTEGER
);

-- ==========================================================================
-- Note: Ensure to run this script in a database environment compatible with 
-- the SQL dialect used (e.g., MySQL, PostgreSQL).
-- ==========================================================================
