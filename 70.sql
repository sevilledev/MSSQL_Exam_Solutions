use Exam;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Salary DECIMAL(10, 2)
)

INSERT INTO Employees VALUES
('John', 'Doe', 6000),
('Emma', 'Smith', 4500),
('Michael', 'Brown', 7000),
('Sophia', 'Taylor', 5200),
('Daniel', 'Jones', 4800),
('Isabella', 'Davis', 8000),
('Olivia', 'Wilson', 3500),
('James', 'Johnson', 7500),
('Ava', 'Lee', 5000),
('Lucas', 'Anderson', 4300);


SELECT * FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);