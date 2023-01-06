use Northwind

/*
Parametre Alan Store Prosedürler ve OUTPUT Kullanýmý:

Store Procedure veritabanýnda saklaanan yordamlardýr.
Yordamlar dýþarýdan parametre alabilir ve geriye deðer döndürebilirler.
*/



CREATE PROC sp_CaisanlarinAdiniDogumTarihineGoreGetir
(
@yil int
)
AS
BEGIN
SELECT FirstName, LastName, BirthDate FROM Employees WHERE YEAR(BirthDate)=@yil
END

EXEC sp_CaisanlarinAdiniDogumTarihineGoreGetir @yil=1960
