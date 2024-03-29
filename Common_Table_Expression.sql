
/*
Common Table Expression;
Ortak tablo ifadeleri de denilebilir. Sorguların yürütülmesi anında elde edilmiş olan geçici sonuçlardır.
Bir veya birden çok kez kullanılabilir. Özelliklerinden bahsedecek olursak;
Bir tablo yada view değildir herhangi bir vefi içermezler.
Daha çok recursive işlemlerde kullanılırlar.
Tablo ve view yapılarından farklı olarak primary key, unique, not null, default vb. ifadeler desteklenmez.
Sadece SELECT işlemlerinde değil INSERT, UPDATE, DELETE işlemlerinde de kullanılabilirler.
Kendi indexleri yoktur, içeriğindeki tabloların indexlerini kullanırlar.
Sadece çalıştığı sorgu bloğunda geçerlidir.
Farklı tablolarda bulunan bilgi içeriklerinin birbirleriyle karşılaştırılması gibi işlemlerde kullanılırlar.
Okunurluk oaranı yüksektir.
*/

WITH CTEProductionProductAdi (Ad) AS
(
SELECT Name AS Ad FROM Production.Product
)

SELECT * FROM CTEProductionProductAdi




SELECT Name FROM Production.Product