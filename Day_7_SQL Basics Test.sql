select * from Customers;

SELECT * from Orders

select * from Products;

select * from Categories

Display all customers

select * from Customers

Show all products with price greater than 100

select * from Products
where price > 100

List all orders sorted by order date (latest first)

select * from Orders
order by orderdate DESC

Count total number of customers

select COUNT(customername) from Customers

Find the maximum product price

select max(price) from Products

Count total orders per Customers

select c.customername , COUNT(o.orderid) as total_orders
from orders o
join Customers c on c.customerid = o.customerid
GROUP by c.customername

Find customers with more than 3 orders

select c.customername , COUNT(o.orderid) AS total_orders
from Customers c
join Orders o on c.customerid = o.customerid
group by c.customername
HAVING COUNT(o.orderid) > 3

Find average price of products per category

select c.categoryname , avg(p.price) 
from Products p
join Categories c on p.categoryid = c.categoryid
group by categoryname

Show categories with average price greater than 50

select c.categoryname , avg(p.price) 
from Products p
join Categories c on p.categoryid = c.categoryid
group by categoryname
having avg(p.price) > 50

Count products in each category

SELECT c.categoryname , COUNT(p.productid) as product_count
from Products p 
join Categories c on c.categoryid=p.categoryid
GROUP by c.categoryname

Customers with exactly 1 order

select customerid , COUNT(orderid) as Total_orders
from Orders
group by customerid
having COUNT(orderid) = 1

Categories with more than 2 products

select c.categoryname , COUNT(p.categoryid) as product_count
from Categories c
join Products p on c.categoryid=p.categoryid
GROUP by c.categoryname
having COUNT(p.categoryid) >2

Customers who placed orders in January 2024

SELECT DISTINCT c.customername
FROM Orders o
JOIN Customers c ON c.customerid = o.customerid
WHERE o.orderdate BETWEEN '2024-01-01' AND '2024-01-31';

Categories where maximum product price > 500

select c.categoryname , max(p.price) as Max_price
from Categories c
join Products p on c.categoryid=p.categoryid
group by c.categoryname
having max(p.price) > 500

Customers with at least 2 orders placed after 2024-01-10

select c.customername , count(o.orderid) as Order_count
from Customers c
JOIN Orders o on c.customerid=o.customerid
where orderdate > '2024-01-10'
group by c.customername
having Order_count >= 2