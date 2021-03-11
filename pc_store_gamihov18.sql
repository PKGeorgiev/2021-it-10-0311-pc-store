USE [master]   
GO
/****** Object:  Database [pc_store_gamihov18]    Script Date: 11.3.2021 г. 15:09:47 ******/
CREATE DATABASE [pc_store_gamihov18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_gamihov18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_gamihov18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_gamihov18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_gamihov18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_gamihov18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_gamihov18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_gamihov18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_gamihov18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_gamihov18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_gamihov18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_gamihov18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_gamihov18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_gamihov18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_gamihov18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_gamihov18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_gamihov18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_gamihov18]
GO
/****** Object:  Table [dbo].[products_gamihov18]    Script Date: 11.3.2021 г. 15:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_gamihov18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-[Price]*([Discount]/(100))),
 CONSTRAINT [PK_products_gamihov18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_gamihov18] ON 
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (2, N'Laptop', N'Dell', N's100', 2019, CAST(500 AS Decimal(18, 0)), 3, CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (4, N'Laptop', N'HP', N'ms2010', 2020, CAST(700 AS Decimal(18, 0)), 5, CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (5, N'Laptop', N'Dell', N's200', 2021, CAST(1000 AS Decimal(18, 0)), 0, CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (7, N'Desktop', N'Dell', N'm300', 2019, CAST(850 AS Decimal(18, 0)), 10, CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (8, N'Desktop', N'HP', N'gh320', 2020, CAST(1500 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_gamihov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount]) VALUES (9, N'Desktop', N'Potato', N'100', 2019, CAST(100 AS Decimal(18, 0)), 100, CAST(30 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_gamihov18] OFF
GO
ALTER TABLE [dbo].[products_gamihov18] ADD  CONSTRAINT [DF_products_gamihov18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_gamihov18] ADD  CONSTRAINT [DF_products_gamihov18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_gamihov18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_gamihov18] CHECK CONSTRAINT [CK_products_AvailableUnits]
GO
ALTER TABLE [dbo].[products_gamihov18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_gamihov18] CHECK CONSTRAINT [CK_products_Discount]
GO
ALTER TABLE [dbo].[products_gamihov18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_gamihov18] CHECK CONSTRAINT [CK_products_Price]
GO
ALTER TABLE [dbo].[products_gamihov18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_gamihov18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_gamihov18] SET  READ_WRITE 
GO
