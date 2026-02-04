-- Schema for Retail Sales Project

CREATE TABLE IF NOT EXISTS retail_sales (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(15),
    quantity INT,
    price_per_unit float,
    cogs float
    total_sale float
);
