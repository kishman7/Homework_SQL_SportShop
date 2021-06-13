create table Employee -- таблиці працівників
(
	Id int primary key IDENTITY,
	First_Name nvarchar(50) NOT NULL,
	Last_Name nvarchar(50) NOT NULL,
	Date_Employment date  NOT NULL,
	Gender nvarchar(50),
	Salary Money,
);
DROP TABLE Employee;

ALTER TABLE Employee
ALTER COLUMN Date_Employment datetime;

ALTER TABLE Employee
DROP COLUMN Phone;

SET IDENTITY_INSERT master.dbo.Employee OFF;
SET IDENTITY_INSERT Employee ON;
27.05.1994 GETDATE()
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (1, 'Corie', 'Gallafant', '1994-05-27', 'Male', '$1301.36');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (2, 'Reinold', 'Clayborn', '1977-09-29', 'Female', '$1302.52');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (3, 'Leslie', 'Peel', '2002-04-24', 'Male', '$1106.60');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (4, 'Kizzee', 'Linnit', '1997-07-21', 'Male', '$420.10');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (5, 'Sara', 'Siddon', '1967-07-24', 'Female', '$1197.62');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (6, 'Hamish', 'Kerswill', '1965-09-20', 'Female', '$1335.48');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (7, 'Nessie', 'Rodenborch', '1982-09-20', 'Male', '$923.98');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (8, 'Risa', 'Bodleigh', '1995-11-25', 'Female', '$1450.73');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (9, 'Damon', 'Ferrarello', '1968-04-27', 'Male', '$1192.58');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (10, 'Denice', 'Iveans', '1970-05-08', 'Male', '$1442.33');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (11, 'Meara', 'Kibby', '1971-02-21', 'Male', '$1472.19');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (12, 'Daniele', 'McEnteggart', '1996-01-13', 'Female', '$680.42');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (13, 'Carlyle', 'Le Blanc', '1969-04-07', 'Male', '$698.53');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (14, 'Jaclyn', 'Huge', '1985-08-13', 'Male', '$506.84');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (15, 'Ebenezer', 'Lorenzo', '1982-05-25', 'Male', '$515.54');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (16, 'Andriana', 'Crowdace', '1967-06-03', 'Female', '$1225.06');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (17, 'Purcell', 'Penkethman', '1979-04-13', 'Male', '$961.78');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (18, 'Tull', 'Potapczuk', '1972-03-08', 'Male', '$1001.55');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (19, 'Lynnelle', 'Rissen', '1983-06-11', 'Female', '$1191.04');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (20, 'Zsa zsa', 'de Tocqueville', '1984-08-07', 'Male', '$691.20');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (21, 'Shurlock', 'Antoniades', '1971-04-24', 'Male', '$994.02');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (22, 'Philly', 'Croke', '1997-03-14', 'Male', '$1122.86');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (23, 'Bryon', 'Butler-Bowdon', '1991-12-15', 'Male', '$1154.88');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (24, 'Guendolen', 'Jessel', '1981-03-21', 'Female', '$461.73');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (25, 'Pedro', 'Hartzog', '1998-05-11', 'Female', '$581.94');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (26, 'Merrili', 'Twizell', '1965-08-07', 'Female', '$1423.75');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (27, 'Essy', 'Parkisson', '1997-05-19', 'Male', '$1072.94');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (28, 'Torrin', 'Brockherst', '1984-10-18', 'Female', '$973.64');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (29, 'Rurik', 'Key', '1987-12-16', 'Female', '$401.15');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (30, 'Winifield', 'Jennery', '1991-05-31', 'Male', '$1466.47');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (31, 'Conrade', 'Peatheyjohns', '1997-12-16', 'Female', '$467.73');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (32, 'Kasey', 'De Bellis', '1991-03-07', 'Female', '$434.18');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (33, 'Margalit', 'Melton', '2001-03-02', 'Male', '$617.01');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (34, 'Sigfrid', 'Jimmison', '1972-03-11', 'Female', '$558.99');
insert into Employee (Id, First_name, Last_name, Date_Employment, Gender, Salary) values (35, 'Lewes', 'Pantone', '1991-09-08', 'Male', '$1074.12');
