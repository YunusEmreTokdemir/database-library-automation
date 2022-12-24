Create database KutuphaneOtoDB

use KutuphaneOtoDB

CREATE TABLE KitapTable(
KitapID int not null primary key,
KitapAd nvarchar(50) not null,
KitapTurID int foreign key REFERENCES KitapTurTable(KitapTurID),
YazarID int foreign key REFERENCES YazarTable(YazarID),
YayinEviID int foreign key REFERENCES YayinEviTable(YayinEviID),
SayfaSayisi int not null,

);

CREATE TABLE KitapTurTable(
KitapTurID int not null primary key,
KitapTur nvarchar(50) not null,

);

CREATE TABLE YazarTable(
YazarID int not null primary key,
YazarAd nvarchar(50) not null,
YazarSoyad nvarchar(50) not null,

);    

CREATE TABLE YayinEviTable(
YayinEviID int not null primary key,
YayinEviAd nvarchar(50) not null,

);

CREATE TABLE UyeTable(
UyeID int not null primary key,
UyeAd nvarchar(50) not null,
UyeSoyad nvarchar(50) not null,
UyeAdr nvarchar(75) not null,
UyeTel nvarchar(10) not null,

);

CREATE TABLE OduncTable(
UyeID int foreign key REFERENCES UyeTable(UyeID),
KitapID int foreign key REFERENCES KitapTable(KitapID),
BasTar date not null,
TesTar date ,
SonTesTar date not null,

);

INSERT INTO KitapTurTable (KitapTurID,KitapTur) VALUES (1,'COCUK')
INSERT INTO KitapTurTable (KitapTurID,KitapTur) VALUES (2,'TIYATRO')
INSERT INTO KitapTurTable (KitapTurID,KitapTur) VALUES (3,'SIIR')
INSERT INTO KitapTurTable (KitapTurID,KitapTur) VALUES (4,'KURGU')
INSERT INTO KitapTurTable (KitapTurID,KitapTur) VALUES (5,'PSIKOLOJI')

INSERT INTO YazarTable (YazarID,YazarAd,YazarSoyad) VALUES (1,'Lewis','Carroll')
INSERT INTO YazarTable (YazarID,YazarAd,YazarSoyad) VALUES (2,'Necip Fazil','Kisakurek')
INSERT INTO YazarTable (YazarID,YazarAd,YazarSoyad) VALUES (3,'Turgut','Uyar')
INSERT INTO YazarTable (YazarID,YazarAd,YazarSoyad) VALUES (4,'Isaac','Asimov')
INSERT INTO YazarTable (YazarID,YazarAd,YazarSoyad) VALUES (5,'David','Burns')

INSERT INTO YayinEviTable (YayinEviID,YayinEviAd) VALUES (1,'Psikonet')
INSERT INTO YayinEviTable (YayinEviID,YayinEviAd) VALUES (2,'Ithaki')
INSERT INTO YayinEviTable (YayinEviID,YayinEviAd) VALUES (3,'Yapi Kredi')
INSERT INTO YayinEviTable (YayinEviID,YayinEviAd) VALUES (4,'Buyuk Dogu')
INSERT INTO YayinEviTable (YayinEviID,YayinEviAd) VALUES (5,'Is Bankasi')

INSERT INTO KitapTable (KitapID,KitapAd,KitapTurID,YazarID,YayinEviID,SayfaSayisi) VALUES (1,'Iyi Hissetmek',5,5,1,632)
INSERT INTO KitapTable (KitapID,KitapAd,KitapTurID,YazarID,YayinEviID,SayfaSayisi) VALUES (2,'Alice Harikalar Diyarinda',1,1,5,112)
INSERT INTO KitapTable (KitapID,KitapAd,KitapTurID,YazarID,YayinEviID,SayfaSayisi) VALUES (3,'Bir Adam Yaratmak',2,2,4,160)
INSERT INTO KitapTable (KitapID,KitapAd,KitapTurID,YazarID,YayinEviID,SayfaSayisi) VALUES (4,'Goge Bakma Duragı',4,3,3,112)
INSERT INTO KitapTable (KitapID,KitapAd,KitapTurID,YazarID,YayinEviID,SayfaSayisi) VALUES (5,'Ben Robot',4,4,2,450)

INSERT INTO OduncTable (UyeID,KitapID,BasTar,TesTar,SonTesTar) VALUES (1,1,'01.01.2022','02.02.2022','02.02.2022')
INSERT INTO OduncTable (UyeID,KitapID,BasTar,TesTar,SonTesTar) VALUES (2,2,'02.02.2022','03.03.2022','02.02.2022')
INSERT INTO OduncTable (UyeID,KitapID,BasTar,TesTar,SonTesTar) VALUES (3,3,'03.03.2022','04.04.2022','04.04.2022')
INSERT INTO OduncTable (UyeID,KitapID,BasTar,TesTar,SonTesTar) VALUES (4,4,'04.04.2022','05.05.2022','05.05.2022')
INSERT INTO OduncTable (UyeID,KitapID,BasTar,TesTar,SonTesTar) VALUES (5,5,'05.05.2022','06.06.2022','06.06.2022')

INSERT INTO UyeTable (UyeID,UyeAd,UyeSoyad,UyeAdr,UyeTel,Uye_bas_tar,Uye_bit_tar) 
													VALUES (1,'Busra','Gedikoglu','Konya','1111111111','01.01.2022','01.01.2023')
INSERT INTO UyeTable (UyeID,UyeAd,UyeSoyad,UyeAdr,UyeTel,Uye_bas_tar,Uye_bit_tar) 
													VALUES (2,'Melisa','Kayaalp','Samsun','2222222222','02.01.2022','02.01.2023')
INSERT INTO UyeTable (UyeID,UyeAd,UyeSoyad,UyeAdr,UyeTel,Uye_bas_tar,Uye_bit_tar) 
													VALUES (3,'Yunus Emre','Tokdemir','Hatay','3333333333','03.01.2022','03.01.2023')
INSERT INTO UyeTable (UyeID,UyeAd,UyeSoyad,UyeAdr,UyeTel,Uye_bas_tar,Uye_bit_tar) 
													VALUES (4,'Selehattin','Koseli','Konya','4444444444','04.01.2022','04.01.2023')
INSERT INTO UyeTable (UyeID,UyeAd,UyeSoyad,UyeAdr,UyeTel,Uye_bas_tar,Uye_bit_tar) 
													VALUES (5,'Ahmet','Akkeçi','Konya','5555555555','05.01.2022','05.01.2023')

Alter Table UyeTable ADD Uye_bas_tar date not null
Alter Table UyeTable ADD Uye_bit_tar date not null
