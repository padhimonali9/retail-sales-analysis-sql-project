-- Data Cleaning
SELECT * FROM retail_sales
WHERE transaction_id IS NULL

SELECT * FROM retail_sales
WHERE sale_date IS NULL

SELECT * FROM retail_sales
WHERE sale_time IS NULL

SELECT * FROM retail_sales
WHERE 
    transaction_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
    
-- 
DELETE FROM retail_sales
WHERE 
    transaction_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantity IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;

    -- Data Exploration
    -- How many sales do we have?

    SELECT COUNT(*) as total_sales FROM reatil_sales;

    -- How many  unique customers do we have?
    SELECT COUNT( DISTINCT customer_id) as unique_customers  FROM reatil_sales;


    -- select distinct category from reatil_sales;
    SELECT DISTINCT category  FROM reatil_saless;


   -- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
    SELECT * FROM reatil_sales where sale_date = '2022-11-05';


   -- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
    SELECT * FROM reatil_sales
    WHERE category = 'Clothing' AND quantiy >=4 AND  
    sale_date BETWEEN  '2022-11-01' AND '2022-11-30' ;


  -- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
   SELECT CATEGORY , sum(total_sale) as total_sales from reatil_sales group by category;

  -- Q.4 Write a SQL query to find the average age of customers  who purchased items from the 'Beauty' category 
  SELECT AVG(age),category from reatil_sales
  group by category ;

 -- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
  SELECT transaction_id FROM reatil_sales  WHERE  total_sale >1000;

 
 -- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

  SELECT COUNT(transaction_id) as `total_no.of_transactions`, gender FROM reatil_sales
  GROUP BY gender;


-- Q.7 Write a SQL query to calculate the average sale for each month . Find out best selling month in each year


 SELECT 
    year,
     month,
    avg_sale
 FROM (    
     SELECT 
         EXTRACT(YEAR FROM sale_date) AS year,
         EXTRACT(MONTH FROM sale_date) AS month,
         AVG(total_sale) AS avg_sale,
         RANK() OVER (
            PARTITION BY EXTRACT(YEAR FROM sale_date)
             ORDER BY AVG(total_sale) DESC
       ) AS rnk
  from reatil_sales
     GROUP BY year, month
) t1
 WHERE rnk = 1
 ORDER BY year;

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

 SELECT * FROM reatil_sales ORDER BY total_sale DESC LIMIT 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category

 SELECT  category ,count( DISTINCT customer_id) FROM reatil_sales GROUP BY category ;

-- Q.10 Write a SQL query to create each shift and number of orders  (Example Morning <12, Afternoon Between 12 & 17, Evening >17).

 WITH hourly_sale AS(
SELECT * ,

 CASE 
 WHEN EXTRACT(HOUR FROM sale_time)<12 THEN 'Morning'
 WHEN EXTRACT(HOUR FROM sale_time)BETWEEN 12 AND 17 THEN 'Afternoon'
 ELSE 'Evening'
 END AS shift
 FROM reatil_sales)

SELECT 
     shift,
   COUNT(*) AS total_orders
 FROM hourly_sale
 GROUP BY shift;











