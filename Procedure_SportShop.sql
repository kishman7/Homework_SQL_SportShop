use SportShop;
-- Створіть наступні збережені процедури
-- 1. Процедура відображає повну інформацію про всі товари
create proc sp_Product as
begin
select P.NameProduct
from Product P
end

exec sp_Product

-- 2. Процедура показує повну інформацію про товар конкретного виду. Вид товару передається в якості параметра. Наприклад, якщо в якості
-- параметра вказано взуття, потрібно показати все взуття, яке є в наявності
create proc sp_ProductInStock as
declare @typeProduct NVARCHAR(20)
set @typeProduct = 'Shoes'
begin
select P.NameProduct, P.TypeProduct
from Product P
where P.TypeProduct = @typeProduct
end

exec sp_ProductInStock;

--3. Процедура показує топ-3 самих “старих” клієнтів. Топ-3 визначається за датою реєстрації (в нас немає дати реєстрації)
create proc sp_OldCustomer as
begin
select C.First_Name, C.Last_Name
from Customer C
end

exec sp_OldCustomer;

-- 4. Процедура показує інформацію по самому успішному продавцю. Успішність визначається за загальною сумою продажів за весь час
create proc sp_BestEmployee as
begin
select top 1 E.First_Name, E.Last_Name, SUM(P.Price) as SumaSales
from  Employee E join Sales S on E.Id=S.EmployeeID join Product P on P.id=S.ProductID
group by E.First_Name, E.Last_Name
order by SumaSales desc
end

exec sp_BestEmployee;

--5. Процедура перевіряє чи є хоч один товар зазначеного виробника в наявності. Назва виробника передається як параметр. За підсумками
--роботи збережена процедура повинна повернути yes в тому випадку, якщо товар є, і no, якщо товару немає
alter proc sp_ProductInProducer as
declare @producer NVARCHAR(50)
set @producer = 'Brown and Sons'
declare @yes NVARCHAR(10) = 'yes'
declare @no NVARCHAR(10) = 'no'
begin
select @producer = P.Producer
from Product P join Sales S on P.id=S.ProductID
WHERE EXISTS (select P.Producer from Product where P.Producer = @producer)
--select @producer
--if Len(@producer) > 0
if @producer is not null
begin
print @yes
end
else
begin
print @no
end
end

--alter proc sp_ProductInProducer as
--declare @producer NVARCHAR(50)
--set @producer = 'Sporer-Beier'
--declare @yes NVARCHAR(10) = 'yes'
--declare @no NVARCHAR(10) = 'no'
--begin
--select @producer
--from Product P join Sales S on P.id=S.ProductID
--if P.Product = @producer
--print @yes
--else
--print @no
--end

exec sp_ProductInProducer;

-- 6. Процедура відображає інформацію про найпопулярнішого виробника серед покупців.
-- Популярність серед покупців визначається за загальною сумою продажів
create proc sp_BestCustomer as
begin
select top 1 C.First_Name, C.Last_Name, SUM(P.Price) as SumaCustomer
from Customer C join Sales S on C.id=S.ProductID join Product P on P.id=S.ProductID
group by C.First_Name, C.Last_Name
order by SumaCustomer desc
end

exec sp_BestCustomer;

-- 7. Процедура видаляє всіх клієнтів, старших після зазначеної дати.
-- Дата передається в якості параметра. Процедура повертає кількість вилучених записів.
create proc sp_EmployeeDeleteDateBithday as
declare @date_delete int
set @date_delete = 1970
begin
delete from Employee
where YEAR(Date_Employment) < @date_delete
select @@rowcount as CountDelete -- підаховує кількість видалених рядків
end

exec sp_EmployeeDeleteDateBithday;
select * from Employee;

create proc sp_EmployeeDelete as
declare @name_delete nvarchar(50)
set @name_delete = 'Dik'
begin
delete from Employee
where Employee.First_Name = @name_delete
end

exec sp_EmployeeDelete;

