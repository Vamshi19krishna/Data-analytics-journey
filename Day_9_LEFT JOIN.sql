** LEFT JOIN **

LEFT JOIN returns all rows from the left table (Customers)
If there is no matching row in the right table (Orders), the result shows NULL
So, to find customers with no orders, we check where the order column is NULL

drop TABLE Orders

CREATE TABLE Customers (
    customerid INT,
    customername VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Ravi Traders'),
(2, 'Sita Stores'),
(3, 'Krishna Mart'),
(4, 'Lakshmi Enterprises'),
(5, 'Vamshi Retail');

CREATE TABLE Orders (
    orderid INT,
    customerid INT,
    orderdate DATE
);

INSERT INTO Orders VALUES
(101, 1, '2024-01-10'),
(102, 2, '2024-01-15'),
(103, 2, '2024-01-20'),
(104, 3, '2024-02-01');


select * from Customers;

select * from Orders

** Practice Task: Customers with no orders , Find customers who have never placed an order **

select c.customerid , c.customername , c.country , o.orderid
from customers c
left join orders o
on c.customerid=o.customerid
WHERE o.orderid is null

** Interview Tip **
“LEFT JOIN + NULL check = missing records”
If you remember this rule, you can solve many SQL problems easily.

** Question Find customers who have NOT placed any orders

select c.customerid , c.customername  , o.orderid
from customers c
left join orders o
on c.customerid=o.customerid
WHERE o.orderid is null 

** Interview Questions LEFT JOIN **

** Q1 What does LEFT JOIN do?
Returns all the VALUES from left TABLE and matched values from right table , unmatched rows show null VALUES

** Q2 How do you find records in one table but not in another?
by using left join with is null or not EXISTS

** Q3 Difference between LEFT JOIN and INNER JOIN?
left join.                                     inner JOIN
returns all left rows                          returns only matching rows
include null's                                 no null's 

** Q4 Can this be written without JOIN?

SELECT customerid, customername
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customerid = c.customerid
);

** Q5 When do you prefer NOT EXISTS over LEFT JOIN?
Large datasets
When checking non-matching records
Better performance in many databases

