USE [master]
GO
/****** Object:  Database [pc_store_adlaleva18]    Script Date: 12.3.2021 г. 9:24:22 ******/
CREATE DATABASE [pc_store_adlaleva18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_adlaleva18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_adlaleva18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_adlaleva18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_adlaleva18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pc_store_adlaleva18] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_adlaleva18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_adlaleva18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_adlaleva18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_adlaleva18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_adlaleva18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_adlaleva18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_adlaleva18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_adlaleva18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_adlaleva18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_adlaleva18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_adlaleva18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_adlaleva18] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pc_store_adlaleva18] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [pc_store_adlaleva18] SET QUERY_STORE = OFF
GO
USE [pc_store_adlaleva18]
GO
/****** Object:  Table [dbo].[products_adlaleva18]    Script Date: 12.3.2021 г. 9:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_adlaleva18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount]  AS ([Price]-[Price]*([Discount]/(100))),
 CONSTRAINT [PK_products_adlaleva18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[products_adlaleva18] ADD  CONSTRAINT [DF_products_adlaleva18_AvailableUnits]  DEFAULT ((0)) FOR [AvailableUnits]
GO
ALTER TABLE [dbo].[products_adlaleva18] ADD  CONSTRAINT [DF_products_adlaleva18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_adlaleva18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_adlaleva18] CHECK CONSTRAINT [CK_products_AvailableUnits]
GO
ALTER TABLE [dbo].[products_adlaleva18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_adlaleva18] CHECK CONSTRAINT [CK_products_Discount]
GO
ALTER TABLE [dbo].[products_adlaleva18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_adlaleva18] CHECK CONSTRAINT [CK_products_Price]
GO
ALTER TABLE [dbo].[products_adlaleva18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_adlaleva18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_adlaleva18] SET  READ_WRITE 
GO
