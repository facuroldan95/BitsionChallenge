USE [master]
GO
/****** Object:  Database [FicticiaDB]    Script Date: 9/6/2021 10:53:45 PM ******/
CREATE DATABASE [FicticiaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FicticiaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FicticiaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FicticiaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FicticiaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FicticiaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FicticiaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FicticiaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FicticiaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FicticiaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FicticiaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FicticiaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FicticiaDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FicticiaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FicticiaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FicticiaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FicticiaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FicticiaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FicticiaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FicticiaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FicticiaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FicticiaDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FicticiaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FicticiaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FicticiaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FicticiaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FicticiaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FicticiaDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FicticiaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FicticiaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FicticiaDB] SET  MULTI_USER 
GO
ALTER DATABASE [FicticiaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FicticiaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FicticiaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FicticiaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FicticiaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FicticiaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FicticiaDB] SET QUERY_STORE = OFF
GO
USE [FicticiaDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/6/2021 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 9/6/2021 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[genderId] [int] IDENTITY(1,1) NOT NULL,
	[genderName] [nvarchar](15) NOT NULL,
	[genderState] [bit] NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[genderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 9/6/2021 10:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[identification] [int] NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[surname] [nvarchar](30) NOT NULL,
	[birthdayDate] [datetime2](7) NOT NULL,
	[gender] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isDriver] [bit] NOT NULL,
	[isDiabetic] [bit] NOT NULL,
	[otherDisease] [bit] NOT NULL,
	[disease] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[identification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210906222627_Creating Bd...', N'5.0.9')
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([genderId], [genderName], [genderState]) VALUES (1, N'Masculino', 1)
INSERT [dbo].[Genders] ([genderId], [genderName], [genderState]) VALUES (2, N'Femenino', 1)
INSERT [dbo].[Genders] ([genderId], [genderName], [genderState]) VALUES (3, N'Otro', 1)
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (5561651, N'Florencia', N'Chavez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 2, 1, 1, 1, 0, N'N/A')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (15447334, N'Juan', N'Perez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 1, 1, 0, 1, 0, N'N/A')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (16448887, N'Laura', N'Gomez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 2, 1, 1, 1, 1, N'Hipertensión, Migraña')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (22452664, N'Facundo', N'Roldán', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 1, 1, 1, 0, 0, N'N/A')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (30158444, N'Gerardo', N'Batalla', CAST(N'1986-04-23T00:00:00.0000000' AS DateTime2), 1, 1, 1, 0, 1, N'Hipertensión y Sordera.')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (33484841, N'Magdalena', N'Paez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 2, 1, 1, 0, 0, N'N/A')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (45111987, N'Lucio', N'Rodriguez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 1, 1, 1, 1, 1, N'Asma')
INSERT [dbo].[Persons] ([identification], [name], [surname], [birthdayDate], [gender], [isActive], [isDriver], [isDiabetic], [otherDisease], [disease]) VALUES (45616511, N'Florencia', N'Jerez', CAST(N'2003-09-06T00:00:00.0000000' AS DateTime2), 2, 1, 1, 0, 0, N'N/A')
GO
USE [master]
GO
ALTER DATABASE [FicticiaDB] SET  READ_WRITE 
GO
