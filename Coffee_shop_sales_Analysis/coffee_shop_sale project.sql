select * from coffee_shop_sales;

UPDATE coffee_shop_sales
SET transaction_date = str_to_date(transaction_date, '%m/%d/%Y');

SET SQL_SAFE_UPDATES = 0;

UPDATE coffee_shop_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%m/%d/%Y');

alter table coffee_shop_sales 
modify transaction_date DATE;

DESCRIBE coffee_shop_sales;

update coffee_shop_sales
SET transaction_time= str_to_date(transaction_time,"%H:%i:%s");
ALTER TABLE coffee_shop_sales 
modify transaction_time TIME;

Describe coffee_shop_sales;

alter table coffee_shop_sales
change ï»¿transaction_id transacation_id int;


select concat((round(sum(unit_price*transaction_qty)))/1000,'k') as Total_sales 
from coffee_shop_sales
WHERE
MONTH(transaction_date)= 3; --- March month

--- selected month  /cm - may=5---
--- PM is April = 4--


SELECT 
    MONTH(transaction_date) AS month, -- Extracts the month number
    ROUND(SUM(unit_price * transaction_qty)) AS Total_sales, -- Total sales per month
    
    -- Month-over-Month Sales Difference
    (SUM(unit_price * transaction_qty) - 
     LAG(SUM(unit_price * transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date))) 
     AS month_sales_difference,
    
    -- Month-over-Month Percentage Increase
    ((SUM(unit_price * transaction_qty) - 
      LAG(SUM(unit_price * transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date))) /
      LAG(SUM(unit_price * transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date)) * 100) 
      AS MOM_increase_percentage

FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5) -- Filters only April (4) and May (5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);



----- 2nd kpi---------------------------------------------------------------------




SELECT 
    MONTH(transaction_date) AS month, -- Extracts the month number
    COUNT(ROUND(transacation_id)) AS total_orders, -- Total orders per month

    -- Month-over-Month Order Difference
    (COUNT(ROUND(transacation_id)) - 
     LAG(COUNT(ROUND(transacation_id)), 1) OVER (ORDER BY MONTH(transaction_date))) 
     AS month_order_difference,
    
    -- Month-over-Month Percentage Increase
    ((COUNT(ROUND(transacation_id)) - 
      LAG(COUNT(ROUND(transacation_id)), 1) OVER (ORDER BY MONTH(transaction_date))) /
      LAG(COUNT(ROUND(transacation_id)), 1) OVER (ORDER BY MONTH(transaction_date)) * 100) 
      AS MOM_increase_percentage

FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5) -- Filters only April (4) and May (5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);



-------------- 3rd kpi --------------------------------------------------------------------------------

select sum(transaction_qty) as total_quantity_sold
from coffee_shop_sales 
where month(transaction_date)=6;


SELECT 
    MONTH(transaction_date) AS month, -- Extracts the month number
    SUM(transaction_qty) AS total_transaction_qty, -- Total transaction quantity per month

    -- Month-over-Month Transaction Quantity Difference
    (SUM(transaction_qty) - 
     LAG(SUM(transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date))) 
     AS month_transaction_difference,
    
    -- Month-over-Month Percentage Increase
    ((SUM(transaction_qty) - 
      LAG(SUM(transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date))) /
      LAG(SUM(transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date)) * 100) 
      AS MOM_increase_percentage

FROM coffee_shop_sales
WHERE MONTH(transaction_date) IN (4, 5) -- Filters only April (4) and May (5)
GROUP BY MONTH(transaction_date)
ORDER BY MONTH(transaction_date);





-------------- 4th kpi charts kpi's--------------------------------------------------------------------------------

select
 concat(round(sum(unit_price * transaction_qty)/1000,1),'k') as Total_sales,
 concat(round(sum(transaction_qty)/1000,1),'k') as Total_qty_sold,
 concat(round(count(transacation_id)/1000,1),'k') as total_orders
 from coffee_shop_sales 
where 
 transaction_date = '2023-03-27';
 
 
 -------------- 5th kpi charts kpi's--------------------------------------------------------------------------------
 
 --- Weekends -sat to sun
---- Weekdays Mon to Fri
 ----- so SUN-1 MON- 2 ......... Sat-7
 
 SELECT 
    CASE 
        WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'WeekEnds'
        ELSE 'WeekDays'
    END AS Day_type,
    concat(round(SUM(unit_price * transaction_qty)/1000,1),'k') AS Total_sales
FROM coffee_shop_sales 
WHERE MONTH(transaction_date) = 2 -- Filters for May month
GROUP BY CASE 
    WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'WeekEnds'
    ELSE 'WeekDays'
END;


 
 -------------- 6th kpi charts kpi's--------------------------------------------------------------------------------
 
 
 
 select 
   store_location,
    sum(unit_price * transaction_qty) as Total_sales
from coffee_shop_sales
where month(transaction_date) = 5 
group by 
store_location
order by Total_sales desc;



 -------------- 7th kpi charts kpi's--------------------------------------------------------------------------------
 
 

SELECT 
    concat(round(AVG(total_sales)/1000,1),'k') AS Avg_Sales
FROM (
    SELECT SUM(transaction_qty * unit_price) AS total_sales 
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 5
    GROUP BY transaction_date
) AS Internal_query;



-------------- 7th kpi charts kpi's--------------------------------------------------------------------------------

select
	day_of_month,
CASE 
 WHEN total_sales > avg_sales THEN "Above average"
 WHEN total_sales < avg_sales THEN "Below Average"
 Else "Average"
 End as Sales_status,

total_sales
from ( 
	select 
    day(transaction_date)as day_of_month,
    SUM(unit_price * transaction_qty) as total_sales,
    AVG(SUM(unit_price * transaction_qty)) OVER () AS avg_sales
    FROM
    coffee_shop_sales
    where
    month(transaction_date) =5
    GROUP BY 
    DAY(transaction_date)
    ) as sales_data
    ORDER BY 
    day_of_month;
    
    
    
    -------------- 8th kpi charts kpi's--------------------------------------------------------------------------------
    
    
    select * from coffee_shop_sales;
    
    
    select
    product_category,
    round(SUM(unit_price * transaction_qty),1) as Total_sales
    from coffee_shop_sales
	where month(transaction_date)=5
    group by product_category
    order by SUM(unit_price * transaction_qty) desc;
    
    
       -------------- 9th kpi charts kpi's--------------------------------------------------------------------------------
       
     select 
     product_type,
     SUM(unit_price * transaction_qty)as Total_sales
     from coffee_shop_sales
     where Month(transaction_date)=5
     group by product_type
     order by SUM(unit_price * transaction_qty) desc
     limit 10;
     
     
     -------------- 10th kpi charts kpi's--------------------------------------------------------------------------------
     select * from coffee_shop_sales;
     select
     SUM(unit_price * transaction_qty) AS Total_sales,
     SUM(transaction_qty) AS Total_qty_sold,
     Count(transacation_id) as Total_orders
     from coffee_shop_sales
     where 
     month(transaction_date)= 5 and
     DAYOFWEEK(transaction_date)= 1 and
     HOUR(transaction_time) =8;
     
         -------------- 10thth kpi charts kpi's--------------------------------------------------------------------------------
     
     
     SELECT 
    CASE 
        WHEN DAYOFWEEK(transaction_date) = 2 THEN 'Monday'
        WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
        WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
        WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
        WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
        WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
        ELSE 'Sunday'
    END AS Day_of_Week,
    ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) = 5 -- Filter for May (month number 5)
GROUP BY Day_of_Week;
   
   
   
   
   
SELECT 
Case 
when month(transaction_date)=1 then "JAN"
when month(transaction_date)=2 then "FEB"
when month(transaction_date)=3 then "MAR"
when month(transaction_date)=4 then "APR"
when month(transaction_date)=5 then "MAY"
when month(transaction_date)=6 then "JUNE"
when month(transaction_date)=7 then "JULY"
when month(transaction_date)=8 then "AUG"
else 'other' 
end as First_eight_month,
ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales
from coffee_shop_sales
where YEAR(transaction_date) = 2023
group by MONTH(transaction_date),First_eight_month
order by MIN(MONTH(transaction_date));

SELECT 
    CASE 
        WHEN MONTH(transaction_date) = 1 THEN 'JAN'
        WHEN MONTH(transaction_date) = 2 THEN 'FEB'
        WHEN MONTH(transaction_date) = 3 THEN 'MAR'
        WHEN MONTH(transaction_date) = 4 THEN 'APR'
        WHEN MONTH(transaction_date) = 5 THEN 'MAY'
        WHEN MONTH(transaction_date) = 6 THEN 'JUNE'
        WHEN MONTH(transaction_date) = 7 THEN 'JULY'
        WHEN MONTH(transaction_date) = 8 THEN 'AUG'
        ELSE 'OTHER' 
    END AS First_Eight_Month,
    ROUND(SUM(unit_price * transaction_qty), 2) AS Total_Sales
FROM coffee_shop_sales
WHERE YEAR(transaction_date) = 2023
GROUP BY MONTH(transaction_date), First_Eight_Month
ORDER BY MONTH(transaction_date);
commit;




create database walmart_sales;