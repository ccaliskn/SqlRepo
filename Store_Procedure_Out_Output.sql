use Northwind

/*
Geriye Deðer Döndüren Alan Store Prosedürler ve OUTPUT Kullanýmý:

Store Procedure veritabanýnda saklaanan yordamlardýr.
Yordamlar dýþarýdan parametre alabilir ve geriye deðer döndürebilirler.
OUT yada OUTPUT ifadesi kullanýlýr.
*/

--OUT Kullanýmý
CREATE PROC sp_KategoriIdyeGoreToplamMiktariGetir
(
@CatID INT, 
@toplamMiktar INT OUT
)
AS
BEGIN
SELECT @toplamMiktar=SUM(UnitsInStock) FROM Products WHERE CategoryID=@CatID
END

DECLARE @miktar INT
EXEC sp_KategoriIdyrGoreToplamMiktariGetir @CatID=1, @toplamMiktar=@miktar OUT
SELECT @miktar



--OUTPUT Kullanýmý
CREATE PROC sp_KategoriIdyrGoreToplamMiktariGetir
(
@CatID INT, 
@toplamMiktar INT OUTPUT
)
AS
BEGIN
SELECT @toplamMiktar=SUM(UnitsInStock) FROM Products WHERE CategoryID=@CatID
END

DECLARE @miktar INT
EXEC sp_KategoriIdyrGoreToplamMiktariGetir @CatID=1, @toplamMiktar=@miktar OUTPUT
SELECT @miktar

