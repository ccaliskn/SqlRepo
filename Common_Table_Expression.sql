
/*
Common Table Expression;
Ortak tablo ifadeleri de denilebilir. Sorgular�n y�r�t�lmesi an�nda elde edilmi� olan ge�ici sonu�lard�r.
Bir veya birden �ok kez kullan�labilir. �zelliklerinden bahsedecek olursak;
Bir tablo yada view de�ildir herhangi bir vefi i�ermezler.
Daha �ok recursive i�lemlerde kullan�l�rlar.
Tablo ve view yap�lar�ndan farkl� olarak primary key, unique, not null, default vb. ifadeler desteklenmez.
Sadece SELECT i�lemlerinde de�il INSERT, UPDATE, DELETE i�lemlerinde de kullan�labilirler.
Kendi indexleri yoktur, i�eri�indeki tablolar�n indexlerini kullan�rlar.
Sadece �al��t��� sorgu blo�unda ge�erlidir.
Farkl� tablolarda bulunan bilgi i�eriklerinin birbirleriyle kar��la�t�r�lmas� gibi i�lemlerde kullan�l�rlar.
Okunurluk oaran� y�ksektir.
*/

WITH CTEProductionProductAdi (Ad) AS
(
SELECT Name AS Ad FROM Production.Product
)

SELECT * FROM CTEProductionProductAdi




SELECT Name FROM Production.Product