** WHERE Clause**
WHERE is used to filter rows based on a condition.

Syntax :--

SELECT column_name
FROM table_name
WHERE condition;

COMPARISON OPERATOR

Operator	Meaning
=	Equal to
>	Greater than
<	Less than
>=	Greater than or equal
<=	Less than or equal
<> or !=	Not equal

** AND / OR Operators**
AND :- All conditions must be true
WHERE condition1 AND condition2

OR :- Any one condition can be true
WHERE condition1 OR condition2

**Question show Customers from China**

select * from Customers

select CustomerName , Country from Customers
where Country = 'China'

**Question show Products with price > 500**

select * from Products

select productid , ProductName from Products
where price > 500

**Question show Customers from India OR Germany**

select * from Customers
where country = 'India' or country = 'Germany'

**Question show Products with price > 50 AND stock > 20**

select * from Products
where price > 500 and stock > 20

**question show Customers not from India**

select * from Customers
where country != 'India'

**Question Show Products with price ≤ 500**

select * from Products
where price <= 500





