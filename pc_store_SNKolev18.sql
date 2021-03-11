USE [master]
GO
/****** Object:  Database [pc_store_SNKolev18]    Script Date: 3/11/2021 3:09:48 PM ******/
CREATE DATABASE [pc_store_SNKolev18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_SNKolev18', FILENAME = N'C:\Users\SNKolev18\pc_store_SNKolev18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_SNKolev18_log', FILENAME = N'C:\Users\SNKolev18\pc_store_SNKolev18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_SNKolev18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_SNKolev18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_SNKolev18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_SNKolev18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_SNKolev18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_SNKolev18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_SNKolev18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_SNKolev18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_SNKolev18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_SNKolev18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_SNKolev18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_SNKolev18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_SNKolev18]
GO
/****** Object:  Table [dbo].[products_SNKolev18]    Script Date: 3/11/2021 3:09:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_SNKolev18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-[Price]*([Discount]/(100))),
 CONSTRAINT [PK_products_SNKolev18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_SNKolev18] ON 
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (6, N'PC', N'Dell', N'johns', 2020, CAST(2000 AS Decimal(18, 0)), 12, CAST(23 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (8, N'Course', N'Comptia', N'Security+', 2019, CAST(1500 AS Decimal(18, 0)), 3, CAST(25 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (9, N'Course', N'Offsec', N'OSWP', 2020, CAST(1999 AS Decimal(18, 0)), 1, CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (10, N'Laptop', N'Acer', N'Predator', 2019, CAST(2500 AS Decimal(18, 0)), 2, CAST(30 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (11, N'Laptop', N'Asus', N'TUF', 2020, CAST(1750 AS Decimal(18, 0)), 4, CAST(30 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (12, N'Laptop', N'HP', N'ProBook', 2019, CAST(1800 AS Decimal(18, 0)), 15, CAST(25 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_SNKolev18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (13, N'Laptop', N'Apple', N'MacBook', 2020, CAST(3000 AS Decimal(18, 0)), 14, CAST(30 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_SNKolev18] OFF
GO
ALTER TABLE [dbo].[products_SNKolev18] ADD  CONSTRAINT [DF_products_SNKolev18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_SNKolev18] ADD  CONSTRAINT [DF_products_SNKolev18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_SNKolev18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_SNKolev18] CHECK CONSTRAINT [CK_products_AvailableUnits]
GO
ALTER TABLE [dbo].[products_SNKolev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_SNKolev18] CHECK CONSTRAINT [CK_products_Discount]
GO
ALTER TABLE [dbo].[products_SNKolev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price] CHECK  (([Price]>=(0)))
GO
ALTER TABLE [dbo].[products_SNKolev18] CHECK CONSTRAINT [CK_products_Price]
GO
ALTER TABLE [dbo].[products_SNKolev18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_SNKolev18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_SNKolev18] SET  READ_WRITE 
GO
