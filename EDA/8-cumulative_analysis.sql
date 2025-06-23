SELECT 
order_date,
total_sales,
SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales,
avg_price,
AVG(avg_price) OVER(ORDER BY order_date) AS moving_avg_price
FROM
(
SELECT
CAST(DATEADD(year, DATEDIFF(year, 0, order_date), 0) AS DATE) AS order_date,
SUM(sales_amount) AS total_sales,
AVG(price) AS avg_price
FROM gold.fact_sales
WHERE  order_date IS NOT NULL
GROUP BY CAST(DATEADD(year, DATEDIFF(year, 0, order_date), 0) AS DATE)
)AS total


SELECT 
order_date,
total_sales,
SUM(total_sales) OVER(PARTITION BY order_date ORDER BY order_date) AS running_total_sales,
avg_price,
AVG(avg_price) OVER(PARTITION BY order_date ORDER BY order_date) AS moving_avg_price
FROM
(
SELECT
CAST(DATEADD(month, DATEDIFF(month, 0, order_date), 0) AS DATE) AS order_date,
SUM(sales_amount) AS total_sales,
AVG(price) AS avg_price
FROM gold.fact_sales
WHERE  order_date IS NOT NULL
GROUP BY CAST(DATEADD(month, DATEDIFF(month, 0, order_date), 0) AS DATE)
)AS total

