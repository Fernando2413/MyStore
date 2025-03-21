USE [master]
GO
/****** Object:  Database [mystore]    Script Date: 16/03/2025 09:40:31 p. m. ******/
CREATE DATABASE [mystore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mystore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mystore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mystore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mystore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [mystore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mystore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mystore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mystore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mystore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mystore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mystore] SET ARITHABORT OFF 
GO
ALTER DATABASE [mystore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [mystore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mystore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mystore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mystore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mystore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mystore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mystore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mystore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mystore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mystore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mystore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mystore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mystore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mystore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mystore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mystore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mystore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mystore] SET  MULTI_USER 
GO
ALTER DATABASE [mystore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mystore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mystore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mystore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mystore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mystore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [mystore] SET QUERY_STORE = ON
GO
ALTER DATABASE [mystore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [mystore]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 16/03/2025 09:40:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[phone] [varchar](20) NULL,
	[address] [varchar](100) NULL,
	[created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clients] ON 

INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (1, N'Bill Gates', N'bill.gates@micrososft.com', N'+123456789', N'New York, USA', CAST(N'2025-03-06T21:16:59.000' AS DateTime))
INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (2, N'Elon Musk', N'elon.musk@spacex.com', N'+111222333', N'Florida, USA', CAST(N'2025-03-06T21:17:41.000' AS DateTime))
INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (3, N'Will Smith', N'will.smith@gmail.com', N'+111333555', N'California, USA', CAST(N'2025-03-06T21:19:12.000' AS DateTime))
INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (4, N'Bob Marley', N'bob@gmail.com', N'+111555999', N'Texas, USA', CAST(N'2025-03-06T21:19:58.000' AS DateTime))
INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (5, N'Cristiano Ronaldo', N'cristiano.ronaldo@gmail.com', N'+322447788993', N'Manchester, England', CAST(N'2025-03-06T21:20:37.000' AS DateTime))
INSERT [dbo].[clients] ([id], [name], [email], [phone], [address], [created_at]) VALUES (6, N'Boris Johnson', N'boris.johnson@gmail.com', N'+4499778855', N'London, England', CAST(N'2025-03-06T21:21:19.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[clients] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__clients__AB6E6164D3913939]    Script Date: 16/03/2025 09:40:31 p. m. ******/
ALTER TABLE [dbo].[clients] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clients] ADD  DEFAULT (getdate()) FOR [created_at]
GO
USE [master]
GO
ALTER DATABASE [mystore] SET  READ_WRITE 
GO
