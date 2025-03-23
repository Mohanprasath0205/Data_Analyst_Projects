use walmart_sales;

select * from cleaned_data;

-- Business Problems

 -- Q1 for each different payment method find number of transactions,no. of qty sold

select payment_method ,
count(*) Transaction,
sum(quantity) as Quantity_sold
from cleaned_data
group by payment_method;

-- Q2 Identify the highest-rated category in each branch,displaying the branch,category avg rating

select * from(select Branch, 
category,
avg(rating) as Avg_Rating,
Rank() over (partition by Branch order by avg(rating)desc) Highest_rated_category
from cleaned_data
group by category,Branch)b where Highest_rated_category =1;

use walmart_sales;
-- Q3 identify the busiest day for each branch based on the number of transactions

select * from
	(select Branch,
		format(date,'dddd') as busiest_day,
		COUNT(*) No_of_transactions,
		RANK() over (partition by branch order by COUNT(*) desc) rnk 
	from cleaned_data
	group by Branch,format(date,'dddd'))b
where rnk=1;

-- Q4 calculate the total quantity of items sold per payment method. list payment methof and total quamtity

select payment_method, 
sum(quantity) as Total_qty
from cleaned_data
group by payment_method;


-- Q5 Determine the average,minimum,and maximum rating of products for each city.
-- list the city,average_rating,min_rating, and max_rating.

select * from cleaned_data;

select City,
avg(rating) as AVG_Rating,
max(rating) as Max_rating,
min(rating) as Min_rating
from cleaned_data
group by City
order by city;

-- Q6 Calculate the total profit for each category by considering total profit as 
-- (unit_price * quantity * profit_margin).list category and total_profit,ordered from highest to lowest profit.

select * from cleaned_data;

select category,
sum(unit_price*quantity*profit_margin) total_profit
from cleaned_data
group by category
order by sum(unit_price*quantity*profit_margin) desc;


-- Q7 Determine the most common Payment method for each branch.
-- Display branch and the preferred payment method.


select * from cleaned_data;


select * from (select Branch, payment_method,
count(*) cnt,
rank() over (partition by branch order by count(*) desc) rnk
from cleaned_data
group by branch,payment_method)b where rnk=1;

-- Q8 -- categorize sales into 3 groups Morning,Afternoon,Evening
-- Find out each of the shift and number of invocies

SELECT shift, COUNT(*) AS num_invoices
FROM (
    SELECT 
        CASE 
            WHEN HOUR(time) BETWEEN 6 AND 11 THEN 'Morning'
            WHEN HOUR(time) BETWEEN 12 AND 17 THEN 'Afternoon'
            WHEN HOUR(time) BETWEEN 18 AND 23 THEN 'Evening'
            ELSE 'Night' 
        END AS shift
    FROM cleaned_data
) AS categorized_sales
GROUP BY shift;



-- Q9 Identify 5 branch with highest decrese ratio in revenue compare to last year (current year 2023 and last year 2022)

WITH revenue_by_year AS (
    SELECT 
        Branch,
        YEAR(date) AS sales_year,
        SUM(Total) AS total_revenue
    FROM cleaned_data
    WHERE YEAR(date) IN (2022, 2023)  -- Filter only for 2022 and 2023
    GROUP BY Branch, YEAR(date)
),
revenue_comparison AS (
    SELECT 
        r2022.Branch,
        r2022.total_revenue AS revenue_2022,
        COALESCE(r2023.total_revenue, 0) AS revenue_2023,  -- If no revenue in 2023, assume 0
        ((r2022.total_revenue - COALESCE(r2023.total_revenue, 0)) / r2022.total_revenue) * 100 AS decrease_ratio
    FROM revenue_by_year r2022
    LEFT JOIN revenue_by_year r2023 
        ON r2022.Branch = r2023.Branch AND r2023.sales_year = 2023
    WHERE r2022.sales_year = 2022
)
SELECT Branch, revenue_2022, revenue_2023, decrease_ratio
FROM revenue_comparison
ORDER BY decrease_ratio DESC
LIMIT 5;
