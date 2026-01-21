** GROUP BY **
it is a very important topic (frequently asked in interviews).
** What is GROUP BY?
GROUP BY is used to group rows that have the same value and apply aggregate functions on each group.
👉 Think of it like creating summaries.
🔹 Basic Syntax :-

SELECT column_name, AGG_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;

**Question to show Orders per customer **

SELECT customerid , COUNT(*) as Total_orders
from Orders
group by customerid

**Question to show Products per category **

select category , count(*) as Product_count
from Products
GROUP by category

🧠 Common GROUP BY Mistakes (VERY IMPORTANT)
❌ Mistake 1: 
Selecting non-grouped columns

SELECT CustomerID, OrderDate, COUNT(*)
FROM Orders
GROUP BY CustomerID;   -- ❌ wrong

✅ Correct

SELECT CustomerID, COUNT(*)
FROM Orders
GROUP BY CustomerID;

👉 Rule:
Every column in SELECT must be:
in GROUP BY OR
inside an aggregate function (COUNT, SUM, etc.)

❌ Mistake 2: 
Using WHERE with aggregates
WHERE COUNT(*) > 2   -- ❌ wrong
👉 Aggregates cannot be used in WHERE.

**Question 3 to show Total sales per customer **

select * from orders

select customerid , sum(totalamount) as Total_sales_per_customer
from Orders
GROUP by customerid

**Question 4 to show Average price per category **

select * from Products

select category , avg(price) as Avg_price_per_Category
from Products
GROUP by category 

**question to show Customers with more than 2 orders **

SELECT * from Orders

select customerid , count(*) as total_orders
from Orders
GROUP by customerid
HAVING count(*) > 2 

**question to show Categories with average price above 500 **

select * from Products

select  category , avg(price) 
from Products
GROUP by category
HAVING avg(price) > 500
