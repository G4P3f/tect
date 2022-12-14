USE [master]
GO
/****** Object:  Database [Ваня Аним красворд]    Script Date: 12.09.2022 12:13:21 ******/
CREATE DATABASE [Ваня Аним красворд]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ваня Аним красворд', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Ваня Аним красворд.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ваня Аним красворд_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Ваня Аним красворд_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ваня Аним красворд] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ваня Аним красворд].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ваня Аним красворд] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ваня Аним красворд] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ваня Аним красворд] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ваня Аним красворд] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ваня Аним красворд] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET RECOVERY FULL 
GO
ALTER DATABASE [Ваня Аним красворд] SET  MULTI_USER 
GO
ALTER DATABASE [Ваня Аним красворд] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ваня Аним красворд] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ваня Аним красворд] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ваня Аним красворд] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ваня Аним красворд] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ваня Аним красворд', N'ON'
GO
ALTER DATABASE [Ваня Аним красворд] SET QUERY_STORE = OFF
GO
USE [Ваня Аним красворд]
GO
/****** Object:  User [sus]    Script Date: 12.09.2022 12:13:21 ******/
CREATE USER [sus] FOR LOGIN [sus] WITH DEFAULT_SCHEMA=[sus]
GO
/****** Object:  Schema [sus]    Script Date: 12.09.2022 12:13:21 ******/
CREATE SCHEMA [sus]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12.09.2022 12:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ld] [int] NOT NULL,
	[date] [nchar](10) NULL,
	[time] [nchar](10) NULL,
	[user_id] [nchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_probucts]    Script Date: 12.09.2022 12:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_probucts](
	[Product_id] [int] NOT NULL,
	[Order_ld] [nchar](10) NULL,
 CONSTRAINT [PK_order_probucts] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.09.2022 12:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ld] [int] NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12.09.2022 12:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Descrid] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12.09.2022 12:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ld] [int] NULL,
	[Firstname] [nchar](10) NULL,
	[Lastname] [nchar](10) NULL,
	[Age] [nchar](10) NULL,
	[Role_id] [int] NOT NULL,
	[login] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_order_probucts] FOREIGN KEY([ld])
REFERENCES [dbo].[order_probucts] ([Product_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_order_probucts]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([ld])
REFERENCES [dbo].[Users] ([Role_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[order_probucts]  WITH CHECK ADD  CONSTRAINT [FK_order_probucts_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([ld])
GO
ALTER TABLE [dbo].[order_probucts] CHECK CONSTRAINT [FK_order_probucts_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Roles] FOREIGN KEY([ld])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Roles]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Users] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Role_id])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Order] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Order] ([ld])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Order]
GO
USE [master]
GO
ALTER DATABASE [Ваня Аним красворд] SET  READ_WRITE 
GO
