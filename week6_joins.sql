
-- =========================================
-- PLP WEEK 6: SQL JOINS AND RELATIONSHIPS
-- Database: Classic Models
-- =========================================

-- QUERY 1: Employees and Offices
-- INNER JOIN

SELECT
    e.employeeNumber,
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode,
    o.city,
    o.country
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- QUERY 2: Products and ProductLines
-- LEFT JOIN

SELECT
    p.productCode,
    p.productName,
    p.productLine,
    pl.textDescription
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- QUERY 3: Customers and Orders
-- RIGHT JOIN
-- Display the first 10 orders

SELECT
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.orderDate,
    o.status
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

