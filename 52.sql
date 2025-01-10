use Exam;

CREATE TABLE Customers (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	name VARCHAR(100),
	surname VARCHAR(100),
	birthday DATE,
	salary DECIMAL(10, 2)
);

INSERT INTO Customers VALUES
('John', 'Smith', '1990-03-15', 2500.00),
('Emma', 'Johnson', '1995-07-22', 2550.00),
('Michael', 'Williams', '1988-12-10', 1700.00),
('Olivia', 'Brown', '2000-05-05', 1550.00),
('David', 'Jones', '1975-08-18', 5200.00),
('Sophia', 'Garcia', '1992-11-25', 2300.00),
('Daniel', 'Miller', '1998-01-30', 2850.00),
('James', 'Davis', '1973-09-12', 3000.00),
('Ava', 'Wilson', '1990-06-19', 3050.00),
('Lucas', 'Anderson', '1967-02-28', 3780.00);

SELECT * FROM Customers
WHERE YEAR(birthday) < 1980;

DELETE FROM Customers;