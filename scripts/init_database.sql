-- Use the mysql system database
USE mysql;

-- Create the main Data Warehouse database
CREATE DATABASE IF NOT EXISTS DataWarehouse;

-- Switch to DataWarehouse
USE DataWarehouse;

-- MySQL does not support schemas inside a database.
-- CREATE SCHEMA creates a new database in MySQL.
-- So these will create 3 separate schemas (databases):

CREATE DATABASE IF NOT EXISTS bronze;
CREATE DATABASE IF NOT EXISTS silver;
CREATE DATABASE IF NOT EXISTS gold;

-- Usage:
-- USE bronze;
-- USE silver;
-- USE gold;

=======================================================

/* Purpose:
  -----
This script initializes the foundational structure for a Data Warehouse environment using MySQL.
It creates the main DataWarehouse database and sets up three additional logical layers—bronze, silver, 
and gold—which follow the Medallion Architecture commonly used in modern data engineering.
  
bronze → Raw ingested data

silver → Cleaned and standardized data

gold → Business-ready, aggregated, and analytics-friendly data

These schemas (implemented as separate MySQL databases) provide a clear separation of data processing stages, support scalable ETL workflows, 
and maintain a clean organizational structure aligned with industry best practices. 
*/
