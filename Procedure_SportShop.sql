use SportShop;
-- ������� ������� �������� ���������
-- 1. ��������� �������� ����� ���������� ��� �� ������
create proc sp_Product as
begin
select P.NameProduct
from Product P
end

exec sp_Product

-- 2. ��������� ������ ����� ���������� ��� ����� ����������� ����. ��� ������ ���������� � ����� ���������. ���������, ���� � �����
-- ��������� ������� ������, ������� �������� ��� ������, ��� � � ��������
create proc sp_ProductInStock as
declare @typeProduct NVARCHAR(20)
set @typeProduct = 'Shoes'
begin
select P.NameProduct, P.TypeProduct
from Product P
where P.TypeProduct = @typeProduct
end

exec sp_ProductInStock;

--3. ��������� ������ ���-3 ����� �������� �볺���. ���-3 ����������� �� ����� ��������� (� ��� ���� ���� ���������)
create proc sp_OldCustomer as
begin
select C.First_Name, C.Last_Name
from Customer C
end

exec sp_OldCustomer;

-- 4. ��������� ������ ���������� �� ������ �������� ��������. �������� ����������� �� ��������� ����� ������� �� ���� ���
create proc sp_BestEmployee as
begin
select top 1 E.First_Name, E.Last_Name, SUM(P.Price) as SumaSales
from  Employee E join Sales S on E.Id=S.EmployeeID join Product P on P.id=S.ProductID
group by E.First_Name, E.Last_Name
order by SumaSales desc
end

exec sp_BestEmployee;

--5. ��������� �������� �� � ��� ���� ����� ����������� ��������� � ��������. ����� ��������� ���������� �� ��������. �� ���������
--������ ��������� ��������� ������� ��������� yes � ���� �������, ���� ����� �, � no, ���� ������ ����
alter proc sp_ProductInProducer as
declare @producer NVARCHAR(50)
set @producer = 'Sporer-Beier'
declare @yes NVARCHAR(10) = 'yes'
declare @no NVARCHAR(10) = 'no'
begin
select @producer
from Product P join Sales S on P.id=S.ProductID
if P.Producer = @producer
print @yes
else
print @no
end

exec sp_ProductInProducer;

-- 6. ��������� �������� ���������� ��� ��������������� ��������� ����� ��������.
-- ����������� ����� �������� ����������� �� ��������� ����� �������
create proc sp_BestCustomer as
begin
select top 1 C.First_Name, C.Last_Name, SUM(P.Price) as SumaCustomer
from Customer C join Sales S on C.id=S.ProductID join Product P on P.id=S.ProductID
group by C.First_Name, C.Last_Name
order by SumaCustomer desc
end

exec sp_BestCustomer;

-- 7. ��������� ������� ��� �볺���, ������������� ���� ��������� ����.
-- ���� ���������� � ����� ���������. ��������� ������� ������� ��������� ������.



