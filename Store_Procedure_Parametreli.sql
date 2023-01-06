use Northwind

/*
Parametre Alan Store Prosedürler ve OUTPUT Kullanımı:

Store Procedure veritabanında saklaanan yordamlardır.
Yordamlar dışarıdan parametre alabilir ve geriye değer döndürebilirler.
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
