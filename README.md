# retail-sales-analysis-sql-project
SQL-based retail sales analysis using CTEs, window functions, and time-based insights.

# Retail Sales SQL Project

## 📌 Project Overview
This project analyzes retail sales data using SQL to uncover meaningful business insights related to sales performance, customer behavior, and time-based trends. The analysis answers real-world business questions using structured queries on transactional retail data.

---

## 🛠 Tools & Technologies
- MySQL
- SQL
- GitHub

---

## 📂 Dataset Description
The dataset contains retail transaction-level data with the following key fields:
- transaction_id
- sale_date
- sale_time
- customer_id
- gender
- age
- category
- quantity
-  price_per_unit
- cogs
- total_sale


---

## 🔍 Key Business Questions Answered
- How many total sales and unique customers are there?
- What are the distinct product categories?
- Which sales occurred on a specific date?
- Which transactions belong to the Clothing category with high quantity sales?
- What is the total sales amount for each category?
- What is the average age of customers purchasing Beauty products?
- Which transactions have high total sales?
- How many transactions were made by each gender across categories?
- What is the best-selling month in each year based on average sales?
- Who are the top customers based on total sales?
- How many unique customers purchased from each category?
- How are orders distributed across Morning, Afternoon, and Evening shifts?

---

## 🧠 SQL Concepts Used
- Aggregate Functions (`COUNT`, `SUM`, `AVG`)
- `GROUP BY` and `ORDER BY`
- `DISTINCT`
- Conditional logic using `CASE`
- Common Table Expressions (CTEs)
- Window Functions (`RANK`)
- Date and Time functions (`EXTRACT`, `BETWEEN`)

---

## 📊 Sample Analysis Highlights
- Identified category-wise sales performance
- Determined best-selling months using window functions
- Analyzed customer distribution across categories
- Evaluated order volume by time-of-day shifts

---

## 📁 Project Files
- `schema.sql` – Table structure
- `data.sql` – Sample data
- `queries.sql` – All SQL queries used for analysis
- `README.md` – Project documentation

---

## 🚀 Conclusion
This project demonstrates practical SQL skills by solving real-world retail business problems. It showcases the ability to analyze data efficiently using advanced SQL techniques and present insights in a structured manner.


