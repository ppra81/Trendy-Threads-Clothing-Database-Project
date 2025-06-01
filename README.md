# Trendy Threads Clothing Database Project

## Overview

**Trendy Threads** is a fictional online clothing retailer facing rapid growth. To overcome the limitations of managing inventory, vendor, and sales data via spreadsheets, this project demonstrates how to create a robust, scalable relational database using MySQL Workbench. The project includes the design of an Extended Entity-Relationship (EER) diagram, creation of SQL scripts to establish tables, insertion of sample data, and sample queries to validate inter-table relationships.

## Project Objectives

- **Data Analysis & Normalization:** Examine raw clothing data in spreadsheet form and reorganize it into multiple normalized relational tables.
- **Database Design:** Develop and implement a relational schema that includes tables for products, vendors, customers, inventory, and sales.
- **EER Diagram Generation:** Create an EER diagram using MySQL Workbench to visualize the database structure and relationships.
- **Database Implementation:** Write SQL scripts to create tables, populate sample data, and enforce relationships via primary and foreign keys.
- **Query Validation:** Develop SQL JOIN queries to retrieve related data from the database, proving that the design works as intended.

## Database Structure

This project comprises the following key tables:

- **Products:**  
  Holds clothing item details.  
  _Fields:_ `product_id`, `description`, `category`, `unit`

- **Vendors:**  
  Stores supplier information.  
  _Fields:_ `vendor_id`, `vendor_name`

- **Customers:**  
  Captures customer information.  
  _Fields:_ `customer_id`, `customer_name`

- **Inventory:**  
  Tracks product batches, including vendor, cost, purchase date, and storage location.  
  _Fields:_ `inventory_id`, `product_id`, `vendor_id`, `quantity_on_hand`, `cost`, `purchase_date`, `location`

- **Sales:**  
  Records each sales transaction with details of product sold, customer information, quantity, price, and date.  
  _Fields:_ `sale_id`, `product_id`, `customer_id`, `quantity_sold`, `price`, `sale_date`

## Getting Started

### Prerequisites

- **MySQL Workbench:** Ensure you have MySQL Workbench installed, configured, and connected to your local MySQL server instance.
- **MySQL Server:** The project requires a running MySQL database server.

### Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ppra81/Trendy-Threads-Clothing-Database-Project.git
   cd Trendy-Threads-Clothing-Database-Project
