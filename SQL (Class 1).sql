What is SQL?
SQL (Structured Query Language) is used to:
Store data in databases
Retrieve data from databases
Update, delete, and manage data
SQL works with tables (rows and columns), just like Excel sheets.
🔹 Basic SQL Keywords
1️⃣ SELECT
Used to choose columns you want to see.
2️⃣ FROM
Used to specify the table where the data is stored.
3️⃣ SELECT *
The * means all columns.
🧪 Practice Queries
Since you are using the Northwind-style database (Customers, Products, etc.), use these queries 👇
✅ 1. Show all customers
SELECT *
FROM Customers;
✅ 2. Show all products
SELECT *
FROM Products;

**creating a table**

create table Customers(
CustomerID integer,
CustomerName varchar(100),
Country varchar(100),
City varchar(100),
Email varchar(100)
)

insert into Customers(CustomerID,CustomerName,Country,City,Email)
VALUES(1, 'Ravi Kumar', 'India', 'Hyderabad', 'ravi@gmail.com'),
(2, 'Anita Sharma', 'India', 'Delhi', 'anita@gmail.com'),
(3, 'John Smith', 'USA', 'New York', 'john@gmail.com'),
(4, 'Maria Garcia', 'Spain', 'Madrid', 'maria@gmail.com'),
(5, 'Chen Wei', 'China', 'Beijing', 'chen@gmail.com')

create table Products
(
ProductID integer,
ProductName varchar(100),
Category varchar(100),
Price integer,
Stock integer
)

INSERT into Products(ProductID,
ProductName,
Category,
Price,
Stock)
VALUES(101, 'Laptop', 'Electronics', 55000, 10),
(102, 'Mobile Phone', 'Electronics', 25000, 25),
(103, 'Office Chair', 'Furniture', 8000, 15),
(104, 'Notebook', 'Stationery', 100, 200),
(105, 'Water Bottle', 'Accessories', 500, 50);

**Question Show all customers**

select * from Customers;

**question Show all products**

select * from Products;

**Question Show only customer names and countries**

select customername , country from Customers;

**Question Show product names and prices**

select productname , price from Products;

**question Show all customers from India**

select customername,country from Customers
where Country = 'India'

**Question Show all products that belong to Electronics category**

select productname , category from Products
where category = 'Electronics'




