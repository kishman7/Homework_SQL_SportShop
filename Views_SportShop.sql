USE SportShop;
--�������� 3. ������������� (View)
--1. �������� ����������� �������������, ������� ���������� ���������� � ���� ���������
create view vw_Employee As
select E.First_Name, E.Last_Name
from Employee E;

--2. �������� ����������� �������������, ������� ���������� ���������� � ���� �����������
create view vw_Customer As
select C.First_Name, C.Last_Name
from Customer C;

--3. �������� ����������� �������������, ������� ���������� ���������� � ���� �������� ����������� ������. ��������, �����
create view vw_ProductThis as
select P.NameProduct, P.Producer, P.Price
from Product P join Sales S on P.id=S.ProductID
where P.NameProduct = 'Balls';

select * from vw_ProductThis;

--4. �������� �������������, ������������ ��� �������������� ������
create view vw_Sales as
select P.NameProduct
from Product P join Sales S on P.id=S.ProductID;

select * from vw_Sales;

--5. �������� �������������, ������������ ���������� � ����� �������� ��������. 
-- ���������� ������ ��������� �������� �� ������������ ����� ����� ������
alter view vw_EmployeeMax as
select  NameEmployee,  SumaSales
from 
	(select top 1 E.First_Name+' '+ E.Last_Name as NameEmployee, SUM(P.Price)  as SumaSales
	from Employee E join Sales S on E.Id=S.EmployeeID join Product P on P.id=S.ProductID
	group by E.First_Name, E.Last_Name, P.Price
	order by P.Price desc) as result;

--alter view vw_EmployeeMax as
--select E.First_Name+' '+ E.Last_Name as 'Name Employee', SUM(P.Price)  as 'Suma Sales'
--from Employee E join Sales S on E.Id=S.EmployeeID join Product P on P.id=S.ProductID
--where P.Price > (select SUM(P.Price) from Product)
--group by E.First_Name, E.Last_Name
--order by SUM(P.Price);

select * from vw_EmployeeMax;
 
