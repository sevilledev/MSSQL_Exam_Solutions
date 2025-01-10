use Exam;

CREATE TABLE Customers (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	name VARCHAR(100),
	surname VARCHAR(100),
	salary DECIMAL(10, 2)
);

INSERT INTO Customers VALUES
('John', 'Smith', 2500.00),
('Emma', 'Johnson', 2550.00),
('Michael', 'Williams', 1700.00),
('Olivia', 'Brown', 1550.00),
('David', 'Jones', 5200.00),
('Sophia', 'Garcia', 2300.00),
('Daniel', 'Miller', 2850.00),
('James', 'Davis', 3000.00),
('Ava', 'Wilson', 3050.00),
('Lucas', 'Anderson', 3780.00);


-- Create View

CREATE VIEW CustomersView AS (
    SELECT * FROM Customers
    WHERE salary < 2500
);

SELECT * FROM CustomersView;


-- Create Procedure

CREATE PROCEDURE CustomersProcedure AS
BEGIN
    SELECT * FROM Customers
    WHERE salary < 2500
END

exec dbo.CustomersProcedure;


-- Create login and user

CREATE LOGIN DBA WITH PASSWORD = 'dba123!'

use Exam;
CREATE USER DBA FOR LOGIN DBA;


-- Grant user to query

GRANT SELECT ON CustomersView TO DBA;
GRANT EXECUTE ON CustomersProcedure TO DBA;