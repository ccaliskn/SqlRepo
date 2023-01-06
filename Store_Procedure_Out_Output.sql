use Northwind

/*
Geriye De�er D�nd�ren Alan Store Prosed�rler ve OUTPUT Kullan�m�:

Store Procedure veritaban�nda saklaanan yordamlard�r.
Yordamlar d��ar�dan parametre alabilir ve geriye de�er d�nd�rebilirler.
OUT yada OUTPUT ifadesi kullan�l�r.
*/

--OUT Kullan�m�
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



--OUTPUT Kullan�m�
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

