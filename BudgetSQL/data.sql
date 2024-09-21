-- ...............................
-- Budget Tracker Data File
-- ...............................

-- ...............................
-- 1. Insert data into Users Table
-- ...............................
INSERT INTO Users (user_id, username, email, password_hash, created_at, updated_at)
VALUES
(1, 'BudgetBoss', 'budgetboss@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2024-09-20', '2024-09-20'),
(2, 'SavingsSage', 'savingssage@example.com', '6c9b4a1d9d8cfaabfa4b4a61bcf93e30', '2024-09-19', '2024-09-19'),
(3, 'ThriftyTraveler', 'thriftytraveler@example.com', '2a5c5126d0674148ebfcd29c9b1f8c00', '2024-09-18', '2024-09-18'),
(4, 'FrugalFoodie', 'frugalfoodie@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2024-09-17', '2024-09-17');


-- ..................................
-- 2. Insert data into Accounts Table
-- ..................................
INSERT INTO Accounts (account_id, account_name, account_type, balance, user_id, created_at, updated_at) VALUES
(1, 'Weekly Snack Fund', 'Fun Fund', -5.00, 1, '2024-09-20', '2024-09-20'),
(2, 'Daily Caffeine Supply', 'Emergency Fund', 10.50, 2, '2024-09-19', '2024-09-19'),
(3, 'Guilty Pleasure Account', 'Expense Fund', 0.01, 3, '2024-09-18', '2024-09-18'),
(4, 'Oopsie Daisy Fund', 'Emergency Fund', -20.00, 4, '2024-09-17', '2024-09-17');


-- ....................................
-- 3. Insert data into Categories Table
-- ....................................
INSERT INTO Categories (category_id, user_id, category_name, category_type) VALUES
(1, 1, 'Weekly Treats', 'Expense'),
(2, 1, 'Side Hustle Income', 'Income'),
(3, 2, 'Coffee Budget', 'Expense'),
(4, 2, 'Savings Interest', 'Income');


-- ......................................
-- 4. Insert data into Transactions Table
-- ......................................
INSERT INTO Transactions (transaction_id, user_id, account_id, amount, transaction_date, category_id, description, transaction_type) VALUES
(1, 1, 1, 10, '2024-09-21 10:00:00', 1, 'Weekly snack run at the store', 'Expense'),
(2, 1, 2, 100, '2024-09-22 14:00:00', 2, 'Freelance project payment', 'Income'),
(3, 2, 1, 5, '2024-09-21 09:30:00', 3, 'Morning coffee at cafe', 'Expense'),
(4, 2, 2, 50, '2024-09-22 12:00:00', 4, 'Interest from savings account', 'Income');


-- ......................................
-- 5. Insert data into Budget Table
-- ......................................
INSERT INTO Budget (budget_id, user_id, category_id, goal_name, budget_amount, current_amount, start_date, end_date, created_at, updated_at) VALUES
(1, 1, 1, 'Weekly Snack Goals', 50, 25, '2024-09-01', '2024-09-30', '2024-09-20 10:00:00', '2024-09-20 10:00:00'),
(2, 1, 2, 'Side Hustle Savings', 500, 300, '2024-09-01', '2024-12-31', '2024-09-20 10:00:00', '2024-09-20 10:00:00'),
(3, 2, 3, 'Monthly Coffee Budget', 100, 40, '2024-09-01', '2024-09-30', '2024-09-20 09:00:00', '2024-09-20 09:00:00'),
(4, 2, 4, 'Emergency Fund Growth', 1000, 600, '2024-09-01', '2024-12-31', '2024-09-20 09:00:00', '2024-09-20 09:00:00');