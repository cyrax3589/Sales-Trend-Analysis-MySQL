CREATE DATABASE sales_analysis;
USE sales_analysis;


# Create the table structure

CREATE TABLE IF NOT EXISTS online_sales (
    TransactionID INT,
    Date DATE,
    ProductCategory VARCHAR(100),
    ProductName VARCHAR(150),
    UnitsSold INT,
    UnitPrice DECIMAL(10,2),
    TotalRevenue DECIMAL(12,2),
    Region VARCHAR(100),
    PaymentMethod VARCHAR(50)
);


# Load CSV data into the table

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Online_Sales_Data.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(TransactionID, Date, ProductCategory, ProductName, UnitsSold, UnitPrice, TotalRevenue, Region, PaymentMethod);

# 1. Monthly Revenue & Order Volume

SELECT 
    YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(TotalRevenue) AS total_revenue,
    COUNT(DISTINCT TransactionID) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

# 2. Top 3 Months by Revenue

SELECT 
    YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(TotalRevenue) AS total_revenue,
    COUNT(DISTINCT TransactionID) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;

# 3. Sales Trend for a Specific Year (Example: 2024)

SELECT 
    YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(TotalRevenue) AS total_revenue,
    COUNT(DISTINCT TransactionID) AS total_orders
FROM online_sales
WHERE YEAR(Date) = 2024
GROUP BY year, month
ORDER BY month;
