USE [master]
GO
/****** Object:  Database [Community_MedicineDB ]    Script Date: 6/20/2015 2:27:19 PM ******/
CREATE DATABASE [Community_MedicineDB ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Community_MedicineDB', FILENAME = N'E:\Net\Riyad\Asp.net\DatabaseTable\Community_MedicineDB .mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Community_MedicineDB _log', FILENAME = N'E:\Net\Riyad\Asp.net\DatabaseTable\Community_MedicineDB _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Community_MedicineDB ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Community_MedicineDB ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Community_MedicineDB ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Community_MedicineDB ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Community_MedicineDB ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Community_MedicineDB ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Community_MedicineDB ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Community_MedicineDB ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Community_MedicineDB ] SET  MULTI_USER 
GO
ALTER DATABASE [Community_MedicineDB ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Community_MedicineDB ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Community_MedicineDB ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Community_MedicineDB ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Community_MedicineDB ]
GO
/****** Object:  Table [dbo].[tbl_centre]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_centre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[code] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[thana_Id] [int] NULL,
 CONSTRAINT [PK_tbl_centre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_disease]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_disease](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[treatment] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_disease] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_district]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_medicine]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_receive]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_receive](
	[id] [int] NOT NULL,
	[medicine_Id] [int] NULL,
	[centre_Id] [int] NULL,
	[quantity] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_tbl_receive] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_thana]    Script Date: 6/20/2015 2:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_thana](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[district_Id] [int] NULL,
 CONSTRAINT [PK_tbl_thana] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_disease] ON 

INSERT [dbo].[tbl_disease] ([id], [name], [description], [treatment]) VALUES (1, N'Fever', N'Temparature will increase, feel headche etc', N'Napa 500mg - 2 times after Meal.')
SET IDENTITY_INSERT [dbo].[tbl_disease] OFF
SET IDENTITY_INSERT [dbo].[tbl_district] ON 

INSERT [dbo].[tbl_district] ([id], [name]) VALUES (1, N'Comilla')
INSERT [dbo].[tbl_district] ([id], [name]) VALUES (2, N'Chandpur')
INSERT [dbo].[tbl_district] ([id], [name]) VALUES (3, N'Dhaka')
INSERT [dbo].[tbl_district] ([id], [name]) VALUES (4, N'Feni')
INSERT [dbo].[tbl_district] ([id], [name]) VALUES (5, N'Faridpur')
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
SET IDENTITY_INSERT [dbo].[tbl_medicine] ON 

INSERT [dbo].[tbl_medicine] ([id], [name]) VALUES (2, N'Napa 400mg')
INSERT [dbo].[tbl_medicine] ([id], [name]) VALUES (1, N'Napa 500mg')
SET IDENTITY_INSERT [dbo].[tbl_medicine] OFF
SET IDENTITY_INSERT [dbo].[tbl_thana] ON 

INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (1, N'Dhamrai', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (2, N'Savar', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (3, N'Dohar', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (4, N'Keraniganj', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (5, N'Boalmari', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (6, N'Alfadanga', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (7, N'Madhukhali', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (8, N'Sonagazi', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (9, N'Fhulgazi', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (10, N'Chagalnaiya', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (11, N'Barura', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (12, N'Debidwar', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (13, N'Laksam', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (14, N'Haimchar', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (15, N'Faridganj', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_Id]) VALUES (16, N'Matlab Uttar', 2)
SET IDENTITY_INSERT [dbo].[tbl_thana] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_disease]    Script Date: 6/20/2015 2:27:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_disease] ON [dbo].[tbl_disease]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_medicine]    Script Date: 6/20/2015 2:27:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_medicine] ON [dbo].[tbl_medicine]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_centre]  WITH CHECK ADD  CONSTRAINT [FK_tbl_centre_tbl_thana] FOREIGN KEY([thana_Id])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_centre] CHECK CONSTRAINT [FK_tbl_centre_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_receive]  WITH CHECK ADD  CONSTRAINT [FK_tbl_receive_tbl_centre] FOREIGN KEY([centre_Id])
REFERENCES [dbo].[tbl_centre] ([id])
GO
ALTER TABLE [dbo].[tbl_receive] CHECK CONSTRAINT [FK_tbl_receive_tbl_centre]
GO
ALTER TABLE [dbo].[tbl_receive]  WITH CHECK ADD  CONSTRAINT [FK_tbl_receive_tbl_receive] FOREIGN KEY([medicine_Id])
REFERENCES [dbo].[tbl_medicine] ([id])
GO
ALTER TABLE [dbo].[tbl_receive] CHECK CONSTRAINT [FK_tbl_receive_tbl_receive]
GO
ALTER TABLE [dbo].[tbl_thana]  WITH CHECK ADD  CONSTRAINT [FK_tbl_thana_tbl_district] FOREIGN KEY([district_Id])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_thana] CHECK CONSTRAINT [FK_tbl_thana_tbl_district]
GO
USE [master]
GO
ALTER DATABASE [Community_MedicineDB ] SET  READ_WRITE 
GO
