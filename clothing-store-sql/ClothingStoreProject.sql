CREATE DATABASE Clothing_store;
USE Clothing_store;

CREATE TABLE Customers(
	customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email VARCHAR(320),
    phone_number VARCHAR(15),
    address VARCHAR (100)
);
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number, address)
VALUES
(1, 'Mickey', 'Mouse', 'mickey.mouse@example.com', '555-0101', '123 Acme Lane, Toon Town, CA'),
(2, 'Bugs', 'Bunny', 'bugs.bunny@example.com', '555-0102', '456 Looney Avenue, Toon Town, CA'),
(3, 'SpongeBob', 'SquarePants', 'spongebob.squarepants@example.com', '555-0103', '789 Pineapple Street, Bikini Bottom, WA'),
(4, 'Scooby', 'Doo', 'scooby.doo@example.com', '555-0104', '101 Mystery Road, Crystal Cove, CA'),
(5, 'Fred', 'Flintstone', 'fred.flinstone@example.com', '555-0105', '202 Bedrock Boulevard, Bedrock, FL'),
(6, 'Tom', 'Cat', 'tom.cat@example.com', '555-0106', '303 Tom & Jerry Lane, Cartoon City, NY'),
(7, 'Daphne', 'Blake', 'daphne.blake@example.com', '555-0107', '404 Mystery Mansion, Crystal Cove, CA'),
(8, 'Velma', 'Dinkley', 'velma.dinkley@example.com', '555-0108', '505 Spooky Street, Crystal Cove, CA'),
(9, 'Bart', 'Simpson', 'bart.simpson@example.com', '555-0109', '606 Evergreen Terrace, Springfield, IL'),
(10, 'Jessica', 'Rabbit', 'jessica.rabbit@example.com', '555-0110', '707 Toon World, Toon Town, CA');

CREATE TABLE Products(
	product_id INTEGER PRIMARY KEY,
    name TEXT,
    description VARCHAR (100),
    price INTEGER,
    category TEXT,
    stock_quantity INTEGER
);
INSERT INTO Products (product_id, name, description, price, category, stock_quantity)
VALUES 
(1, 'Superhero T-Shirt', 'Comfortable cotton t-shirt featuring your favorite superhero.', 19.99, 'Apparel', 150),
(2, 'Classic Denim Jeans', 'Stylish denim jeans with a classic fit.', 39.99, 'Apparel', 100),
(3, 'Gaming Headset', 'High-quality headset with noise cancellation for an immersive gaming experience.', 89.99, 'Electronics', 75),
(4, 'Leather Wallet', 'Genuine leather wallet with multiple card slots and a coin pocket.', 29.99, 'Accessories', 50),
(5, 'Fitness Tracker', 'Wearable fitness tracker with heart rate monitoring and step counting.', 59.99, 'Electronics', 80),
(6, 'Vintage Baseball Cap', 'Adjustable baseball cap with a vintage design.', 14.99, 'Apparel', 200),
(7, 'Bluetooth Speaker', 'Portable Bluetooth speaker with excellent sound quality and long battery life.', 49.99, 'Electronics', 60),
(8, 'Yoga Mat', 'Non-slip yoga mat perfect for your workout sessions.', 24.99, 'Fitness', 120),
(9, 'Classic Watch', 'Elegant wristwatch with a timeless design and durable strap.', 119.99, 'Accessories', 40),
(10, 'Smartphone Case', 'Durable smartphone case with shockproof features.', 15.99, 'Electronics', 90);


CREATE TABLE Orders(
	order_id INTEGER PRIMARY KEY,
	customer_id INTEGER,
    order_date DATE,
    total_amount INTEGER
);
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES 
(1, 1, '2024-08-01', 59.97),  -- Mickey Mouse's order
(2, 2, '2024-08-05', 89.99),  -- Bugs Bunny's order
(3, 3, '2024-08-10', 29.99),  -- SpongeBob SquarePants' order
(4, 4, '2024-08-12', 119.99), -- Scooby-Doo's order
(5, 5, '2024-08-15', 49.99),  -- Fred Flintstone's order
(6, 6, '2024-08-20', 79.98),  -- Tom Cat's order
(7, 7, '2024-08-25', 24.99),  -- Daphne Blake's order
(8, 8, '2024-08-28', 69.99),  -- Velma Dinkley’s order
(9, 9, '2024-09-01', 15.99),  -- Bart Simpson's order
(10, 10, '2024-09-05', 119.99); -- Jessica Rabbit's order

CREATE TABLE Order_Items(
	order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
	product_id INTEGER,
    quantity INTEGER,
    price_at_purchase INTEGER
);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_at_purchase)
VALUES 
(1, 1, 1, 2, 19.99),  -- Mickey Mouse's order: 2 Superhero T-Shirts
(2, 1, 4, 1, 29.99),  -- Mickey Mouse's order: 1 Leather Wallet
(3, 2, 3, 1, 89.99),  -- Bugs Bunny's order: 1 Gaming Headset
(4, 3, 7, 1, 24.99),  -- SpongeBob SquarePants' order: 1 Yoga Mat
(5, 4, 9, 1, 119.99), -- Scooby-Doo's order: 1 Classic Watch
(6, 5, 5, 1, 59.99),  -- Fred Flintstone's order: 1 Fitness Tracker
(7, 6, 2, 2, 39.99),  -- Tom Cat's order: 2 Classic Denim Jeans
(8, 7, 8, 1, 24.99),  -- Daphne Blake's order: 1 Yoga Mat
(9, 8, 6, 1, 14.99),  -- Velma Dinkley's order: 1 Vintage Baseball Cap
(10, 9, 10, 1, 15.99); -- Bart Simpson's order: 1 Smartphone Case

CREATE TABLE Categories(
	category_id INTEGER PRIMARY KEY,
    category_name TEXT
);
INSERT INTO Categories (category_id, category_name)
VALUES 
(1, 'Apparel'),            -- General category for clothing items
(2, 'Electronics'),        -- Category for electronic gadgets
(3, 'Accessories'),        -- Category for various accessories
(4, 'Fitness'),            -- Category for fitness-related products
(5, 'Toys'),               -- Category for toys
(6, 'Home Goods'),         -- Category for home-related items
(7, 'Books'),              -- Category for books and literature
(8, 'Games'),              -- Category for video games and board games
(9, 'Collectibles'),       -- Category for collectible items
(10, 'Art Supplies');      -- Category for art-related materials

CREATE TABLE Suppliers(
	supplier_id INTEGER PRIMARY KEY,
    name TEXT,
    contact_info VARCHAR(100),
    address VARCHAR(255)
);

INSERT INTO Suppliers (supplier_id, name, contact_info, address)
VALUES
(1, 'Acme Corp', 'acme.mickey@acme.com', '123 Acme Lane, Toon Town, CA'),
(2, 'Gizmo Ltd.', 'gizmo.bugs@gizmo.com', '456 Gadget Road, Tech City, TX'),
(3, 'Bikini Bottom Supply', 'spongebob.bbb@bikinibottom.com', '789 Pineapple Street, Bikini Bottom, WA'),
(4, 'Mystery Inc.', 'scooby.doo@mystery.com', '101 Mystery Road, Crystal Cove, CA'),
(5, 'Bedrock Industries', 'fred.flintstone@bedrock.com', '202 Bedrock Boulevard, Bedrock, FL'),
(6, 'Tom & Jerry Enterprises', 'tom.jerry@tomandjerry.com', '303 Cartoon Lane, Cartoon City, NY'),
(7, 'Crystal Cove Crafts', 'velma.blake@crystalcove.com', '404 Spooky Street, Crystal Cove, CA'),
(8, 'Springfield Supply Co.', 'bart.simpson@springfield.com', '606 Evergreen Terrace, Springfield, IL'),
(9, 'Toon World Traders', 'jessica.rabbit@toonworld.com', '707 Toon World, Toon Town, CA'),
(10, 'Epic Games Ltd.', 'bugs.bunny@epicgames.com', '808 Game Street, Epic City, FL');

CREATE TABLE Product_Supplier(
	product_id INTEGER ,
    supplier_id INTEGER
);
INSERT INTO Product_Supplier (product_id, supplier_id)
VALUES 
(1, 1),  -- Superhero T-Shirt supplied by Acme Corp
(1, 2),  -- Superhero T-Shirt also supplied by Gizmo Ltd.
(2, 3),  -- Classic Denim Jeans supplied by Bikini Bottom Supply
(3, 4),  -- Gaming Headset supplied by Mystery Inc.
(4, 5),  -- Leather Wallet supplied by Bedrock Industries
(5, 6),  -- Fitness Tracker supplied by Tom & Jerry Enterprises
(6, 7),  -- Vintage Baseball Cap supplied by Crystal Cove Crafts
(7, 8),  -- Bluetooth Speaker supplied by Springfield Supply Co.
(8, 9),  -- Yoga Mat supplied by Toon World Traders
(9, 10);  -- Classic Watch supplied by Epic Games Ltd.
select * from Product_Supplier;
show tables;

-- Retrieving all products
SELECT * FROM Products;

-- Find all orders for a specific customer
SELECT * FROM Orders WHERE customer_id = 7;

-- Get details of items in an order
SELECT * FROM Order_Items WHERE order_id = 1;

/*Find Products in a Specific Category*/
SELECT * FROM Products WHERE category = "Fitness";

/*Retriving all products and their categories*/
SELECT Products.name, Categories.category_name
FROM Products
JOIN Categories
	ON Products.category = Categories.category_name; 

/*Getting order details including customer and product information*/
SELECT o.order_id, c.first_name, p.name, oi.quantity, o.order_date, oi.price_at_purchase, c.address
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;

/*Finding suppliers for a specific product*/
SELECT p.name AS product, p.category, s.supplier_id, s.name AS supplier_name, s.contact_info, s.address
FROM Products p 
JOIN Product_Supplier ps ON p.product_id = ps.product_id
JOIN Suppliers s ON s.supplier_id = ps.supplier_id;

/*List All Orders with Customer Information*/
SELECT Orders.order_id, Customers.first_name, Customers.last_name, Orders.order_date
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;

/*List Order Items with Product Details*/
SELECT Order_Items.order_id, Products.name AS product_name, Order_Items.quantity
FROM Order_Items
JOIN Products ON Order_Items.product_id = Products.product_id;

/*List All Products in an Order*/
SELECT Orders.order_id, Products.name, Order_Items.quantity, (Order_Items.quantity * Products.price) AS TotalPrice
FROM Order_Items
JOIN Orders ON Order_Items.order_id = Orders.order_id
JOIN Products ON Order_Items.product_id = Products.product_id
WHERE Orders.order_id = 1;

/*Total sales for each product*/
SELECT Products.name, SUM(Order_Items.quantity * Products.price) AS TotalSales
FROM Order_Items
JOIN Products ON Order_Items.Product_id = Products.product_id
GROUP BY Products.name;

/*Total Orders per Customer*/
SELECT Customers.first_name, COUNT(Orders.order_id) AS TotalOrders
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
GROUP BY Customers.first_name;

/*Average Order Value*/
SELECT AVG(TotalOrderValue) AS AverageOrderValue
FROM (
    SELECT Orders.order_id, SUM(Order_Items.quantity * Products.price) AS TotalOrderValue
    FROM Order_Items
    JOIN Orders ON Order_Items.order_id = Orders.order_id
    JOIN Products ON Order_Items.product_id = Products.product_id
    GROUP BY Orders.order_id
) AS OrderValues;

/*Subqueries:*/
select * from Suppliers
where supplier_id in (select supplier_id from Products where name = "Bluetooth Speaker");

/*Pattern Matching:*/
select * from Customers where email like 'spongebob.squarepants@example.com';

/*Retrieve Specific Columns*/
ALTER TABLE Products MODIFY COLUMN supplier_id INT;
SET SQL_SAFE_UPDATES = 0;
SET @row_number = 0;
UPDATE Products
SET supplier_id = (@row_number := @row_number + 1);
select * from Products;
SET SQL_SAFE_UPDATES = 1;
select Suppliers.name as Supplier_name, Products.name as Product, Products.description, Products.stock_quantity from Suppliers
join Products
	ON Suppliers.supplier_id = Products.supplier_id;



