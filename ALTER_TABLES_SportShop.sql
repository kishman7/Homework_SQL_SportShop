USE SportShop
--Зміна структури таблиць
--1. Додайте до вже існуючої таблиці з інформацією по клієнтах стовпець що зберігатиме інформацію, чи являється клієнт VIP.
alter table Customer
add VIP bit;

--2. Додайте до вже існуючої таблиці з інформацією про товари стовпець для збереження відсотків знижки.
alter table Product
add Discount int;

--3. Змініть в уже існуючій таблиці з інформацією про товари розмір поля, який зберігає назву товару
ALTER TABLE Product
ALTER COLUMN NameProduct NVARCHAR(100);

--4. Видаліть з уже існуючої таблиці з інформацією про товари стовпець з відсотками знижки
alter table Product
DROP COLUMN Discount;

--5. Видаліть зв'язок між таблицями продажі та співробітники.
ALTER TABLE Sales
DROP FK__Sales__EmployeeI__05D8E0BE;

--6. Додайте зв'язок між таблицями продажі і співробітники.
ALTER TABLE Sales
ADD FOREIGN KEY(EmployeeID) REFERENCES Employee(Id);


