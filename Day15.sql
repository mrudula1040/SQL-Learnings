-- day 15

use classicmodels;

show tables;

select * from customers;
select * from orders;
select * from orderdetails;
select * from products;
select * from productLines;

select cust.customerNumber, customerName, 
concat(contactFirstName," ",contactLastName) contactName,
ord.orderNumber, orderDate, status,
quantityOrdered, priceEach,
pr.productCode, productName, productLine,buyPrice,MSRP, 
productVendor
from customers cust
join orders ord on cust.customerNumber = ord.customerNumber
join orderdetails orddtls on ord.orderNumber = orddtls.orderNumber
join products pr on orddtls.productCode = pr.productCode;


select cust.customerNumber, customerName, 
concat(contactFirstName," ",contactLastName) contactName,
ord.orderNumber, orderDate, status,
quantityOrdered, priceEach,
pr.productCode, productName, productLine,buyPrice,MSRP, 
productVendor
from customers cust
join orders ord on cust.customerNumber = ord.customerNumber
join orderdetails orddtls on ord.orderNumber = orddtls.orderNumber
join products pr on orddtls.productCode = pr.productCode
where cust.customerNumber = 128;

select * from orders
order by orderDate desc;


-- self join
-- empNumb, empFullName,empJobTitle, manager_id, manager_name, manager_title
SELECT 
    e.employeeNumber AS empNumb,
    CONCAT(e.firstName, ' ', e.lastName) AS empFullName,
    e.jobTitle AS empJobTitle,
    m.employeeNumber AS manager_id,
    CONCAT(m.firstName, ' ', m.lastName) AS manager_name,
    m.jobTitle AS manager_title
FROM 
    employees e
LEFT JOIN 
    employees m ON e.reportsTo = m.employeeNumber;

select * from employees;