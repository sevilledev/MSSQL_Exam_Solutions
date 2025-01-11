use Exam;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1, 1),
    CustomerName VARCHAR(100),
    Email VARCHAR(100)
)

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1, 1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
)

INSERT INTO Customers VALUES
('John', 'john@gmail.com'),
('Emma', 'emma@gmail.com'),
('Michael', 'michael@gmail.com'),
('Olivia', 'olivia@gmail.com'),
('David', 'david@gmail.com'),
('Sophia', 'sophia@gmail.com'),
('Daniel', 'daniel@gmail.com'),
('James', 'james@gmail.com'),
('Ava', 'ava@gmail.com'),
('Lucas', 'lucas@gmail.com');

INSERT INTO Orders VALUES
(1, '2025-01-01', 250.50),
(2, '2025-01-05', 125.00),
(3, '2024-12-20', 300.75),
(3, '2024-12-25', 500.00),
(5, '2024-12-30', 75.25),
(6, '2025-01-10', 450.00),
(7, '2024-11-28', 150.00),
(9, '2024-12-15', 320.00),
(9, '2024-12-22', 200.40),
(9, '2025-01-08', 600.75);


-- 1st query

SELECT * FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;


-- 2nd query

SELECT * FROM Customers
WHERE CustomerID NOT IN (
	SELECT CustomerID
	FROM Orders
);