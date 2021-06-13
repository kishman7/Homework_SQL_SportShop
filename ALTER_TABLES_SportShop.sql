USE SportShop
--���� ��������� �������
--1. ������� �� ��� ������� ������� � ����������� �� �볺���� �������� �� ���������� ����������, �� ��������� �볺�� VIP.
alter table Customer
add VIP bit;

--2. ������� �� ��� ������� ������� � ����������� ��� ������ �������� ��� ���������� ������� ������.
alter table Product
add Discount int;

--3. ����� � ��� �������� ������� � ����������� ��� ������ ����� ����, ���� ������ ����� ������
ALTER TABLE Product
ALTER COLUMN NameProduct NVARCHAR(100);

--4. ������� � ��� ������� ������� � ����������� ��� ������ �������� � ��������� ������
alter table Product
DROP COLUMN Discount;

--5. ������� ��'���� �� ��������� ������ �� �����������.
ALTER TABLE Sales
DROP FK__Sales__EmployeeI__05D8E0BE;

--6. ������� ��'���� �� ��������� ������ � �����������.
ALTER TABLE Sales
ADD FOREIGN KEY(EmployeeID) REFERENCES Employee(Id);


