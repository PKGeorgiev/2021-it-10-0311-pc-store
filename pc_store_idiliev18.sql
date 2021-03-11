USE [master]
GO
/****** Object:  Database [pc_store_idiliev18]    Script Date: 3/11/2021 3:11:00 PM ******/
CREATE DATABASE [pc_store_idiliev18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_idiliev18', FILENAME = N'C:\Users\idiliev18\pc_store_idiliev18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_idiliev18_log', FILENAME = N'C:\Users\idiliev18\pc_store_idiliev18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_idiliev18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_idiliev18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_idiliev18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_idiliev18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_idiliev18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_idiliev18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_idiliev18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_idiliev18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_idiliev18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_idiliev18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_idiliev18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_idiliev18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_idiliev18]
GO
/****** Object:  Table [dbo].[products_idiliev18]    Script Date: 3/11/2021 3:11:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_idiliev18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearОfМanufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-[Price]*([Discount]/(100))),
 CONSTRAINT [PK_products_idiliev18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[products_idiliev18] ON 
GO
INSERT [dbo].[products_idiliev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (1, N'PC', N'Dell', N's420', 2019, CAST(1245 AS Decimal(18, 0)), 452, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_idiliev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (2, N'PC', N'Habibi', N'spish1', 2029, CAST(8954 AS Decimal(18, 0)), 1, CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_idiliev18] ([Id], [Name], [Manufacturer], [Model], [YearОfМanufacture], [Price], [AvailableUnits], [Discount]) VALUES (3, N'Laptop', N'Asus', N'Ham', 2021, CAST(1452 AS Decimal(18, 0)), 78, CAST(0 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[products_idiliev18] OFF
GO
ALTER TABLE [dbo].[products_idiliev18] ADD  CONSTRAINT [DF_products_idiliev18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_idiliev18] ADD  CONSTRAINT [DF_products_idiliev18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_idiliev18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_idiliev18] CHECK CONSTRAINT [CK_products_AvailableUnits]
GO
ALTER TABLE [dbo].[products_idiliev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_idiliev18] CHECK CONSTRAINT [CK_products_Discount]
GO
ALTER TABLE [dbo].[products_idiliev18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_idiliev18] CHECK CONSTRAINT [CK_products_Price]
GO
ALTER TABLE [dbo].[products_idiliev18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearОfМanufacture]>(2018) AND [YearОfМanufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_idiliev18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_idiliev18] SET  READ_WRITE 
GO
