use Exam;

CREATE TABLE Depozit (
	dep_hesab INT PRIMARY KEY IDENTITY(1, 1),
	dep_novu NVARCHAR(100),
	musteri_ID INT,
	dep_mebleg DECIMAL(10, 2)
);

INSERT INTO Depozit VALUES
(N'Müddətli', 1783, 2500.00),
(N'Aylıq', 2345, 1500.00),
(N'Müddətli', 3457, 5000.00),
(N'Günlük', 4486, 200.00),
(N'Aylıq', 5385, 3000.00),
(N'Müddətli', 2613, 1200.00),
(N'Aylıq', 3749, 80.00),
(N'Müddətli', 2098, 3500.00),
(N'Günlük', 3879, 5000.00),
(N'Aylıq', 2410, 7000.00);

SELECT * FROM Depozit
WHERE dep_mebleg NOT IN (200, 5000, 80) AND dep_novu != N'Müddətli';