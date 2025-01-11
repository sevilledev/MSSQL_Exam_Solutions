use Exam;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1, 1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
)

INSERT INTO Orders VALUES
(1, '2024-11-15', 250.50),
(2, '2024-09-10', 125.00),
(3, '2024-10-05', 300.75),
(3, '2024-10-25', 500.00),
(5, '2024-09-30', 75.25),
(6, '2025-01-11', 450.00),
(7, '2024-11-28', 150.00),
(9, '2025-01-10', 320.00),
(9, '2024-10-12', 200.40),
(9, '2025-01-05', 600.75);


-- 1st query

SELECT * FROM Orders
WHERE OrderDate >= DATEADD(DAY, -90, CAST(GETDATE() AS DATE));


-- 2nd query

SELECT
	DATENAME(MONTH, OrderDate) AS OrderMonth,
	SUM(TotalAmount) AS Total
FROM Orders
GROUP BY DATENAME(MONTH, OrderDate)
ORDER BY OrderMonth;