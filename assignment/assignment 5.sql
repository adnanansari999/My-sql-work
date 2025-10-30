/* Top 5 customers with the highest total order amount

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date, order_amount)
*/
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.order_amount) AS total_amount
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.customer_name
ORDER BY 
    total_amount DESC
LIMIT 5;


/*Customers who placed orders in the past 30 days

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
*/
SELECT DISTINCT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
WHERE 
    o.order_date >= CURRENT_DATE - INTERVAL 30 DAY;
    
    
/*Products ordered at least three times

Dataset:
Products(product_id, product_name)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    p.product_id,
    p.product_name,
    COUNT(oi.order_id) AS order_count
FROM 
    Products p
JOIN 
    Order_Items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id, p.product_name
HAVING 
    COUNT(oi.order_id) >= 3;


/*Orders from customers in a specific city

Dataset:
Customers(customer_id, customer_name, city)
Orders(order_id, customer_id, order_date)
Order_Details(order_id, product_id, quantity)
*/
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.city,
    od.product_id,
    od.quantity
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Details od ON o.order_id = od.order_id
WHERE 
    c.city = 'Delhi';   
    
    
/*Customers who ordered products costing more than $100

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
Products(product_id, product_name, price)
Order_Details(order_id, product_id, quantity)
*/
SELECT DISTINCT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Details od ON o.order_id = od.order_id
JOIN 
    Products p ON od.product_id = p.product_id
WHERE 
    p.price > 100;



/*Get the average order amount for each customer

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date, order_amount)
*/
SELECT 
    c.customer_id,
    c.customer_name,
    AVG(o.order_amount) AS average_order_amount
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.customer_name;
    
    
/*Find the products that have never been ordered

Dataset:
Products(product_id, product_name)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    p.product_id,
    p.product_name
FROM 
    Products p
LEFT JOIN 
    Order_Items oi ON p.product_id = oi.product_id
WHERE 
    oi.product_id IS NULL;
    
    
/*Customers who placed orders on weekends (Saturday or Sunday)

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
*/
SELECT DISTINCT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
WHERE 
    DAYOFWEEK(o.order_date) IN (1, 7);
    
    
/*Customers who ordered more than two different products

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_id, c.customer_name
HAVING 
    COUNT(DISTINCT oi.product_id) > 2;
    
    
    
    
/*Retrieve the order details along with the customer name and product name for each order

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    oi.quantity
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
JOIN 
    Products p ON oi.product_id = p.product_id;
    
    
    
/*Find the products and their corresponding suppliers' names

Dataset:
Products(product_id, product_name, supplier_id)
Suppliers(supplier_id, supplier_name)
*/
SELECT 
    p.product_id,
    p.product_name,
    s.supplier_name
FROM 
    Products p
JOIN 
    Suppliers s ON p.supplier_id = s.supplier_id;
    
    
/*Get a list of customers who have never placed an order

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id)
*/
SELECT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.customer_id = o.customer_id
WHERE 
    o.order_id IS NULL;
    
    
/*Retrieve the names of customers along with the total quantity of products they ordered

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity) AS total_quantity
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_id, c.customer_name;
    
    
    
/*let the total order amount for each customer, including those who have not placed any orders

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_amount)
*/
SELECT 
    c.customer_id,
    c.customer_name,
    COALESCE(SUM(o.order_amount), 0) AS total_amount
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.customer_name;
    
    
    
/*Retrieve the order details for orders placed by customers with a specific occupation

Dataset:
Customers(customer_id, customer_name, occupation)
Orders(order_id, customer_id, order_date)
Order_Items(order_id, product_id, quantity)
*/
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.occupation,
    p.product_name,
    oi.quantity
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
JOIN 
    Products p ON oi.product_id = p.product_id
WHERE 
    c.occupation = 'Engineer'; 
    
    
    
/*Find the customers who have placed orders for products with a price higher than the average price of all products

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id, order_date)
Products(product_id, product_name, price)
Order_Items(order_id, product_id, quantity)
*/
SELECT DISTINCT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
JOIN 
    Products p ON oi.product_id = p.product_id
WHERE 
    p.price > (SELECT AVG(price) FROM Products);
    
    
    
/*Retrieve the names of customers along with the total number of orders they have placed

Dataset:
Customers(customer_id, customer_name)
Orders(order_id, customer_id)
*/
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.customer_name;


/* Get a list of products and the total quantity ordered for each product

Dataset:
Products(product_id, product_name)
Order_Items(order_id, product_id, quantity)
*/ 
SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_ordered
FROM 
    Products p
LEFT JOIN 
    Order_Items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id, p.product_name;
    
    
    
   --  Retrieve all customers with names starting with 'A' and ending with 'n'
-- Dataset: Customers(customer_id, customer_name)

SELECT 
    customer_id,
    customer_name
FROM 
    Customers
WHERE 
    customer_name LIKE 'A%n';
    
    
-- Find the products with names containing at least one digit
-- Dataset: Products(product_id, product_name)

SELECT 
    product_id,
    product_name
FROM 
    Products
WHERE 
    product_name REGEXP '[0-9]'; 
    
    
-- Get the list of employees sorted by their salary in ascending order. NULL values should appear at the end
-- Dataset: Employees(employee_id, employee_name, salary)

SELECT 
    employee_id,
    employee_name,
    salary
FROM 
    Employees
ORDER BY 
    salary ASC NULLS LAST;
    
    
-- Retrieve customers whose names contain exactly five characters
-- Dataset: Customers(customer_id, customer_name)

SELECT 
    customer_id,
    customer_name
FROM 
    Customers
WHERE 
    customer_name LIKE '_____';
    
    
-- Find products with names starting with 'S' and ending with 'e'
-- Dataset: Products(product_id, product_name)

SELECT 
    product_id,
    product_name
FROM 
    Products
WHERE 
    product_name LIKE 'S%e';
    
    
-- Get the list of employees sorted by last name, then first name
-- Dataset: Employees(employee_id, first_name, last_name, salary)

SELECT 
    employee_id,
    first_name,
    last_name,
    salary
FROM 
    Employees
ORDER BY 
    last_name ASC,
    first_name ASC;


-- Retrieve the orders placed on a specific date and sort them by customer name
-- Dataset: Orders(order_id, order_date, customer_id)

SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
WHERE 
    o.order_date = '2025-10-25'   -- Replace with desired date
ORDER BY 
    c.customer_name ASC;
    
    
-- Get employees sorted by salary in descending order (NULL first)
-- Dataset: Employees(employee_id, employee_name, salary)
SELECT 
    employee_id,
    employee_name,
    salary
FROM 
    Employees
ORDER BY 
    salary IS NOT NULL, salary DESC;
    
    
-- Retrieve customers whose names contain a space character
-- Dataset: Customers(customer_id, customer_name)
SELECT 
    customer_id,
    customer_name
FROM 
    Customers
WHERE 
    customer_name LIKE '% %';
    
    
    