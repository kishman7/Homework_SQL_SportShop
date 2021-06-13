create database SportShop;

create table Product
(
Id int not null identity(1,1),
Name nvarchar(50) not null,
ViewProduct nvarchar(50) not null,
ProductAvailable nvarchar(50) not null,
Cost int not null,
Producer nvarchar(50) not null,
Price float not null,
);
drop table Product;
create table Sales
(
SalesId int not null identity(1,1),
Name nvarchar(50) not null,
Price float not null,
Number int not null,
DateSales 
);

