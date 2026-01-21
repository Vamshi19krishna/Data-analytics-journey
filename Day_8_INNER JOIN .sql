INNER JOIN returns only matching records from both tables
Non-matching rows are automatically excluded
INNER JOIN + GROUP BY + HAVING = very common interview combo
Order of execution: FROM → JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

CREATE TABLE Customers (
    customerid INT PRIMARY KEY,
    customername VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO Customers (customerid, customername, country) VALUES
(1, 'Maria Anders', 'Germany'),
(2, 'Ana Trujillo', 'Mexico'),
(3, 'Antonio Moreno', 'Mexico'),
(4, 'Thomas Hardy', 'UK'),
(5, 'Christina Berglund', 'Sweden');

CREATE TABLE Orders (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customerid) REFERENCES Customers(customerid)
);

INSERT INTO Orders (orderid, customerid, orderdate, amount) VALUES
(101, 1, '2023-01-10', 2500.00),
(102, 2, '2023-01-12', 1800.00),
(103, 1, '2023-02-05', 3200.00),
(104, 3, '2023-02-10', 1500.00),
(105, 6, '2023-02-15', 2000.00); 

select * from Customers;

select * from Orders

** Question Task: Orders with Customer Names **
Goal:
Display orders along with the corresponding customer names using INNER JOIN.

select o.orderid , o.customerid , o.orderdate , c.customername 
from orders o
inner join Customers c on o.customerid=c.customerid

** Question Get orders placed by customers from Mexico **

select c.customerid , c.customername , c.country ,o.orderid 
from Orders o
inner join Customers c 
on c.customerid=o.customerid
where country = 'Mexico';

** Question Count total orders per customer **

SELECT c.customerid , c.customername , count(o.orderid) as total_orders
from customers c
inner join orders o
on c.customerid=o.customerid
group by c.customername

** Question Customers who placed orders after 2023-02-01 **

select c.customername 
from Customers c
inner join Orders o
on c.customerid=o.customerid
where o.orderdate > 2023-02-01

** Question Total order amount per customer **

SELECT c.customername , sum(o.amount) as total_amount
from Customers c
inner join Orders o
on c.customerid=o.customerid
group by c.customername

** Question Customers having more than 1 order **

select c.customername , count(o.orderid) as Order_count
from Customers c
inner join Orders o
on c.customerid=o.customerid
group by c.customername
having Order_count > 1

** Question Latest order date for each customer **

select c.customername , max(o.orderdate) as Latest_order
from Orders o
inner join Customers c
on c.customername=o.customerid
group by c.customername

** Question Find customers whose total purchase is greater than 3000 **

select c.customername , sum(o.amount) as Total_purchase
from Customers c
inner join Orders o
on c.customerid=o.customerid
group by c.customername
having Total_purchase > 3000

** Question INNER JOIN vs WHERE (Trick Question) **

select * 
from Orders o , Customers c
where o.customerid = c.customerid

Answer: Yes, it works but ❌ not recommended.
Modern & readable approach:

select Orders o
inner join Customers c
on o.customerid = c.customerid

** Question Customers with at least one order in 2023 **

select DISTINCT c.customername 
from Customers c
inner join Orders o
on c.customerid=o.customerid
where YEAR(o.orderdate) = 2023
