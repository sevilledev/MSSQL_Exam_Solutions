use Exam;

CREATE TABLE Authors (
	A_ID INT PRIMARY KEY IDENTITY(1, 1),
	A_name VARCHAR(100)
);

CREATE TABLE Books (
	B_ID INT PRIMARY KEY IDENTITY(1, 1),
	B_name VARCHAR(100),
	B_date DATE,
	B_price DECIMAL(10, 2),
	B_quantity INT,
	B_sell_quantity INT,
	A_ID INT FOREIGN KEY REFERENCES Authors(A_ID)
);

INSERT INTO Authors VALUES
('John'),
('Emma'),
('Michael'),
('Olivia'),
('David'),
('Sophia'),
('Daniel'),
('James'),
('Ava'),
('Lucas');

INSERT INTO Books VALUES
('Programming Basics', '2000-01-01', 20.00, 100, 50, 1),
('Computer Science', '2001-11-19', 25.00, 250, 74, 2),
('Database Design', '2020-06-20', 34.00, 150, 65, 3),
('SQL Server', '2010-01-06', 35.00, 80, 45, 4),
('Web Development', '2007-06-15', 18.00, 210, 130, 5),
('JavaScript', '2013-02-11', 18.00, 280, 98, 6),
('Math', '2014-07-05', 22.00, 130, 65, 4),
('Machine Learning', '2014-12-25', 54.00, 50, 30, 8),
('Informatics', '2017-05-15', 48.00, 70, 35, 9),
('Python', '2018-10-10', 40.00, 60, 25, 10);

SELECT
	A_name,
	SUM(B_sell_quantity) AS total_sold_books
FROM Books
INNER JOIN Authors
ON Books.A_ID = Authors.A_ID
GROUP BY Authors.A_name;