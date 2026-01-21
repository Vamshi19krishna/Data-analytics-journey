SORTING AND LIMITING Data.
** ORDER BY **
ORDER BY is used to sort the result.

Syntax :- 

SELECT *
FROM table_name
ORDER BY column_name;

** ASC / DESC **

Keyword	Meaning
ASC	Ascending (default)
DESC	Descending

Example:
ORDER BY Price DESC;

🔹 LIMIT / TOP
These are used to restrict the number of rows returned.
🔸 MySQL / PostgreSQL / SQLite
LIMIT number;
🔸 SQL Server
SELECT TOP number * FROM table;

**Question show Top 4 expensive products**

select * from Products
order by price desc
limit 4;

**Question show Cheapest 3 products**

select * from Products
order by price asc
LIMIT 3

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1, 101, '2024-12-01', 2500.00),
(2, 102, '2024-12-05', 1800.00),
(3, 103, '2024-12-10', 3200.00),
(4, 104, '2024-12-15', 1500.00),
(5, 105, '2024-12-20', 4500.00),
(6, 101, '2024-12-25', 2100.00),
(7, 102, '2025-01-02', 3900.00),
(8, 103, '2025-01-05', 1200.00),
(9, 104, '2025-01-08', 2800.00),
(10, 105, '2025-01-10', 5000.00),
(11, 101, '2025-01-12', 2300.00),
(12, 102, '2025-01-15', 4100.00),
(13, 103, '2025-01-18', 1700.00),
(14, 104, '2025-01-20', 3600.00),
(15, 105, '2025-01-22', 2900.00);

**question Get the latest 10 orders based on OrderDate **

SELECT * from Orders
order by orderdate DESC
LIMIT 10

**Question to show Oldest 5 orders

SELECT * from Orders
order by orderdate asc
LIMIT 5

