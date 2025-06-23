-- Find the date of the first and last order
-- How many years of slaes are availabe
SELECT MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year, MIN(order_date),MAX(order_date)) AS order_range_years,
DATEDIFF(month, MIN(order_date),MAX(order_date)) AS order_range_month
FROM gold.fact_sales

-- Find the youngest and the oldest customer
SELECT MIN(birthdate) AS oldest_birthdate,
DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_age
FROM gold.dim_customers

