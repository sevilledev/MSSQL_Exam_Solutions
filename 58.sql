use Exam;

CREATE TABLE Teachers (
	ID INT PRIMARY KEY IDENTITY(1, 1),
	Name VARCHAR(100),
	Salary DECIMAL(10, 2),
	Debt DECIMAL(10, 2),
);

CREATE TABLE Subjects (
	Subject_ID INT PRIMARY KEY IDENTITY(1, 1),
	Title VARCHAR(100),
	Time TIME,
	Instructor_ID INT FOREIGN KEY REFERENCES Teachers(ID)
);

INSERT INTO Teachers VALUES
('John', 1200.00, 300.00),
('Emma', 2500.00, 800.00),
('Michael', 3000.00, 1000.00),
('Olivia', 1800.00, 600.00),
('David', 1700.00, 500.00),
('Sophia', 1600.00, 450.00),
('Daniel', 2900.00, 950.00),
('James', 1300.00, 350.00),
('Ava', 1400.00, 400.00),
('Lucas', 2100.00, 700.00);

INSERT INTO Subjects VALUES
('Programming', '08:15', 1),
('Science', '09:45', 2),
('Database', '10:30', 3),
('Math', '12:00', 4),
('Web Development', '13:20', 5),
('JavaScript', '14:05', 6),
('Math', '15:50', 7),
('Machine Learning', '16:25', 8),
('Science', '17:35', 9),
('Math', '18:10', 10);


SELECT ID, name, Salary
FROM Subjects
INNER JOIN Teachers
ON Subjects.Subject_ID = Teachers.ID
WHERE Subjects.Title = 'Math';


SELECT ID, name, Salary
FROM Teachers
WHERE ID IN (
	SELECT Instructor_ID
	FROM Subjects
	WHERE Title = 'Math'
);