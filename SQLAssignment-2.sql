create database ExerciseDb

use ExerciseDb
create table CompanyInfo
(CId int primary key,
CName nvarchar(50) not null)

insert into CompanyInfo values (1,'samsung'),(2,'HP'),(3,'Apple'),
(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

select * from CompanyInfo

create table ProductInfo
(PId int primary key identity(101,1),
PName nvarchar(50) not null,
PPrice float,
PMDate DATE,
CId INT FOREIGN KEY (CId) REFERENCES CompanyInfo(CId))

INSERT INTO ProductInfo (PName, PPrice, PMDate, CId)
VALUES
('Laptop', 55000.90, '2023-12-12', 1),
('Laptop', 35000.90, '2012-12-12', 2),
('Mobile', 15000.90, '2012-12-03', 2),
('Laptop', 135000.90, '2012-12-12', 3),
('Mobile', 65000.90, '2012-12-12', 3),
('Laptop', 35000.90, '2012-12-12', 5),
('Mobile', 35000.90, '2012-12-01', 5),
('Earpod', 1000.90, '2022-12-01', 3),
('Laptop', 85000.90, '2021-12-12', 6),
('Mobile', 55000.70, '2020-12-12', 1)
select * from ProductInfo

--query -1
SELECT CompanyInfo.CName, ProductInfo.* FROM CompanyInfo
full outer JOIN ProductInfo ON CompanyInfo.CId = ProductInfo.CId;

--query -2
SELECT CompanyInfo.CName, ProductInfo.PName FROM CompanyInfo
right outer JOIN ProductInfo ON CompanyInfo.CId = ProductInfo.CId;

--query -3
SELECT * from CompanyInfo cross join ProductInfo



