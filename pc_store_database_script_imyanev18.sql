USE [master]
GO
/****** Object:  Database [pc_store_imyanev18]    Script Date: 14.3.2021 г. 20:04:40 ******/
CREATE DATABASE [pc_store_imyanev18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_imyanev18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_imyanev18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_imyanev18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_imyanev18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_imyanev18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_imyanev18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_imyanev18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_imyanev18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_imyanev18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_imyanev18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_imyanev18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_imyanev18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_imyanev18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_imyanev18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_imyanev18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_imyanev18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_imyanev18]
GO
/****** Object:  Table [dbo].[products_imyanev18]    Script Date: 14.3.2021 г. 20:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_imyanev18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearОfМanufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-([Discount]/(100))*[Price]),
 CONSTRAINT [PK_products_imyanev18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_imyanev18] ON 
GO
INSERT [dbo].[products_imyanev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (2, N'Ilian', N'ne znam', N'3013', 2019, CAST(341 AS Decimal(18, 0)), 11, CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_imyanev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (3, N'Ivan', N'ne znam', N'model1000', 2020, CAST(1444 AS Decimal(18, 0)), 15, CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_imyanev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (4, N'Plamen', N'ne znam', N'model11', 2029, CAST(2000 AS Decimal(18, 0)), 20, CAST(20 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_imyanev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (5, N'Radoslav', N'ne znam', N'model2000', 2024, CAST(2014 AS Decimal(18, 0)), 10, CAST(13 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_imyanev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (6, N'Kaloyan', N'ne znam', N'model111', 2027, CAST(2031 AS Decimal(18, 0)), 20, CAST(20 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_imyanev18] OFF
GO
ALTER TABLE [dbo].[products_imyanev18] ADD  CONSTRAINT [DF_products_imyanev18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_imyanev18] ADD  CONSTRAINT [DF_products_imyanev18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_imyanev18]  WITH CHECK ADD  CONSTRAINT [CK_Table_1_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_imyanev18] CHECK CONSTRAINT [CK_Table_1_AvailableUnits]
GO
ALTER TABLE [dbo].[products_imyanev18]  WITH CHECK ADD  CONSTRAINT [CK_Table_1_Discount] CHECK  (([Discount]>=(0)))
GO
ALTER TABLE [dbo].[products_imyanev18] CHECK CONSTRAINT [CK_Table_1_Discount]
GO
ALTER TABLE [dbo].[products_imyanev18]  WITH CHECK ADD  CONSTRAINT [CK_Table_1_Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_imyanev18] CHECK CONSTRAINT [CK_Table_1_Price]
GO
ALTER TABLE [dbo].[products_imyanev18]  WITH CHECK ADD  CONSTRAINT [CK_Table_1_YearОfМanufacture] CHECK  (([YearОfМanufacture]>(2018) AND [YearОfМanufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_imyanev18] CHECK CONSTRAINT [CK_Table_1_YearОfМanufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_imyanev18] SET  READ_WRITE 
GO
