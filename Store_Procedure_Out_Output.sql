use Northwind

/*
Geriye Değer Döndüren Alan Store Prosedürler ve OUTPUT Kullanımı:

Store Procedure veritabanında saklaanan yordamlardır.
Yordamlar dışarıdan parametre alabilir ve geriye değer döndürebilirler.
OUT yada OUTPUT ifadesi kullanılır.
*/

--OUT Kullanımı
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



--OUTPUT Kullanımı
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

