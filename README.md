# Task-4-ElevateLABS
 SQL for Data Analysis


 📊 Task 4: SQL for Data Analysis

This project is part of my Data Analyst Internship.
The objective of this task is to use SQL to extract, analyze, and summarize insights from the Ecommerce Shipping Data dataset.

🗂 Dataset

Name: Ecommerce Shipping Data

Rows: 10,999

Columns: 12

Key Fields:

Warehouse_block – Warehouse (A, B, C, D, F)

Mode_of_Shipment – (Ship, Flight, Road)

Customer_care_calls – Number of calls made

Customer_rating – Customer satisfaction rating (1–5)

Cost_of_the_Product – Product cost

Product_importance – (Low, Medium, High)

Discount_offered, Weight_in_gms, Reached.on.Time_Y.N (Delivery status)

🛠 Tools & Technologies

Database: MySQL / PostgreSQL / SQLite

Language: SQL

Other Tools: Excel, Power BI (for verifying outputs)

📌 Objectives

Write SQL queries using:

SELECT, WHERE, ORDER BY

GROUP BY, HAVING

Aggregate functions: SUM, AVG, COUNT

Joins (INNER JOIN, LEFT JOIN)

Subqueries

Views

Index optimization

Generate query outputs to analyze:

Shipment modes and costs

Warehouse performance

Delivery status (On-time vs Delayed)

Customer behavior

📜 Deliverables

SQL File: task4_sql_queries.sql

Outputs File (Excel): task4_sql_outputs.xlsx

(Optional) PowerPoint with queries and results

📊 Sample Queries

Products costing above average:

SELECT ID, Cost_of_the_Product
FROM ecommerce_shipping
WHERE Cost_of_the_Product > (
    SELECT AVG(Cost_of_the_Product) 
    FROM ecommerce_shipping
);


Shipment counts by mode:

SELECT Mode_of_Shipment, COUNT(*) AS Total_Shipments, 
       AVG(Cost_of_the_Product) AS Avg_Cost
FROM ecommerce_shipping
GROUP BY Mode_of_Shipment;

✅ Key Insights

Flight was the most used mode of shipment.

Warehouse F processed higher-value products on average.

Medium product importance orders were most frequent.

Nearly 60% of shipments reached late, highlighting logistics inefficiencies.

📂 Repository Structure
├── task4_sql_queries.sql     # All SQL queries
├── task4_sql_outputs.xlsx    # Output tables of queries
├── README.md                 # Project documentation
└── Ecommerce Shipping Data.csv (optional dataset file)

🚀 How to Run

Import the dataset into MySQL/PostgreSQL/SQLite.

Run queries from task4_sql_queries.sql.

Check results against task4_sql_outputs.xlsx.
