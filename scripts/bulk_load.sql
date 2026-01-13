/* BULK LOAD ALL CSV files */
============================================================================================================

/* ##Can't create stored procedure inside mySql, load infile bypasses it. You have to load it individually */ 

	USE DataWarehouse;

-- Record start time of the entire Bronze layer

SET @bronze_start = NOW();
    START TRANSACTION;

-- --- Load CRM customer info ---

	SET @start_time = NOW();

		TRUNCATE TABlE bronze.crm_cust_info;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/cust_info.csv'
		INTO TABLE bronze.crm_cust_info
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;

	SET @end_time = NOW();
	SELECT count(*) from bronze.crm_cust_info;
	SELECT 'crm_cust_info load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
    
-- --- Load CRM product info ---

	SET @start_time = NOW();

		TRUNCATE TABlE bronze.crm_prd_info;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/prd_info.csv'
		INTO TABLE bronze.crm_prd_info
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;
    
	SET @end_time = NOW();
	SELECT count(*) from bronze.crm_prd_info;
	SELECT 'crm_prd_info load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
    
-- --- Load CRM sales details ---

	SET @start_time = NOW();

		TRUNCATE TABlE bronze.crm_sales_details;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_crm/sales_details.csv'
		INTO TABLE bronze.crm_sales_details
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;

	SET @end_time = NOW();
	SELECT count(*) from bronze.crm_sales_details;
	SELECT 'crm_sales_details load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
    
-- --- Load ERP customer AZ12 ---  
  
	SET @start_time = NOW();

		TRUNCATE TABlE bronze.erp_cust_az12;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/CUST_AZ12.csv'
		INTO TABLE bronze.erp_cust_az12
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;

	SET @end_time = NOW();
	SELECT count(*) from bronze.erp_cust_az12;
	SELECT 'erp_cust_az12 load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
    
-- --- Load ERP location A101 ---

	SET @start_time = NOW();

		TRUNCATE TABlE bronze.erp_loc_a101;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/LOC_A101.csv'
		INTO TABLE bronze.erp_loc_a101
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;

	SET @end_time = NOW();
	SELECT count(*) from bronze.erp_loc_a101;
	SELECT 'erp_loc_a101 load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
    
-- --- Load ERP product category PX_CAT_G1V2 ---

	SET @start_time = NOW();

		TRUNCATE TABlE bronze.erp_px_cat_g1v2;

		LOAD DATA LOCAL INFILE '/Users/snehapradhan/Downloads/DE/sql-data-warehouse-project-main/datasets/source_erp/PX_CAT_G1V2.csv'
		INTO TABLE bronze.erp_px_cat_g1v2
		FIELDS TERMINATED BY ','
		LINES TERMINATED BY '\n'
		IGNORE 1 LINES;

	SET @end_time = NOW();
	SELECT count(*) from bronze.erp_px_cat_g1v2;
	SELECT 'erp_px_cat_g1v2 load duration (seconds):', TIMESTAMPDIFF(SECOND, @start_time, @end_time) AS duration_seconds;
  
  
COMMIT;
-- Record end time of the entire Bronze layer
SET @bronze_end = NOW();

-- Calculate total duration in seconds
SELECT 'Bronze Layer Total Duration (seconds):', TIMESTAMPDIFF(SECOND, @bronze_start, @bronze_end) AS total_duration_seconds;
  
============================================================================================================

/*
USE DataWarehouse;
DROP PROCEDURE IF EXISTS load_bronze;

DELIMITER $$

CREATE PROCEDURE load_bronze()
BEGIN
    SELECT 'Bronze tables loaded successfully!' AS message;
END $$

DELIMITER ;

CALL load_bronze(); */

