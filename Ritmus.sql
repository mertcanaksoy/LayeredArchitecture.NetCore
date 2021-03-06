USE [master]
GO
/****** Object:  Database [Ritmus]    Script Date: 28.04.2019 21:05:30 ******/
CREATE DATABASE [Ritmus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ritmus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Ritmus.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ritmus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Ritmus_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ritmus] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ritmus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ritmus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ritmus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ritmus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ritmus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ritmus] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ritmus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ritmus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ritmus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ritmus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ritmus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ritmus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ritmus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ritmus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ritmus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ritmus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ritmus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ritmus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ritmus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ritmus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ritmus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ritmus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ritmus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ritmus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ritmus] SET  MULTI_USER 
GO
ALTER DATABASE [Ritmus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ritmus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ritmus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ritmus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ritmus] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Ritmus]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 28.04.2019 21:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 28.04.2019 21:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)),
	[UnitsInStock] [smallint] NULL CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)),
	[UnitsOnOrder] [smallint] NULL CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)),
	[ReorderLevel] [smallint] NULL CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)),
	[Discontinued] [bit] NOT NULL CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)),
	[Image] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (1, N'Telefon', N'Telefon modelleri', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (2, N'Bilgisayar', N'Bilgisayar modelleri', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (3, N'Beyaz Eşya', N'Beyaz eşya modelleri', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (1, N'Lenovo Ideapad', 2, N'20x3kg', 2000.0000, 20, 0, 0, 0, N'lenovo.jpeg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (2, N'Iphone 7', 1, N'30x250g', 3500.0000, 30, 0, 0, 0, N'iphone7.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (3, N'Monster Notebook', 2, N'10x4kg', 6000.0000, 10, 0, 0, 0, N'monsternotebook.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (4, N'Vestel Buzdolabı', 3, N'5x200kg', 2500.0000, 5, 0, 0, 0, N'vestelbuzdolabı.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (5, N'Samsung Buzdolabı', 3, N'5x250kg', 2500.0000, 5, 0, 0, 0, N'samsungbuzdolabı.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Image]) VALUES (6, N'Bosch Fırın', 3, N'3x250kg', 2500.0000, 5, 0, 0, 0, N'boschfırın.png')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [CategoryName]    Script Date: 28.04.2019 21:05:30 ******/
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CategoriesProducts]    Script Date: 28.04.2019 21:05:30 ******/
CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CategoryID]    Script Date: 28.04.2019 21:05:30 ******/
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ProductName]    Script Date: 28.04.2019 21:05:30 ******/
CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Products]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
GO
USE [master]
GO
ALTER DATABASE [Ritmus] SET  READ_WRITE 
GO
