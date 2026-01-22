** RIGHT JOIN **

How it Works (Interview Explanation)
RIGHT JOIN keeps all rows from Products(Right table)
Products with no matching supplier → supplier columns become NULL
WHERE s.supplierid IS NULL filters unsupplied products

CREATE TABLE Suppliers (
    supplierid INT,
    suppliername VARCHAR(100)
);

INSERT INTO Suppliers VALUES
(1, 'ABC Suppliers'),
(2, 'Global Traders'),
(3, 'Fresh Farm');

CREATE TABLE Products (
    productid INT,
    productname VARCHAR(100),
    supplierid INT
);

INSERT INTO Products VALUES
(101, 'Rice', 1),
(102, 'Wheat', 1),
(103, 'Sugar', 2),
(104, 'Salt', NULL),
(105, 'Oil', NULL);

SELECT * from Suppliers;
select * from Products
** Question Find products that do NOT have a supplier

select p.productid , p.productname , p.supplierid
from Suppliers s
right join Products p 
on s.supplierid=p.supplierid
where s.supplierid is null

** Interviewers often prefer this version. Equivalent LEFT JOIN (Preferred) **

select p.productid , p.productname
from Products p
left join Suppliers s
on p.supplierid=s.supplierid
where s.supplierid is null

** interview-ready answers on right join **

** Q1 Difference between LEFT JOIN and RIGHT JOIN?
left join                                      right join 
Returns all rows from left TABLE               returns all rows from right TABLE
matching rows from right table                 matching rows from left TABLE
shows Non-matching rows as NULL                shows Non-matching rows as NULL
most commonly used                             less commonly used

** Q2 Why is RIGHT JOIN rarely used?
because 
it can always be re-written as a left join 
left join reads more natuarally left → RIGHT
many developers follow left join as a standard
improves code readability and consistency

** Interview one-liner:
“RIGHT JOIN is avoided because the same result can be 
achieved using LEFT JOIN by swapping table positions.”

** Q3 How can RIGHT JOIN be converted to LEFT JOIN?

RIGHT JOIN
SELECT *
FROM Suppliers s
RIGHT JOIN Products p
    ON s.supplierid = p.supplierid;
    
Equivalent LEFT JOIN

SELECT *
FROM Products p
LEFT JOIN Suppliers s
    ON p.supplierid = s.supplierid;
    
📌 Rule:
Swap table order + change RIGHT JOIN to LEFT JOIN

** Q4 
