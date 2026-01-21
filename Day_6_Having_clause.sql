CREATE TABLE Customers (
    customerid INT PRIMARY KEY,
    customername VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Amit'),
(2, 'Neha'),
(3, 'Rahul'),
(4, 'Priya'),
(5, 'Vikas');

CREATE TABLE Categories (
    categoryid INT PRIMARY KEY,
    categoryname VARCHAR(50)
)

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

CREATE TABLE Products (
    productid INT PRIMARY KEY,
    productname VARCHAR(50),
    categoryid INT,
    price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1, 'Mobile', 1, 200),
(2, 'Laptop', 1, 800),
(3, 'Headphones', 1, 50),
(4, 'T-Shirt', 2, 20),
(5, 'Jeans', 2, 60),
(6, 'Jacket', 2, 100),
(7, 'Novel', 3, 30),
(8, 'Textbook', 3, 70);

CREATE TABLE Orders (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE
);

INSERT INTO Orders VALUES
(1, 1, '2024-01-01'),
(2, 1, '2024-01-05'),
(3, 1, '2024-01-10'),
(4, 1, '2024-01-15'),
(5, 1, '2024-01-20'),
(6, 1, '2024-01-25'),
(7, 2, '2024-01-03'),
(8, 2, '2024-01-08'),
(9, 3, '2024-01-12'),
(10, 3, '2024-01-18'),
(11, 3, '2024-01-22'),
(12, 3, '2024-01-27'),
(13, 3, '2024-01-29'),
(14, 3, '2024-01-30'),
(15, 4, '2024-01-05');

** HAVING **

** HAVING vs WHERE (Quick recap) **
WHERE	                        HAVING
Filters rows	                Filters groups
Used before GROUP BY	        Used after GROUP BY
Cannot use aggregate functions	Used with aggregate functions

🧪 Practice Queries **
** Question 1️ Customers with more than 5 orders **
👉 Logic:
Group orders by customer
Count orders
Filter using HAVING

Query :--
SELECT * from Orders

select customerid, count(orderid) as Total_orders 
from orders
group by customerid
having count(orderid) > 5

Task 2: Categories with average product price > 40 **

select * from Categories;

SELECT * from Products

select c.categoryname , avg(p.price) as avg_price
from Products p
join Categories c on c.categoryid = p.productid
GROUP by c.categoryname
HAVING avg(p.price) > 40

** Question Customers with at least 3 orders

select productname , price , categoryid
from Products
GROUP by categoryid
having COUNT(categoryid) >=3

SELECT customerid, COUNT(orderid) AS total_orders
FROM Orders
GROUP BY customerid
HAVING COUNT(orderid) >= 3;


** Question Customers with exactly 1 order **

SELECT customerid, COUNT(orderid) AS total_orders
FROM Orders
GROUP BY customerid
HAVING COUNT(orderid) = 1;

** Question Categories with more than 2 products having price > 50 **

SELECT * from Categories;

SELECT * from Products

SELECT c.categoryname , COUNT(p.productid) as Total_products , p.price
from Products p
join Categories c on c.categoryid = p.categoryid
where p.price > 50
GROUP by categoryname
HAVING COUNT(p.productid) > 2

