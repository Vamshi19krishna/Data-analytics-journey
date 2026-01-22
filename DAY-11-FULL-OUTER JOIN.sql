** FULL OUTER JOIN **

What is FULL OUTER JOIN?
full outer join menas it returns :
all matching rows
non-matching rows from both the tables
non-matches will appear as NULL 
think of it as left join + right JOIN

CREATE TABLE Customers (
    customerid INT,
    customername VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Ravi Traders'),
(2, 'Sita Stores'),
(3, 'Krishna Mart'),
(4, 'Lakshmi Enterprises');

CREATE TABLE Orders (
    orderid INT,
    customerid INT
);

INSERT INTO Orders VALUES
(101, 1),
(102, 2),
(103, 5);

select * from Customers;
select * from Orders

** FULL OUTER JOIN Query **

select c.customerid ,
c.customername , 
o.orderid 
from Customers c
full OUTER join Orders o
on c.customerid=o.customerid

⚠️ Important: MySQL Does NOT Support FULL OUTER JOIN
✅ MySQL Workaround (Interview Gold ⭐)

select c.customerid ,
c.customername , 
o.orderid 
from Customers c
left join orders o
on c.customerid=o.customerid
union
select c.customerid ,
c.customername , 
o.orderid 
from Customers c
right join orders o
on c.customerid=o.customerid

📌UNION Removes the duplicate values 

