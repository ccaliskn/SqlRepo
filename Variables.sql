use AdventureWorks2017

--Variables
DECLARE @sayi1 INT = 12;
DECLARE @sayi2 INT = 13;
DECLARE @toplam INT = @sayi1 + @sayi2;
SELECT @toplam;

-- Assigning a value to a variable with SET
DECLARE @price MONEY;
DECLARE @kdv MONEY;
DECLARE @amount MONEY;
DECLARE @total MONEY;

SET @price = 150;
SET @kdv = 0.18;
SET @amount=@price*@kdv;
SET @total=@price+@amount;
SELECT @total;

DECLARE @highestPrice MONEY;
SET @highestPrice=(SELECT MAX(ListPrice) FROM Production.Product);
SELECT @highestPrice AS 'Highest Price'

--assigning a value to a variable with SELECT
DECLARE @highestPrice MONEY;
SELECT @highestPrice=MAX(ListPrice) FROM Production.Product
SELECT @highestPrice AS 'Highest Price'