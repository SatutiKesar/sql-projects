# Clothing Store Project

## Overview

The Clothing Store SQL Database is designed to manage various aspects of a clothing retail business, including customer interactions, product inventory, and order processing. The database schema supports efficient operations and reporting. The database includes tables and initial data for storing  information.

This project simulates a clothing store with a fun, cartoon-inspired theme. It includes:

- **Cartoon-Themed Products:** Clothing items featuring beloved cartoon characters.
- **Customer Information:** Includes customer names, addresses, and contact details.


## Key Tables
Customers: Stores customer details such as name and address.
Products: Manages product information including price and stock.
Categories: Organizes products into categories.
Orders: Records customer orders with details like total amount and shipping address.
Order_Items: Tracks individual items within an order.
Suppliers: Contains supplier information.
Product_Suppliers: Links products to suppliers with supply price details.

## Files

- `schema.sql`: Contains SQL statements to create the database schema, including tables and relationships.
- `data.sql`: Contains SQL statements to populate the database with initial data.

## Usage

1. **Create the Schema:**
   Run the `schema.sql` file to create the database schema.

   ```sql
   source path/to/schema.sql;
