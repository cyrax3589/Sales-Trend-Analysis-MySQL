# Sales Trend Analysis

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using MySQL aggregate functions.

## Dataset
The dataset contains online sales transactions with the following columns:
- TransactionID
- Date
- ProductCategory
- ProductName
- UnitsSold
- UnitPrice
- TotalRevenue
- Region
- PaymentMethod

## Files in Repository
- `sales_trend_analysis.sql` : SQL script for table creation, data import, and analysis queries
- `Online Sales Data.csv` : Sales dataset used for analysis
- `results.csv` : Example exported query results (optional)
- `README.md` : Project documentation

## Steps to Run
1. Create a database in MySQL.
2. Run the `sales_trend_analysis.sql` script in MySQL Workbench or CLI.
3. Update the file path in the `LOAD DATA INFILE` command to the location of the CSV on your system.
4. Execute the queries to view monthly revenue, order volume, and top months by sales.

## Visual Representations
### 1. Monthly Revenue and Order Volume
<img width="864" height="673" alt="image" src="https://github.com/user-attachments/assets/55d2aa85-19ef-4b9b-983c-faf058fcec04" />

### 2. Top 3 Months by Revenue
<img width="833" height="561" alt="image" src="https://github.com/user-attachments/assets/777df7c6-f32e-4bf4-b122-a7e46bbc46fd" />

### 3. Yearly Breakdown of Sales
<img width="836" height="714" alt="image" src="https://github.com/user-attachments/assets/eea8b2ad-8cc9-4857-89c2-6ca0b7984f0e" />

## Repository Structure
sales-trend-analysis-sql/
│── sales_trend_analysis.sql 
│── Online Sales Data.csv 
│── README.md 
│── Screenshots\ 
