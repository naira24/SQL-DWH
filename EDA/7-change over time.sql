SELECT 
	YEAR(order_date) AS order_year,    -- Same If You Use DATEPART(year, order_date) AS order_year
	SUM(sales_amount) AS total_sales,  
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
FROM  gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)  
ORDER BY order_year;

SELECT 
	YEAR(order_date) AS order_year,   -- Same If You Use DATEPART(year, order_date) AS order_year
	MONTH(order_date) AS order_month, -- Same If You Use DATEPART(year, order_date) AS order_year
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
FROM  gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)  -- GROUP BY DATEPART(year, order_date) , DATEPART(month, order_date)
ORDER BY order_year, order_month;


SELECT
    DATEPART(year, order_date) AS order_year,
    DATEPART(month, order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATEPART(year, order_date) , DATEPART(month, order_date)
ORDER BY order_year, order_month;


SELECT 
	CAST(DATEADD(month, DATEDIFF(month, 0, order_date), 0) AS DATE) AS order_date,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
	FROM  gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY CAST(DATEADD(month, DATEDIFF(month, 0, order_date), 0) AS DATE)
ORDER BY order_date;


SELECT
    FORMAT(order_date,'yyyy-MMM') AS order_year,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date,'yyyy-MMM')
ORDER BY order_year;


 