--Завдання 2. Для бази даних з першого завдання створіть тригери, які будуть вирішувати завдання нижче:
USE SportShop;

--1. У разі продажу товару, заносити інформацію про продаж в таблицю «Історія». Таблиця
-- «Історія» використовується для дубляжу інформації про всі продажі

create table HistorySalesInsert -- створюємо таблицю History
(
	Id int primary key IDENTITY,
	ProductID int FOREIGN KEY REFERENCES Product(id),
	EmployeeID int FOREIGN KEY REFERENCES Employee(id),
	CustomerID int FOREIGN KEY REFERENCES Customer(id),
	DateSales date,
--	DateSales DATETIME NOT NULL DEFAULT GETDATE(), -- запис поточної дати
);
drop table HistorySalesInsert;
alter table HistorySalesInsert
alter column DateSales date;

create trigger onSalesInsert
on Sales
after insert
as
insert into HistorySalesInsert (ProductID, EmployeeID, CustomerID, DateSales)
select ProductID, EmployeeID, CustomerID, DateSales
from inserted;

SET IDENTITY_INSERT Sales ON;
INSERT INTO Sales(Id, ProductID, EmployeeID, CustomerID, DateSales) values (251, 10, 12, 37, '2021-06-15');

delete Sales where Id = 251; -- видалення елементу таблиці по Id
delete HistorySalesInsert where Id = 1; -- видалення елементу таблиці по Id

select * from HistorySalesInsert;

--2. Якщо після продажу товару не залишилося жодної одиниці даного товару, необхідно
--перенести інформацію про повністю проданий товар в таблицю «Архів»
create table ArchivSales -- створюємо таблицю архіву ArchivSales
(
	id int primary key IDENTITY,
	NameProduct nvarchar(50),
	TypeProduct nvarchar(50),
	Cost money,
	Producer varchar(30),
	Price money,
	Note nvarchar(50) DEFAULT 'Sold Out', --стовбець "Продано" 
);

create trigger onArchivProductInsert
on Sales
after insert
as
begin
declare @countSales int

select @countSales = COUNT(S.ProductID), P.NameProduct
FROM Sales S join Product P on P.id=S.ProductID
WHERE P.id = S.ProductID 
GROUP BY P.NameProduct
if @countSales > P.Quantity
begin
	insert into ArchivSales (NameProduct, TypeProduct, Cost, Producer, Price)
select NameProduct, TypeProduct, Cost, Producer, Price
from inserted
end
end

SELECT COUNT(S.ProductID) AS [Number of Sales], P.NameProduct
FROM Sales S, Product P
WHERE P.id = S.ProductID
GROUP BY P.NameProduct



--3. Не дозволяти реєструвати вже існуючого клієнта. При вставці перевіряти наявність клієнта по ПІБ і email
alter trigger denyInsertCustumer
on Customer
instead of insert
as
begin
declare @name nvarchar(200), @lastName nvarchar(200), @email nvarchar(250)
select @name = First_Name, @lastName = Last_Name, @email = Email 
	FROM Customer 
	where Exists (SELECT * FROM Customer 
				WHERE First_Name in (select First_Name from inserted) 
					and Last_Name in (select Last_Name from inserted) 
					and Email in (select Email from inserted))
	--select @name, @lastName, @email
	if @name is not null and @lastName is not null and @email is not null
	begin
		print 'No insert'
		--rollback
	end
	else
	begin
		SET IDENTITY_INSERT Customer ON
		insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) 
		select Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription from inserted
		SET IDENTITY_INSERT Customer OFF
	end
end

select * from Customer

SET IDENTITY_INSERT Customer ON;
--insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (101, 'Rut', 'Osmondint', 'ros123650@ezineicles.com', 'Male', '876-964-7201', 16, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (105, 'Ruttfgdfer', 'Osmfdgdond', 'rdfgfdosmond0@ezinearticles.com', 'Male', '876-964-7201', 16, 1);
SET IDENTITY_INSERT Customer OFF;


--4. Заборонити видалення існуючих клієнтів
create trigger denyDeleteCustumer
on Customer
after delete
as
begin
	rollback
end

--5. Заборонити видалення співробітників, дата народження яких після 1980 року
create trigger denyDeleteEmployee
on Employee
for delete
as
begin
	declare @date_employee date
	select @date_employee = Date_Employment from deleted
	if YEAR(@date_employee) > 1980
	begin 
	print 'No delete employye'
	rollback
	end
end

delete from Employee where id=2
select * from Employee

--6. При новій покупці товару потрібно перевіряти загальну суму покупок клієнта. Якщо сума
--перевищила 50000 грн, необхідно встановити відсоток знижки в 15%

--7. Заборонити додавати товар конкретної фірми. наприклад, товар фірми «Спорт, сонце і штанга»
alter trigger denyInsertNewProduct
on Product
for insert
as
begin
declare @name_producer nvarchar(100)
select @name_producer = Producer from inserted
if @name_producer = 'Bechtelar LLC'
begin
print 'You can not add the product of the producer ' + @name_producer
rollback
end
end

SET IDENTITY_INSERT Product ON;
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (16, 'Sneakers for volleyball', 'Shoes', 129, '$18.79', 'Bechtelar LLC', '$65.99');
SET IDENTITY_INSERT Product OFF;

--8. При продажу перевіряти кількість товару в наявності. Якщо залишилася одна одиниця
--товару, необхідно внести інформацію про цей товар в таблицю «Остання Одиниця».
create trigger onLastUnitProduct
on 

