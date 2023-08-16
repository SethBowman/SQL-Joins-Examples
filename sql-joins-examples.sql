-- INNER JOIN, Products is the left table and Sales is the right table.
-- We will only see products sold

SELECT * FROM Products AS p
INNER JOIN Sales as s
ON p.ProductID = s.ProductID;

-- LEFT JOIN, since Products is the left table we will see all products, but we may see null values if the product wasn't sold

SELECT * FROM Products as p
LEFT JOIN Sales as s
ON p.ProductID = s.ProductID;

-- INNER JOIN, Employees is the left able and Sales is the right table.
-- We will only see employees who have sold things

SELECT * FROM Employees AS e
INNER JOIN Sales as s 
ON e.EmployeeID = s.EmployeeID;

-- LEFT JOIN, Since employees is the left table we will see all employees even if they didn't sell anything
-- null values will appear on the right table (Sales) if that employee didn't make a sale

SELECT * FROM Employees AS e
LEFT JOIN Sales as s 
ON e.EmployeeID = s.EmployeeID;

-- You can use multiple joins
-- Using this shows what employee sold what product and how much it costs

SELECT p.Name AS "Product Sold", p.Price, s.Quantity AS "Amount Sold", e.FirstName, e.LastName
FROM Products AS p
INNER JOIN Sales AS s on p.ProductID = s.ProductID
INNER JOIN Employees AS e on s.EmployeeID = e.EmployeeID;
