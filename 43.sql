use Exam;

CREATE TABLE Customers (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	name VARCHAR(100),
	surname VARCHAR(100),
	birthday DATE,
	salary DECIMAL(10, 2)
);

INSERT INTO Customers VALUES
('John', 'Smith', '1990-03-15', 250.00),
('Emma', 'Johnson', '1995-07-22', 550.00),
('Michael', 'Williams', '1988-12-10', 700.00),
('Olivia', 'Brown', '2000-05-05', 550.00),
('David', 'Jones', '1985-08-18', 1500.00),
('Sophia', 'Garcia', '1992-11-25', 300.00),
('Daniel', 'Miller', '1998-01-30', 850.00),
('James', 'Davis', '1993-09-12', 1000.00),
('Ava', 'Wilson', '1990-06-19', 600.00),
('Lucas', 'Anderson', '1987-02-28', 780.00);

SELECT * FROM Customers
WHERE salary BETWEEN 200 AND 800;