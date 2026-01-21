** AGGREGATE FUNCTIONS **
These are very important for interviews and real projects.

** What are Aggregate Functions?
They perform calculations on multiple rows and return one single value.

** COUNT FUNCTION **
Counts number of rows.

QUERY :- 
SELECT COUNT(*) FROM ORDERS

** SUM FUNCTION **
Adds numeric values.

SELECT SUM(totalamount) FROM Orders

** AVG FUNCTION **
Calculates average.

SELECT AVG(price) from Products

** MIN / MAX FUNCTIONS **
Finds smallest and largest values.

SELECT MIN(price) , MAX(price) FROM Products

**Question to show Total orders

select count(*) as Total_orders from Orders

**Question to show Average product price

select avg(price) as Avg_Price from Products

** Important Notes **
Aggregate functions ignore NULL values
Column aliases (AS) make output readable
Without GROUP BY, aggregates return one row

**Question to show Total revenue **

select sum(totalamount) from Orders

**Question to show Cheapest and most expensive product **

select min(price) , max(price)  from Products

**question to show Total number of products

select count(*) from Products

**Question to show Average order amount

select avg(totalamount) from Orders

**Question to show Highest order VALUE **

select max(totalamount) from Orders

