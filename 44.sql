use Exam;

CREATE TABLE Depozit (
	dep_hesab INT PRIMARY KEY IDENTITY(1, 1),
	dep_novu NVARCHAR(100),
	musteri_ID INT,
	dep_mebleg DECIMAL(10, 2)
);

INSERT INTO Depozit VALUES
(N'Müddətli', 1783, 2500.00),
(N'Aylıq', 2345, 500.00),
(N'Müddətli', 3457, 3000.00),
(N'Günlük', 4486, 200.00),
(N'Aylıq', 5385, 300.00),
(N'Müddətli', 2613, 1200.00),
(N'Aylıq', 3749, 980.00),
(N'Müddətli', 2098, 500.00),
(N'Günlük', 3879, 500.00),
(N'Aylıq', 2410, 1000.00);

SELECT * FROM Depozit
WHERE dep_mebleg NOT IN (1000, 500, 980);

DELETE FROM Depozit;