use Northwind

/*
SQL Server'da PArametre Almayan Stored prosudürler:
Veritabaný üzerinde saklanan yordamlardýr.
Yordamlar dýþarýdan parametre alabilir ve geriye veri veya bilgi gönderebilirler.
*/

CREATE PROCEDURE sp_Kategoriler_List
AS
BEGIN
	SELECT DISTINCT CategoryName FROM Categories
END

EXEC dbo.sp_Kategoriler_List


CREATE PROCEDURE sp_Urunler_List
AS
BEGIN
	SELECT DISTINCT ProductName FROM Products
END

EXEC dbo.sp_Urunler_List
