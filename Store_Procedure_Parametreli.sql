use Northwind

/*
Parametre Alan Store Prosed�rler ve OUTPUT Kullan�m�:

Store Procedure veritaban�nda saklaanan yordamlard�r.
Yordamlar d��ar�dan parametre alabilir ve geriye de�er d�nd�rebilirler.
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
