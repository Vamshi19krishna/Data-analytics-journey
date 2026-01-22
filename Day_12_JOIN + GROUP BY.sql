** JOIN + GROUP BY **

select * from Customers;
SELECT * from Orders;
select * from OrderDetails

Total orders per customer
** Question: Show customer name and number of orders **

select c.customername ,
count(o.customerid) as Total_orders
from Customers c
left join Orders o
on c.customerid=o.orderid
group by c.customername

** Question Total quantity sold per product **

select productname,
sum(price) 
from OrderDetails
group by productname

** Question Total revenue per order **

select o.orderid , 
sum(od.quantity * od.price) as Total_price
from orders o
join OrderDetails od
on o.orderid=od.orderid
GROUP by o.orderid

** Question Total spending per customer **

select c.customername,
sum(od.quantity * od.price) as Total_amount,
o.orderid
from Customers c
join Orders o
on c.customerid=o.customerid
join OrderDetails od
on o.orderid=od.orderid
group by c.customername

**Question Customers with more than 1 order (JOIN + HAVING) **

select c.customername,
count(o.orderid) 
from Customers c
join Orders o 
on c.customerid=o.customerid
group by c.customername
having count(o.orderid) >= 1

Interview One-Liners
WHERE → filters rows before grouping
HAVING → filters groups after grouping
JOIN first → GROUP BY later

