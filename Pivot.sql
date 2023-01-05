use myFirstDB
/*
SQL'de Pivot Kullanýmý;

Alt alta sýralamalarý yan yana göstermek için kullanýlýr.
Raporlama iþlemlerinde ihtiyaç duyulabilir.
*/

CREATE Table Reps(
	id INT PRIMARY KEY IDENTITY(1,1),
	repName NVARCHAR (100),
	soldProduct NVARCHAR (100),
	soldAmount INT,
	soldMonth NVARCHAR (20)
)

SELECT * FROM dbo.Reps

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Hakan',
	N'Masserati',
	23,
	N'Ocak'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Selin',
	N'Mercedes',
	29,
	N'Mart'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Ceyda',
	N'Audi',
	33,
	N'Þubat'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Samet',
	N'VolksWaagen',
	63,
	N'Þubat'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Zehra',
	N'BMV',
	40,
	N'Þubat'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Zehra',
	N'Mercedes',
	40,
	N'Ocak'
)

INSERT INTO dbo.Reps
(
	repName,
	soldProduct,
	soldAmount,
	soldMonth
)
VALUES
(
	N'Ceyda',
	N'Skoda',
	33,
	N'Mart'
)

SELECT * FROM (
SELECT repName AS SaticiAdi, soldMonth, SUM(soldAmount) As ToplamMiktar FROM dbo.Reps
GROUP BY soldMonth, repName) AS Saticilar
PIVOT (
SUM(ToplamMiktar) FOR soldMonth IN ([Ocak],[Þubat] )
) AS r

SELECT repName AS SaticiAdi, soldMonth, SUM(soldAmount) As ToplamMiktar FROM dbo.Reps
GROUP BY soldMonth, repName