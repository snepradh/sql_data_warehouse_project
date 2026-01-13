/* BULK LOAD ALL CSV files */
====================================


TRUNCATE TABlE bronze.crm_cust_info;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.crm_cust_info;

========================================================================================================================
TRUNCATE TABlE bronze.crm_prd_info;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.crm_prd_info;

========================================================================================================================
TRUNCATE TABlE bronze.crm_sales_details;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.crm_sales_details;

========================================================================================================================
TRUNCATE TABlE bronze.erp_cust_az12;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.erp_cust_az12;

========================================================================================================================
TRUNCATE TABlE bronze.erp_loc_a101;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.erp_loc_a101;

========================================================================================================================
TRUNCATE TABlE bronze.erp_px_cat_g1v2;

LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT count(*) from bronze.erp_px_cat_g1v2;
