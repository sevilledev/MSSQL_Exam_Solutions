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
('BDU', '1990-01-01', 'Biology', 5),
('AZTU', '1994-04-01', 'Informatics', 4),
('ADU', '1998-01-10', 'Languages', 23);

SELECT * FROM University
WHERE Student_Count > 6 AND Name LIKE 'A%';