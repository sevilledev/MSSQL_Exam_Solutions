use Exam;

CREATE TABLE Company (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	name VARCHAR(100),
	date DATETIME DEFAULT GETDATE(),
	emp_count INT,
	profit DECIMAL(10, 2)
);

INSERT INTO Company (name, emp_count, profit) VALUES
('Birbank', 10, 250.00),
('Access', 20, 150.00),
('Google', 80, 450.00),
('Steam', 5, 150.00),
('Epic', 15, 300.00),
('Facebook', 23, 120.00),
('Apple', 10, 800.00),
('Samsung', 30, 350.00),
('Acer', 44, 500.00),
('Asus', 10, 150.00);

SELECT * FROM Company
WHERE emp_count = 10 OR profit = 150;