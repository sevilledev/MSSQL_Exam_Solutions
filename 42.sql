use Exam;


CREATE TABLE University (
	ID INT PRIMARY KEY IDENTITY(1,1), /* IDENTITY -> to increase ID automatically */
	Name VARCHAR(100),
	Date DATE,
	Faculty VARCHAR(100),
	Student_Count INT
);


INSERT INTO University VALUES
('BDU', '1990-01-01', 'Math', 10),
('BDU', '1990-01-01', 'Computer Science', 18),
('BDU', '1990-01-01', 'Biology', 5);


SELECT * FROM University
WHERE Student_Count > 5;