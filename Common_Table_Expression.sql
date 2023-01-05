
/*
Common Table Expression;
Ortak tablo ifadeleri de denilebilir. Sorgularýn yürütülmesi anýnda elde edilmiþ olan geçici sonuçlardýr.
Bir veya birden çok kez kullanýlabilir. Özelliklerinden bahsedecek olursak;
Bir tablo yada view deðildir herhangi bir vefi içermezler.
Daha çok recursive iþlemlerde kullanýlýrlar.
Tablo ve view yapýlarýndan farklý olarak primary key, unique, not null, default vb. ifadeler desteklenmez.
Sadece SELECT iþlemlerinde deðil INSERT, UPDATE, DELETE iþlemlerinde de kullanýlabilirler.
Kendi indexleri yoktur, içeriðindeki tablolarýn indexlerini kullanýrlar.
Sadece çalýþtýðý sorgu bloðunda geçerlidir.
Farklý tablolarda bulunan bilgi içeriklerinin birbirleriyle karþýlaþtýrýlmasý gibi iþlemlerde kullanýlýrlar.
Okunurluk oaraný yüksektir.
*/

WITH CTEProductionProductAdi (Ad) AS
(
SELECT Name AS Ad FROM Production.Product
)

SELECT * FROM CTEProductionProductAdi




SELECT Name FROM Production.Product