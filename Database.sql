USE [master]
GO
/****** Object:  Database [HRManagementSystem]    Script Date: 8/10/2017 10:07:57 PM ******/
CREATE DATABASE [HRManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HRManagementSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HRManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HRManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HRManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [HRManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [HRManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HRManagementSystem', N'ON'
GO
USE [HRManagementSystem]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 8/10/2017 10:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 8/10/2017 10:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Salary] [float] NULL,
	[Post] [nvarchar](50) NULL,
	[Qualification] [nvarchar](50) NULL,
	[Skills] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeManagement]    Script Date: 8/10/2017 10:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeManagement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[ProjectDetails] [nvarchar](50) NULL,
	[Trainings] [nvarchar](50) NULL,
	[Apprasel] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeManagement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payroll]    Script Date: 8/10/2017 10:07:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[BasicSalary] [float] NULL,
	[Allowances] [float] NULL,
	[NetSalary] [float] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Payroll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] ON 

INSERT [dbo].[EmployeeDetails] ([Id], [Name], [Salary], [Post], [Qualification], [Skills], [Description], [Status]) VALUES (1, N'asma', 40000, N'developer', N'graduate', N'asp', N'abc', 1)
SET IDENTITY_INSERT [dbo].[EmployeeDetails] OFF
ALTER TABLE [dbo].[EmployeeDetails] ADD  CONSTRAINT [DF_EmployeeDetails_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_EmployeeDetails] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_EmployeeDetails]
GO
ALTER TABLE [dbo].[EmployeeManagement]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeManagement_EmployeeManagement] FOREIGN KEY([Id])
REFERENCES [dbo].[EmployeeManagement] ([Id])
GO
ALTER TABLE [dbo].[EmployeeManagement] CHECK CONSTRAINT [FK_EmployeeManagement_EmployeeManagement]
GO
ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_EmployeeDetails] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_EmployeeDetails]
GO
USE [master]
GO
ALTER DATABASE [HRManagementSystem] SET  READ_WRITE 
GO
