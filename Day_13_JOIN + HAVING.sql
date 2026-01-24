** Day 13 – JOIN + HAVING **

** Key Concept (Quick Recap) **
WHERE → filters rows before aggregation
HAVING → filters groups after aggregation

⚠️ Common Interview Mistakes
❌ Using WHERE COUNT()
❌ Forgetting GROUP BY
❌ Using column aliases in HAVING (some DBs don’t allow it)

🧠 Interview Tip
💬 Question: Why can’t we use WHERE instead of HAVING?
✔️ Answer: Because WHERE works on rows, HAVING works on aggregated results

** Question Customers with more than 5 orders
👉 Show CustomerName and TotalOrders

select * from Customers;
select * from orders;
select * from OrderDetails;
select * from Products

SELECT c.customername , 
count(o.orderid)
from Customers c
join orders o
on c.customerid=o.customerid
group by c.customername
having COUNT(o.orderid) >5

** Question Products that have been ordered more than 50 times
👉 Show ProductName and TotalQuantity

select p.produtname , 
sum(od.quantity) as TotalQuantity
from Products p
join OrderDetails od
on p.productid=od.productid
group by p.productname
having TotalQuantity > 50

** Question Customers whose total order value is greater than 50,000
👉 Join Customers → Orders → OrderDetails

select c.customername , 
o.orderid,
sum(od.quantity*od.price) as TotalAmount
from customers c
join Orders o
on c.customerid=o.orderid
join OrderDetails od
on o.orderid=od.orderid
group by c.customername
having TotalAmount >50000

** Question Categories with an average product price above 500
👉 Show CategoryName and AveragePrice

select c.category ,
avg(od.quantity*od.price) as AveragePrice
from category c
join OrderDetails od
on c.categoryid=od.orderid
group by c.category
having AveragePrice >500

** Question Employees who handled more than 20 orders
👉 Show EmployeeName and OrderCount  

select e.employeename ,
count(o.orderid) as ordercount
from employees e
join orders o
on e.orderid=o.orderid
group by e.employeename
having ordercount > 20

** Question Customers who ordered more than 3 different products
👉 Use COUNT(DISTINCT ProductID)

select c.customername,
count(DISTINCT od.productid) as DifferentProducts
from Customers c
join orders o
on c.customerid=o.customerid
join OrderDetails od
on o.orderid=od.orderid
group by c.customername
having count(DISTINCT od.productid) > 3;

** Question Suppliers supplying more than 5 products
👉 Show SupplierName and ProductCount

select s.suppliername ,
count(p.productid) as ProductCount
from Suppliers s
join Products p
on s.supplierid=p.supplierid
group by s.suppliername
having count(p.productid) > 5
