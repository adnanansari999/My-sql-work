-- Assignment-4 (Top questions on MySQL Based on Complex Data Analysis)


-- 175. Combine Two Tables
SELECT FirstName, LastName, City, State
FROM Person AS p
LEFT JOIN Address AS a
ON p.PersonId = a.PersonId;

-- 176. Second Highest Salary
SELECT IFNULL((
  SELECT DISTINCT Salary
  FROM Employee
  ORDER BY Salary DESC
  LIMIT 1 OFFSET 1
), NULL) AS SecondHighestSalary;

-- 177. Nth Highest Salary
DELIMITER //
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE M INT;
  SET M = N - 1;
  RETURN (
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET M
  );
END //
DELIMITER ;

-- 181. Employees Earning More Than Their Managers
SELECT e.Name AS Employee
FROM Employee AS e
INNER JOIN Employee AS m
ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;

-- 182. Duplicate Emails
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;

-- 183. Customers Who Never Order
SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN (
  SELECT CustomerId
  FROM Orders
);

-- 196. Delete Duplicate Emails
DELETE p1
FROM Person AS p1, Person AS p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id;

-- 197. Rising Temperature
SELECT w1.Id
FROM Weather AS w1, Weather AS w2
WHERE DATEDIFF(w1.RecordDate, w2.RecordDate) = 1
  AND w1.Temperature > w2.Temperature;
  
  -- 511. Game Play Analysis I
SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id
ORDER BY player_id;


-- 512. Game Play Analysis II
-- Find the first device each player logged in from.
SELECT player_id, device_id
FROM Activity
WHERE (player_id, event_date) IN (
  SELECT player_id, MIN(event_date)
  FROM Activity
  GROUP BY player_id
);


-- 570. Managers with at Least 5 Direct Reports
SELECT Name
FROM Employee
WHERE Id IN (
  SELECT ManagerId
  FROM Employee
  GROUP BY ManagerId
  HAVING COUNT(*) >= 5
);


-- 577. Employee Bonus
SELECT name, bonus
FROM Employee AS e
LEFT JOIN Bonus AS b ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL;


-- 584. Find Customer Referee
SELECT name
FROM customer
WHERE referee_id IS NULL OR referee_id <> 2;


-- 586. Customer Placing the Largest Number of Orders
SELECT customer_number
FROM (
  SELECT customer_number, COUNT(*) AS cnt
  FROM orders
  GROUP BY customer_number
) AS e
ORDER BY e.cnt DESC
LIMIT 1;


-- 595. Big Countries
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;


-- 596. Classes More Than 5 Students
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;


-- 603. Consecutive Available Seats
SELECT DISTINCT c2.seat_id
FROM cinema AS c1, cinema AS c2
WHERE c1.free = 1 AND c2.free = 1 AND c1.seat_id = c2.seat_id + 1
UNION
SELECT DISTINCT c1.seat_id
FROM cinema AS c1, cinema AS c2
WHERE c1.free = 1 AND c2.free = 1 AND c1.seat_id = c2.seat_id + 1
ORDER BY seat_id;


-- 607. Sales Person
-- Find salespeople who didn’t sell to company “RED”.
SELECT s.name
FROM salesperson AS s
WHERE s.sales_id NOT IN (
  SELECT o.sales_id
  FROM orders AS o
  LEFT JOIN company AS c
  ON o.com_id = c.com_id
  WHERE c.name = 'RED'
);


-- 608. Tree Node
-- Classify each node as Root, Inner, or Leaf.
SELECT
  id,
  CASE
    WHEN p_id IS NULL THEN 'Root'
    WHEN p_id IS NOT NULL AND id IN (SELECT DISTINCT p_id FROM tree) THEN 'Inner'
    ELSE 'Leaf'
  END AS Type
FROM tree;


-- 610. Triangle Judgement
-- Check if three sides form a triangle.
SELECT x, y, z,
  CASE
    WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
    ELSE 'No'
  END AS triangle
FROM triangle;


-- 619. Biggest Single Number
-- Find the largest number that appears only once.
SELECT MAX(num) AS num
FROM (
  SELECT num
  FROM my_numbers
  GROUP BY num
  HAVING COUNT(num) = 1
) AS n;


-- 620. Not Boring Movies
-- List movies with odd IDs and non-boring descriptions, sorted by rating.
SELECT id, movie, description, rating
FROM cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;


-- 627. Swap Salary
-- Swap m and f values in the sex column.
UPDATE salary
SET sex = IF(sex = 'm', 'f', 'm');


-- 1045. Customers Who Bought All Products
-- Find customers who purchased every product in the product table.
SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING SUM(DISTINCT product_key) = (
  SELECT SUM(product_key)
  FROM Product
);


-- 1050. Actors and Directors Who Cooperated At Least Three Times
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;


-- 1068. Product Sales Analysis I
-- List product names with selling year and price.
SELECT DISTINCT
  P.product_name, S.year, S.price
FROM
  (SELECT DISTINCT product_id, year, price FROM Sales) AS S
INNER JOIN
  Product AS P
USING (product_id); 


-- 1069. Product Sales Analysis II
-- Total quantity sold for each product.
SELECT product_id, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_id;

-- 1070. Product Sales Analysis III
-- Get the first year a product was sold.
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
  SELECT product_id, MIN(year)
  FROM Sales
  GROUP BY product_id
);


-- 1075. Project Employees I
-- Average experience of employees in each project.
SELECT project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project AS p
LEFT JOIN Employee AS e
ON p.employee_id = e.employee_id
GROUP BY project_id;


-- 1076. Project Employees II
-- Projects that have the most employees.
SELECT project_id
FROM Project
GROUP BY project_id
HAVING COUNT(employee_id) >= (
  SELECT COUNT(employee_id)
  FROM Project
  GROUP BY project_id
  ORDER BY COUNT(employee_id) DESC
  LIMIT 1
);


-- 1077. Project Employees III
-- Most experienced employees in each project.
SELECT p.project_id, e.employee_id
FROM Project AS p
JOIN Employee AS e
ON p.employee_id = e.employee_id
WHERE (p.project_id, e.experience_years) IN (
  SELECT project_id, MAX(experience_years)
  FROM Project AS p
  JOIN Employee AS e
  ON p.employee_id = e.employee_id
  GROUP BY project_id
);


-- 1082. Sales Analysis I
-- Find the best seller(s) by total sales amount.
SELECT seller_id
FROM Sales
GROUP BY seller_id
HAVING SUM(price) >= (
  SELECT SUM(price)
  FROM Sales
  GROUP BY seller_id
  ORDER BY SUM(price) DESC
  LIMIT 1
);


-- 1083. Sales Analysis II
-- Buyers who bought “S8” but not “iPhone”.
SELECT buyer_id
FROM Sales
JOIN Product USING (product_id)
GROUP BY buyer_id
HAVING SUM(product_name = 'S8') > 0
   AND SUM(product_name = 'iPhone') = 0;


-- 1113. Reported Posts
-- Count unique posts that were reported each day.
SELECT action_date AS report_date,
       COUNT(DISTINCT post_id) AS reported_posts
FROM Actions
WHERE action = 'report' AND extra = 'spam'
GROUP BY action_date;

-- 1126. Active Businesses
-- Find businesses that have at least one event type with an average rating ≥ 4.
SELECT business_id
FROM Events
GROUP BY business_id
HAVING MAX(
  CASE
    WHEN AVG(stars) >= 4 THEN 1
    ELSE 0
  END
) = 1;



-- 1148. Article Views I
-- List IDs of all authors who viewed their own articles.
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;


-- 1164. Product Price at a Given Date
-- Find each product’s price as of a specific date.
SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
  SELECT product_id, MAX(change_date)
  FROM Products
  WHERE change_date <= '2019-08-16'
  GROUP BY product_id
)
UNION
SELECT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (
  SELECT product_id
  FROM Products
  WHERE change_date <= '2019-08-16'
);


-- 1173. Immediate Food Delivery I
-- Find the percentage of immediate deliveries (delivery_date = order_date).
SELECT ROUND(
  SUM(order_date = customer_pref_delivery_date) / COUNT(*) * 100, 2
) AS immediate_percentage
FROM Delivery;


-- 1174. Immediate Food Delivery II
-- Find the percentage of immediate deliveries for each customer’s first order.
SELECT ROUND(
  SUM(order_date = customer_pref_delivery_date) / COUNT(*) * 100, 2
) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
  SELECT customer_id, MIN(order_date)
  FROM Delivery
  GROUP BY customer_id
);


-- 1241. Number of Comments per Post
select t.post_id, count(distinct s.sub_id) as number_of_comments
from (
select distinct sub_id as post_id
from Submissions
where parent_id is null
) as t
left join
Submissions as s
on t.post_id = s.parent_id
group by t.post_id
order by t.post_id;


-- 1251. Average Selling Price
select distinct p.product_id, round(sum(price * units) / sum(units), 2) as
average_price
from Prices as p join UnitsSold as u
on p.product_id = u.product_id and u.purchase_date between p.start_date and
p.end_date
group by p.product_id
order by p.product_id;


-- 1280. Students and Examinations
-- Write an SQL query to find the number of times each student attended each exam.
select s.student_id, s.student_name, u.subject_name, count(e.subject_name) as
attended_exams
from
Students as s join Subjects as u left join Examinations as e
on
s.student_id = e.student_id and u.subject_name = e.subject_name
group by s.student_id, u.subject_name
order by s.student_id, u.subject_name;


-- 1294. Weather Type in Each Country
-- Write an SQL query to find the type of weather in each country for November 2019. 
select
country_name,
case
when avg(weather_state) <= 15 then 'Cold'
when avg(weather_state) >= 25 then 'Hot'
else 'Warm'
end as weather_type
from
Weather as w
left join
Countries as c
on c.country_id = w.country_id
where day between '2019-11-01' and '2019-11-30'
group by w.country_id;


-- 1303. Find the Team Size
select employee_id, team_size
from Employee as e join (select team_id, count(*) as team_size from employee
group by team_id) as t
on e.team_id = t.team_id;


-- 1327. List the Products Ordered in a Period
select product_name, sum(unit) as unit
from Orders as o left join Products as p on o.product_id = p.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by o.product_id
having sum(unit) >= 100;



