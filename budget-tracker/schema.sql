-- .................................................
-- Personal Budget Tracker Database Schema
-- .................................................


-- Table: Users
-- Description: Stores user information for authentication and identification
CREATE TABLE Users(
 user_id BIGINT PRIMARY KEY,
 username VARCHAR(255) NOT NULL UNIQUE,
 email VARCHAR(255) UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
 
 
-- Table: Accounts
-- Description: Represents financial accounts linked to users.
CREATE TABLE Accounts(
 account_id BIGINT PRIMARY KEY,
 account_name VARCHAR(255) NOT NULL UNIQUE,
 account_type VARCHAR(50) NOT NULL,
 balance FLOAT,
 user_id BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
 
 
-- Table: Categories
-- Description: Categorizes transactions for better organization and tracking.
CREATE TABLE Categories(
 category_id INTEGER PRIMARY KEY,
 user_id BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 category_name VARCHAR(255),
 category_type ENUM('Income', 'Expense') NOT NULL);


-- Table: Transactions
-- Description: Records individual financial transactions associated with accounts and categories.
CREATE TABLE Transactions(
 transaction_id BIGINT PRIMARY KEY,
 user_id  BIGINT, FOREIGN KEY (user_id) REFERENCES Users(user_id),
 account_id  BIGINT, FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
 amount INTEGER,
 transaction_date DATETIME,
 category_id INTEGER, FOREIGN KEY (category_id) REFERENCES Categories(category_id),
 description TEXT,
 transaction_type ENUM('Income', 'Expense') NOT NULL);
 
 
-- Table: Budgets
-- Description: Represents budget goals set by users for different time periods.
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


-- Explanation of Components
--  1. Table Definitions: Each CREATE TABLE statement defines a table with its columns and data types.

--  2. Data Types:
		-- INT: Integer type for IDs.
		-- VARCHAR: Variable-length string.
		-- DECIMAL: Fixed-point type for monetary values.
		-- ENUM: String object with a value chosen from a list of permitted values.
		-- DATE: Date type for dates.
		-- TIMESTAMP: Stores both date and time.
        
--  3. Primary Keys: Defined using PRIMARY KEY, ensuring each entry is unique.

--  4. Foreign Keys: Establish relationships between tables:
		-- FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE: This means if a user is deleted, all related accounts will also be deleted.

--  5. Constraints:
		-- NOT NULL: Ensures that a column cannot have a NULL value.
		-- UNIQUE: Ensures that all values in a column are distinct.