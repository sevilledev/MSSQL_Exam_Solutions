use Exam;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2)
)

INSERT INTO Employees VALUES
('John', 'Doe', 'IT', 6000),
('Emma', 'Smith', 'HR', 4500),
('Michael', 'Brown', 'Marketing', 7000),
('Sophia', 'Taylor', 'IT', 5200),
('Daniel', 'Jones', 'HR', 4800),
('Isabella', 'Davis', 'IT', 8000),
('Olivia', 'Wilson', 'Marketing', 3500),
('James', 'Johnson', 'IT', 7500),
('Ava', 'Lee', 'Finance', 5000),
('Lucas', 'Anderson', 'Finance', 4300);


SELECT
    *,
    CASE
        WHEN Salary > 5000 THEN N'Yüksək'
        ELSE 'Orta'
    END AS SalaryCategory,
    CASE
        WHEN Department = 'IT' THEN N'Texnologiya'
        WHEN Department = 'HR' THEN N'İnsan Resursları'
        ELSE N'Digər'
    END AS HeadDepartment
FROM Employees