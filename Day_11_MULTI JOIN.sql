**MULTI-TABLE join**

CREATE TABLE Customers (
    customerid INT,
    customername VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Ravi Traders'),
(2, 'Sita Stores'),
(3, 'Krishna Mart');

CREATE TABLE Orders (
    orderid INT,
    customerid INT,
    orderdate DATE
);

INSERT INTO Orders VALUES
(101, 1, '2024-01-10'),
(102, 1, '2024-01-15'),
(103, 2, '2024-01-20');


CREATE TABLE OrderDetails (
    orderdetailid INT,
    orderid INT,
    productname VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO OrderDetails VALUES
(1, 101, 'Rice', 2, 50),
(2, 101, 'Wheat', 1, 40),
(3, 102, 'Sugar', 3, 30),
(4, 103, 'Oil', 1, 120);

SELECT * from Customers;
select * from Orders;
select * from OrderDetails

** Question Show customer name, order id, product name, quantity, and price **

select 
c.customername ,
o.orderid ,
od.productname ,
od.quantity , 
od.price 
from customers c
join orders o
on c.customerid=o.customerid
join OrderDetails od
on o.orderid=od.orderid

** Question Total amount per order **

select o.orderid,
sum(od.quantity * od.price) AS Total_amount
from orders o
join OrderDetails od
on o.orderid=od.orderid
group by o.orderid

** Question Total spending per customer ** 

SELECT c.customername ,
sum(od.quantity * od.price) As Total_amount
from Customers c
join orders o
on c.customerid=o.customerid
join OrderDetails od
on o.orderid=od.orderid
group by c.customername

** Question Customers with no orders (Multi-Table + LEFT JOIN) **

SELECT c.customername , o.orderid
from customers c
left join Orders o
on c.customerid=o.customerid
left join OrderDetails od
on o.orderid=od.orderid
where o.orderid is NULL