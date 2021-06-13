USE [SportShop]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 30.05.2021 12:58:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[Id] [int]  IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ViewProduct] [nvarchar](50) NOT NULL,
	[ProductAvailable] [nvarchar](50) NOT NULL,
	[Cost] [int] NOT NULL,
	[Producer] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL
) ON [PRIMARY]
GO

alter table Product
add primary key(Id);

CREATE TABLE Sales
(
	id int primary key IDENTITY,
	Quantity numeric,
	SaleDate date,
	ProductId int foreign key references Product(id),
	SellerId int FOREIGN KEY REFERENCES Seller(id),
	CustomerId int FOREIGN KEY REFERENCES Customer(id),
);
