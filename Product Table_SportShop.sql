create table Product -- таблиц€ товар≥в
(
	id int primary key IDENTITY,
	NameProduct nvarchar(50),
	TypeProduct nvarchar(50),
	Quantity numeric,
	Cost money,
	Producer varchar(30),
	Price money,
);
DROP TABLE Product;
SET IDENTITY_INSERT Product ON;

insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (1, 'Winter sneakers', 'Shoes', 129, '$18.79', 'Bechtelar LLC', '$65.99');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (2, 'Summer sneakers', 'Shoes', 40, '$16.90', 'Brown and Sons', '$81.70');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (3, 'Running shoes', 'Shoes', 79, '$7.23', 'Koss-Bechtelar', '$90.40');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (4, 'Sneakers for football', 'Shoes', 165, '$13.94', 'Schroeder, Casper and Terry', '$61.36');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (5, 'Sneakers for basketball', 'Shoes', 148, '$10.71', 'Sporer-Beier', '$93.60');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (6, 'T-shirts', 'Clothing', 177, '$19.54', 'Goodwin, Shanahan and Treutel', '$70.87');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (7, 'Costumes', 'Clothing', 52, '$18.35', 'Pfeffer, Mante and Batz', '$67.76');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (8, 'Shorts', 'Clothing', 122, '$11.41', 'McGlynn and Sons', '$66.16');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (9, 'Trousers', 'Clothing', 56, '$5.76', 'Prohaska-Turner', '$81.11');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (10, 'Mothers', 'Clothing', 137, '$9.75', 'Macejkovic and Sons', '$78.91');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (11, 'Jackets', 'Clothing', 78, '$13.78', 'Barrows-O''Hara', '$53.48');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (12, 'Skiing', 'Sports equipment', 103, '$5.15', 'Cummings-Osinski', '$28.14');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (13, 'Skates', 'Sports equipment', 100, '$8.86', 'Hirthe and Sons', '$76.84');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (14, 'Balls', 'Sports equipment', 189, '$13.78', 'Rau and Sons', '$79.88');
insert into Product (id, NameProduct, TypeProduct, Quantity, Cost, Producer, Price) values (15, 'Boxing gloves', 'Sports equipment', 187, '$14.99', 'Roberts-Kassulke', '$48.66');
