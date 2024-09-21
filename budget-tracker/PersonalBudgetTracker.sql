CREATE DATABASE Personal_budget_tracker;
USE Personal_budget_tracker;


CREATE TABLE Users(
 user_id BIGINT PRIMARY KEY,
 username VARCHAR(255) NOT NULL UNIQUE,
 email VARCHAR(255) UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
INSERT INTO Users (user_id, username, email, password_hash, created_at, updated_at)
VALUES
(1, 'BudgetBoss', 'budgetboss@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2024-09-20', '2024-09-20'),
(2, 'SavingsSage', 'savingssage@example.com', '6c9b4a1d9d8cfaabfa4b4a61bcf93e30', '2024-09-19', '2024-09-19'),
(3, 'ThriftyTraveler', 'thriftytraveler@example.com', '2a5c5126d0674148ebfcd29c9b1f8c00', '2024-09-18', '2024-09-18'),
(4, 'FrugalFoodie', 'frugalfoodie@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2024-09-17', '2024-09-17'),
(5, 'CautiousConsumer', 'cautiousconsumer@example.com', '0cc175b9c0f1b6a831c399e269772661', '2024-09-16', '2024-09-16'),
(6, 'SmartSaver', 'smartsaver@example.com', '98f13708210194c475687be6106a3b6f', '2024-09-15', '2024-09-15'),
(7, 'BudgetingGuru', 'budgetinguru@example.com', '5baa61e4c9b93f3f0682250b6cf8331b', '2024-09-14', '2024-09-14'),
(8, 'MoneyMaven', 'moneymaven@example.com', '8e296a067a37563370b787bfa8b11c1b', '2024-09-13', '2024-09-13'),
(9, 'FinancialNinja', 'financialninja@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2024-09-12', '2024-09-12'),
(10, 'CashConscious', 'cashconscious@example.com', '6c9b4a1d9d8cfaabfa4b4a61bcf93e30', '2024-09-11', '2024-09-11'),
(11, 'ExpenseExpert', 'expenseexpert@example.com', '2a5c5126d0674148ebfcd29c9b1f8c00', '2024-09-10', '2024-09-10'),
(12, 'WiseInvest', 'wiseinvest@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2024-09-09', '2024-09-09'),
(13, 'BudgetBuff', 'budgetbuff@example.com', '0cc175b9c0f1b6a831c399e269772661', '2024-09-08', '2024-09-08'),
(14, 'CashflowKing', 'cashflowking@example.com', '98f13708210194c475687be6106a3b6f', '2024-09-07', '2024-09-07'),
(15, 'FinancialFuturist', 'financialfuturist@example.com', '5baa61e4c9b93f3f0682250b6cf8331b', '2024-09-06', '2024-09-06');


 
 
CREATE TABLE Accounts(
 account_id BIGINT PRIMARY KEY,
 account_name VARCHAR(255) NOT NULL UNIQUE,
 account_type VARCHAR(50) NOT NULL,
 balance FLOAT,
 user_id BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
INSERT INTO Accounts (account_id, account_name, account_type, balance, user_id, created_at, updated_at) VALUES
(1, 'Weekly Snack Fund', 'Fun Fund', -5.00, 1, '2024-09-20', '2024-09-20'),
(2, 'Daily Caffeine Supply', 'Emergency Fund', 10.50, 2, '2024-09-19', '2024-09-19'),
(3, 'Guilty Pleasure Account', 'Expense Fund', 0.01, 3, '2024-09-18', '2024-09-18'),
(4, 'Oopsie Daisy Fund', 'Emergency Fund', -20.00, 4, '2024-09-17', '2024-09-17'),
(5, 'Essential Savings Jar', 'Savings Account', 50.00, 5, '2024-09-16', '2024-09-16'),
(6, 'Panic Buying Buffer', 'Budgeting Fund', -10.00, 6, '2024-09-15', '2024-09-15'),
(7, 'Chips and Dip Stash', 'Fun Fund', 25.00, 7, '2024-09-14', '2024-09-14'),
(8, 'Adventure Travel Fund', 'Travel Fund', 100.00, 8, '2024-09-13', '2024-09-13'),
(9, 'Crafting Project Fund', 'Hobby Fund', 15.00, 9, '2024-09-12', '2024-09-12'),
(10, 'Foodie Exploration Fund', 'Food Budget', 30.00, 10, '2024-09-11', '2024-09-11'),
(11, 'Binge-Watching Budget', 'Entertainment Fund', 5.00, 11, '2024-09-10', '2024-09-10'),
(12, 'Travel Dreams Fund', 'Travel Savings', 200.00, 12, '2024-09-09', '2024-09-09'),
(13, 'Meme Collection Fund', 'Fun Fund', 12.00, 13, '2024-09-08', '2024-09-08'),
(14, 'Unique Finds Account', 'Gift Fund', 40.00, 14, '2024-09-07', '2024-09-07'),
(15, 'Pizza Night Fund', 'Celebration Fund', 75.00, 15, '2024-09-06', '2024-09-06');

 
CREATE TABLE Categories(
 category_id INTEGER PRIMARY KEY,
 user_id BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 category_name VARCHAR(255),
 category_type ENUM('Income', 'Expense') NOT NULL);
INSERT INTO Categories (category_id, user_id, category_name, category_type) VALUES
(1, 1, 'Weekly Treats', 'Expense'),
(2, 1, 'Side Hustle Income', 'Income'),
(3, 2, 'Coffee Budget', 'Expense'),
(4, 2, 'Savings Interest', 'Income'),
(5, 3, 'Travel Adventures', 'Expense'),
(6, 3, 'Freelance Work', 'Income'),
(7, 4, 'Dining Out', 'Expense'),
(8, 4, 'Birthday Gifts', 'Income'),
(9, 5, 'Emergency Fund Contributions', 'Income'),
(10, 5, 'Monthly Groceries', 'Expense'),
(11, 6, 'Self-Care Expenses', 'Expense'),
(12, 6, 'Tutoring Earnings', 'Income'),
(13, 7, 'Fun Subscriptions', 'Expense'),
(14, 7, 'Part-Time Job', 'Income'),
(15, 8, 'Travel Savings', 'Income');

 
CREATE TABLE Transactions(
 transaction_id BIGINT PRIMARY KEY,
 user_id  BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 account_id  BIGINT, FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
 amount INTEGER,
 transaction_date DATETIME,
 category_id INTEGER, FOREIGN KEY (category_id) REFERENCES Categories(category_id),
 description TEXT,
 transaction_type ENUM('Income', 'Expense') NOT NULL);
INSERT INTO Transactions (transaction_id, user_id, account_id, amount, transaction_date, category_id, description, transaction_type) VALUES
(1, 1, 1, 10, '2024-09-21 10:00:00', 1, 'Weekly snack run at the store', 'Expense'),
(2, 1, 2, 100, '2024-09-22 14:00:00', 2, 'Freelance project payment', 'Income'),
(3, 2, 1, 5, '2024-09-21 09:30:00', 3, 'Morning coffee at cafe', 'Expense'),
(4, 2, 2, 50, '2024-09-22 12:00:00', 4, 'Interest from savings account', 'Income'),
(5, 3, 3, 200, '2024-09-21 11:15:00', 5, 'Airplane tickets for vacation', 'Expense'),
(6, 3, 3, 300, '2024-09-22 16:30:00', 6, 'Payment from freelance design', 'Income'),
(7, 4, 4, 45, '2024-09-21 18:00:00', 7, 'Dinner out with friends', 'Expense'),
(8, 4, 4, 60, '2024-09-22 20:00:00', 8, 'Birthday gift from a relative', 'Income'),
(9, 5, 5, 150, '2024-09-21 08:00:00', 9, 'Monthly contribution to emergency fund', 'Income'),
(10, 5, 5, 80, '2024-09-22 13:00:00', 10, 'Grocery shopping', 'Expense'),
(11, 6, 6, 30, '2024-09-21 15:00:00', 11, 'Spa day', 'Expense'),
(12, 6, 6, 200, '2024-09-22 10:00:00', 12, 'Payment for tutoring session', 'Income'),
(13, 7, 7, 25, '2024-09-21 17:00:00', 13, 'Streaming service subscription', 'Expense'),
(14, 7, 7, 500, '2024-09-22 11:30:00', 14, 'Earnings from part-time job', 'Income'),
(15, 8, 8, 120, '2024-09-21 09:45:00', 15, 'Saved up for upcoming trip', 'Income');

 
 
CREATE TABLE Budget(
 budget_id INTEGER PRIMARY KEY,
 user_id BIGINT, FOREIGN KEY (user_id)REFERENCES Users(user_id),
 category_id INTEGER, FOREIGN KEY (category_id)REFERENCES Categories(category_id),
 goal_name TEXT,
 budget_amount INTEGER,
 current_amount INTEGER,
 start_date DATE,
 end_date DATE,
 created_at DATETIME,
 updated_at DATETIME               
 );
INSERT INTO Budget (budget_id, user_id, category_id, goal_name, budget_amount, current_amount, start_date, end_date, created_at, updated_at) VALUES
(1, 1, 1, 'Weekly Snack Goals', 50, 25, '2024-09-01', '2024-09-30', '2024-09-20 10:00:00', '2024-09-20 10:00:00'),
(2, 1, 2, 'Side Hustle Savings', 500, 300, '2024-09-01', '2024-12-31', '2024-09-20 10:00:00', '2024-09-20 10:00:00'),
(3, 2, 3, 'Monthly Coffee Budget', 100, 40, '2024-09-01', '2024-09-30', '2024-09-20 09:00:00', '2024-09-20 09:00:00'),
(4, 2, 4, 'Emergency Fund Growth', 1000, 600, '2024-09-01', '2024-12-31', '2024-09-20 09:00:00', '2024-09-20 09:00:00'),
(5, 3, 5, 'Travel Fund Goals', 1500, 700, '2024-09-01', '2025-06-30', '2024-09-20 11:00:00', '2024-09-20 11:00:00'),
(6, 3, 6, 'Freelance Income Target', 2000, 800, '2024-09-01', '2025-03-31', '2024-09-20 11:00:00', '2024-09-20 11:00:00'),
(7, 4, 7, 'Dining Out Budget', 150, 70, '2024-09-01', '2024-09-30', '2024-09-20 12:00:00', '2024-09-20 12:00:00'),
(8, 4, 8, 'Gift Fund Accumulation', 300, 200, '2024-09-01', '2024-12-25', '2024-09-20 12:00:00', '2024-09-20 12:00:00'),
(9, 5, 9, 'Emergency Fund Goals', 2000, 1200, '2024-09-01', '2024-12-31', '2024-09-20 08:30:00', '2024-09-20 08:30:00'),
(10, 5, 10, 'Grocery Spending Limit', 400, 200, '2024-09-01', '2024-09-30', '2024-09-20 08:30:00', '2024-09-20 08:30:00'),
(11, 6, 11, 'Self-Care Budget', 100, 30, '2024-09-01', '2024-09-30', '2024-09-20 15:00:00', '2024-09-20 15:00:00'),
(12, 6, 12, 'Tutoring Income Target', 800, 400, '2024-09-01', '2024-12-31', '2024-09-20 15:00:00', '2024-09-20 15:00:00'),
(13, 7, 13, 'Entertainment Budget', 200, 100, '2024-09-01', '2024-09-30', '2024-09-20 17:00:00', '2024-09-20 17:00:00'),
(14, 7, 14, 'Part-Time Income Goals', 1500, 900, '2024-09-01', '2025-03-31', '2024-09-20 17:00:00', '2024-09-20 17:00:00'),
(15, 8, 15, 'Travel Savings Goal', 1000, 500, '2024-09-01', '2025-06-30', '2024-09-20 09:45:00', '2024-09-20 09:45:00');


/*Reporting and Queries*/

-- User Queries
-- Retrieve All Users: Get a list of all registered users.
SELECT username FROM Users;

-- Find User by Username/Email: Search for a user by their username or email.
SELECT user_id, username, email, created_at, updated_at FROM Users WHERE email = 'smartsaver@example.com' OR username = 'SmartSaver';

-- Update User Information: Change a user’s password.
UPDATE Users
SET password_hash = '$2y$10$S3cretSauce4Sav1ngs!2024' 
WHERE user_id = 2;
SELECT user_id, username, password_hash FROM Users WHERE user_id = 2; 


-- Account Queries
-- Get All Accounts for a User: Retrieve all accounts associated with a specific user.
SELECT * FROM Accounts WHERE user_id = 12;
SELECT account_type FROM Accounts ;

-- Get Account Balance: Find the balance of a specific account.
SELECT user_id, account_name, balance FROM Accounts where account_id = 15;

-- Add a New Account: Insert a new account for a user.
INSERT INTO Accounts (account_id, account_name, account_type, balance, user_id, created_at, updated_at) VALUES
(16, 'Emergency Ice Cream Fund', 'Fun Fund', 75.00, 12, '2024-09-20 09:45:00', '2024-09-20 09:45:00');
SELECT * FROM Accounts;

-- Delete an Account: Remove an account associated with a user.
DELETE FROM Accounts WHERE user_id = 12 AND account_id = 16;

-- Account Type Breakdown
SELECT account_type, SUM(balance) AS total_balance FROM Accounts
WHERE user_id = 9
GROUP BY account_type;


-- Category Queries
-- List All Categories for a User: Show all expense and income categories for a user.
SELECT * FROM Categories WHERE user_id = 2;

-- Add a New Category: Insert a new category for tracking purposes.
INSERT INTO Categories (category_id, user_id, category_name, category_type) VALUES
(16, 2, 'Guilty Pleasures', 'Expense');

-- Delete a Category: Remove a category associated with a user
DELETE FROM Categories
WHERE category_id = 16 AND user_id = 2 ;


-- Transaction Queries
-- List All Transactions for a specific User
SELECT * FROM Transactions WHERE user_id = 4;

-- Add a new transaction
INSERT INTO Transactions (transaction_id, user_id, account_id, amount, transaction_date, category_id, description, transaction_type) VALUES
(16, 8, 3, 50, '2024-09-15', 5, 'Dinner at Italian Restaurant', 'Expense');
SELECT * FROM Transactions WHERE user_id = 8;

-- Update a transaction
UPDATE Transactions 
SET amount = 60, description = 'Dinner at Italian Restaurant with friends' 
WHERE transaction_id = 16;

-- Delete a transaction
DELETE FROM Transactions WHERE transaction_id = 1;

-- Filter Transactions by Date: Retrieve transactions within a specific date range.
SELECT * FROM Transactions WHERE transaction_date BETWEEN '2024-09-01 07:00:00' AND '2024-09-21 20:00:00';

SELECT u.user_id, u.username, t.amount, t.description, t.transaction_type
FROM Users u
JOIN Transactions t
	ON u.user_id = t.user_id
    WHERE t.transaction_date = '2024-09-21 11:15:00' AND u.user_id = 3;
    
--  Daily Transaction Summary
SELECT transaction_date, SUM(amount) AS daily_total 
FROM transactions 
GROUP BY transaction_date;

-- Counting transactions per user
SELECT user_id, COUNT(*) AS transaction_count 
FROM transactions 
GROUP BY user_id;

-- Finding the latest transaction for each user
SELECT user_id, MAX(transaction_date) AS last_transaction 
FROM Transactions 
GROUP BY user_id;

-- Joining Transactions with users
SELECT u.user_id, u.username, t.amount, t.transaction_date, t.description, t.transaction_type
FROM Users u
JOIN Transactions t
	ON u.user_id = t.user_id;


-- Budget Queries
-- Retrieve All Budgets for a User
SELECT user_id, budget_id, goal_name FROM Budget WHERE category_id = 8 ;

-- Update Budget Amount: Modify the budget amount for a specific goal.
UPDATE Budget
SET budget_amount = 400
WHERE budget_id = 2;
SELECT * FROM Budget;

-- Check Budget Status
SELECT goal_name, budget_amount, current_amount FROM Budget WHERE user_id = 2;

-- Total budget amount by category
SELECT user_id, SUM(budget_amount) AS Total_Amount, category_id FROM Budget
WHERE user_id = 4
GROUP BY category_id;

-- Update Current Amount After Spending
UPDATE Budget
SET current_amount = current_amount - 200
WHERE budget_id = 5;

-- Check if Budget is Over or Under
SELECT budget_id, goal_name, budget_amount, current_amount,
CASE
	WHEN current_amount < budget_amount THEN "Under Budget"
	WHEN current_amount > budget_amount THEN "Over Budget"
    ELSE "ON BUDGET"
END AS budget_status
FROM Budget
WHERE user_id = 8;


