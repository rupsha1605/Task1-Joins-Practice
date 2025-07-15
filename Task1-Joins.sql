-- Create Tables

CREATE TABLE Customers_1 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Orders_1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

-- Insert Data

INSERT INTO Customers VALUES (01, 'Arya', 'India'), (02, 'Bob', 'USA'), (03, 'Charlie', 'UK');
INSERT INTO Orders VALUES (100, 1, '2023-01-10'), (101, 2, '2023-02-15'), (102, 4, '2023-03-01');

-- INNER JOIN

SELECT Customers.CustomerName, Orders.OrderID FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN

SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN

SELECT Customers.CustomerName, Orders.OrderID FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN (using UNION)

SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID UNION SELECT Customers.CustomerName, 
Orders.OrderID FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
