-- ==========================================================================
-- Sample Data for Cartoon-Themed Clothing Store Project
-- ==========================================================================
-- This SQL script populates the cartoon-themed clothing store database with sample data.
-- ==========================================================================

-- ==========================================================================
-- Insert Data into Customers Table
-- ==========================================================================
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number, address)
VALUES
(1, 'Mickey', 'Mouse', 'mickey.mouse@example.com', '555-0101', '123 Acme Lane, Toon Town, CA'),
(2, 'Bugs', 'Bunny', 'bugs.bunny@example.com', '555-0102', '456 Looney Avenue, Toon Town, CA'),
(3, 'SpongeBob', 'SquarePants', 'spongebob.squarepants@example.com', '555-0103', '789 Pineapple Street, Bikini Bottom, WA');

-- ==========================================================================
-- Insert Data into Products Table
-- ==========================================================================
INSERT INTO Products (product_id, name, description, price, category, stock_quantity)
VALUES 
(1, 'Superhero T-Shirt', 'Comfortable cotton t-shirt featuring your favorite superhero.', 19.99, 'Apparel', 150),
(2, 'Classic Denim Jeans', 'Stylish denim jeans with a classic fit.', 39.99, 'Apparel', 100),
(3, 'Gaming Headset', 'High-quality headset with noise cancellation for an immersive gaming experience.', 89.99, 'Electronics', 75);

-- ==========================================================================
-- Insert Data into Orders Table
-- ==========================================================================
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES 
(1, 1, '2024-08-01', 59.97),  -- Mickey Mouse's order
(2, 2, '2024-08-05', 89.99),  -- Bugs Bunny's order
(3, 3, '2024-08-10', 29.99);  -- SpongeBob SquarePants' order

-- ==========================================================================
-- Insert Data into Order_Items Table
-- ==========================================================================
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_at_purchase)
VALUES 
(1, 1, 1, 2, 19.99),  -- Mickey Mouse's order: 2 Superhero T-Shirts
(2, 1, 4, 1, 29.99),  -- Mickey Mouse's order: 1 Leather Wallet
(3, 2, 3, 1, 89.99),  -- Bugs Bunny's order: 1 Gaming Headset
(4, 3, 7, 1, 24.99),  -- SpongeBob SquarePants' order: 1 Yoga Mat
(5, 4, 9, 1, 119.99), -- Scooby-Doo's order: 1 Classic Watch
(6, 5, 5, 1, 59.99),  -- Fred Flintstone's order: 1 Fitness Tracker
(7, 6, 2, 2, 39.99);  -- Tom Cat's order: 2 Classic Denim Jeans

-- ==========================================================================
-- Insert Sample Data into Categories Table
-- ==========================================================================
INSERT INTO Categories (category_id, category_name)
VALUES 
(1, 'Apparel'),            -- General category for clothing items
(2, 'Electronics'),        -- Category for electronic gadgets
(3, 'Accessories'),        -- Category for various accessories
(4, 'Fitness'),            -- Category for fitness-related products
(5, 'Toys'),               -- Category for toys
(6, 'Home Goods'),         -- Category for home-related items
(7, 'Books');              -- Category for books and literature

-- ==========================================================================
-- Insert Data into Suppliers Table
-- ==========================================================================
INSERT INTO Suppliers (supplier_id, name, contact_info, address)
VALUES
(1, 'Acme Corp', 'acme.mickey@acme.com', '123 Acme Lane, Toon Town, CA'),
(2, 'Gizmo Ltd.', 'gizmo.bugs@gizmo.com', '456 Gadget Road, Tech City, TX'),
(3, 'Bikini Bottom Supply', 'spongebob.bbb@bikinibottom.com', '789 Pineapple Street, Bikini Bottom, WA');

-- ==========================================================================
-- Insert Data into Product_Supplier Table
-- ==========================================================================
INSERT INTO Product_Supplier (product_id, supplier_id)
VALUES 
(1, 1),  -- Superhero T-Shirt supplied by Acme Corp
(1, 2),  -- Superhero T-Shirt also supplied by Gizmo Ltd.
(2, 3),  -- Classic Denim Jeans supplied by Bikini Bottom Supply
(3, 4),  -- Gaming Headset supplied by Mystery Inc.
(4, 5);  -- Leather Wallet supplied by Bedrock Industries
