use Exam;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1, 1),
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    CategoryID INT,
    CreatedDate DATE
)

INSERT INTO Products VALUES
('Phone', 800.00, 6, '2025-01-05'),
('Keyboard', 50.00, 3, '2024-12-20'),
('Laptop', 1200.00, 10, '2024-11-15'),
('Mouse', 60.00, 3, '2025-01-01'),
('Mousepad', 25.00, 3, '2024-12-10'),
('Watch', 250.00, 11, '2025-01-08'),
('Monitor', 300.00, 7, '2024-11-30'),
('Camera', 750.00, 12, '2024-12-25'),
('Headphones', 150.00, 8, '2024-11-18'),
('Earbuds', 40.00, 8, '2024-12-29');


-- 1st query

SELECT * FROM Products
WHERE Price > 50;


-- 2nd query

SELECT ProductName, Price
FROM Products
WHERE CategoryID = 3


-- 3rd query

SELECT * FROM Products
WHERE CreatedDate >= DATEADD(DAY, -30, CAST(GETDATE() AS DATE));