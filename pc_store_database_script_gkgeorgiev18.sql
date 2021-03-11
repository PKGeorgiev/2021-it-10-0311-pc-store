USE [master]
GO
/****** Object:  Database [pc_store_gkgeorgiev18]    Script Date: 3/12/2021 12:20:28 AM ******/
CREATE DATABASE [pc_store_gkgeorgiev18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_gkgeorgiev18', FILENAME = N'D:\Programs\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_gkgeorgiev18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_gkgeorgiev18_log', FILENAME = N'D:\Programs\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_gkgeorgiev18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_gkgeorgiev18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_gkgeorgiev18]
GO
/****** Object:  Table [dbo].[products_gkgeorgiev18]    Script Date: 3/12/2021 12:20:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_gkgeorgiev18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-[Price]*([Discount]/(100))),
 CONSTRAINT [PK_products_gkgeorgiev18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_gkgeorgiev18] ON 
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (1, N'Laptop', N'Dell', N'JS100', 2019, CAST(300 AS Decimal(18, 0)), 5, CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (4, N'Laptop', N'HP', N'EO4', 2020, CAST(150 AS Decimal(18, 0)), 50, CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (8, N'Desktop', N'Toshiba', N'LDD5', 2019, CAST(200 AS Decimal(18, 0)), 10, CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (11, N'Laptop', N'HP', N'QOmen', 2025, CAST(1500 AS Decimal(18, 0)), 10, CAST(30 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (12, N'Laptop', N'Dell', N'ZJ10', 2021, CAST(500 AS Decimal(18, 0)), 100, CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (13, N'Desktop', N'Apple', N'KM60', 2022, CAST(600 AS Decimal(18, 0)), 100, CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gkgeorgiev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (14, N'Laptop', N'Apple', N'OMac', 2023, CAST(1000 AS Decimal(18, 0)), 10, CAST(0 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_gkgeorgiev18] OFF
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] ADD  CONSTRAINT [DF_products_gkgeorgiev18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] ADD  CONSTRAINT [DF_products_gkgeorgiev18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_gkgeorgiev18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits1] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] CHECK CONSTRAINT [CK_products_AvailableUnits1]
GO
ALTER TABLE [dbo].[products_gkgeorgiev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount1] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] CHECK CONSTRAINT [CK_products_Discount1]
GO
ALTER TABLE [dbo].[products_gkgeorgiev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price1] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] CHECK CONSTRAINT [CK_products_Price1]
GO
ALTER TABLE [dbo].[products_gkgeorgiev18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_gkgeorgiev18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_gkgeorgiev18] SET  READ_WRITE 
GO
