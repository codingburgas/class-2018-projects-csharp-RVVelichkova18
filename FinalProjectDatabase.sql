USE [master]
GO
/****** Object:  Database [final-projects-csharp-database]    Script Date: 6/3/2022 4:16:25 PM ******/
CREATE DATABASE [final-projects-csharp-database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'final-projects-csharp-database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\final-projects-csharp-database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'final-projects-csharp-database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\final-projects-csharp-database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [final-projects-csharp-database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [final-projects-csharp-database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET ARITHABORT OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [final-projects-csharp-database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [final-projects-csharp-database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [final-projects-csharp-database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [final-projects-csharp-database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [final-projects-csharp-database] SET  MULTI_USER 
GO
ALTER DATABASE [final-projects-csharp-database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [final-projects-csharp-database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [final-projects-csharp-database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [final-projects-csharp-database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [final-projects-csharp-database] SET DELAYED_DURABILITY = DISABLED 
GO
USE [final-projects-csharp-database]
GO
/****** Object:  Table [dbo].[project-db-coniferious-trees-information]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-coniferious-trees-information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfSpecies] [nvarchar](50) NOT NULL,
	[Aream3] [float] NOT NULL,
	[Volumem3] [float] NOT NULL,
	[LieDownm3] [float] NOT NULL,
	[Largem3] [float] NOT NULL,
	[Mediumm3] [float] NOT NULL,
	[Smallm3] [float] NOT NULL,
 CONSTRAINT [PK_project-db-coniferious-trees-information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-deciduous-trees-information]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-deciduous-trees-information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfSpecies] [nvarchar](50) NOT NULL,
	[Aream3] [float] NOT NULL,
	[Volumem3] [float] NOT NULL,
	[LieDownm3] [float] NOT NULL,
	[Largem3] [float] NOT NULL,
	[Mediumm3] [float] NOT NULL,
	[Smallm3] [float] NOT NULL,
 CONSTRAINT [PK_project-db-deciduous-trees-information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-green-areas]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-green-areas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaSize] [int] NOT NULL,
	[DeciduousTreesId] [int] NOT NULL,
	[ConiferousTreesId] [int] NOT NULL,
	[SatelitePicturesId] [int] NOT NULL,
 CONSTRAINT [PK_GreenAreas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-institutions]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-institutions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionType] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GreenAreaId] [int] NOT NULL,
	[RRegulationsId] [int] NOT NULL,
 CONSTRAINT [PK_project-db-institutions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-regulations]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-regulations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CutOffsForFactories] [int] NOT NULL,
	[CutOffsForExport] [int] NOT NULL,
	[CutOffsForCivil] [int] NOT NULL,
 CONSTRAINT [PK_project-db-regulations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-role-authentication]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-role-authentication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExpertId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[isAdmin] [binary](50) NOT NULL,
 CONSTRAINT [PK_project-db-role-authentication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-satelite-pictures-information]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-satelite-pictures-information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfCreation] [date] NOT NULL,
	[TimeOfCreation] [time](7) NOT NULL,
	[SateliteInformation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_project-db-satelite-pictures-information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project-db-users]    Script Date: 6/3/2022 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project-db-users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_project-db-users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[project-db-green-areas]  WITH CHECK ADD  CONSTRAINT [FK_project-db-green-areas_project-db-coniferious-trees-information] FOREIGN KEY([ConiferousTreesId])
REFERENCES [dbo].[project-db-coniferious-trees-information] ([Id])
GO
ALTER TABLE [dbo].[project-db-green-areas] CHECK CONSTRAINT [FK_project-db-green-areas_project-db-coniferious-trees-information]
GO
ALTER TABLE [dbo].[project-db-green-areas]  WITH CHECK ADD  CONSTRAINT [FK_project-db-green-areas_project-db-deciduous-trees-information] FOREIGN KEY([DeciduousTreesId])
REFERENCES [dbo].[project-db-deciduous-trees-information] ([Id])
GO
ALTER TABLE [dbo].[project-db-green-areas] CHECK CONSTRAINT [FK_project-db-green-areas_project-db-deciduous-trees-information]
GO
ALTER TABLE [dbo].[project-db-green-areas]  WITH CHECK ADD  CONSTRAINT [FK_project-db-green-areas_project-db-satelite-pictures-information] FOREIGN KEY([SatelitePicturesId])
REFERENCES [dbo].[project-db-satelite-pictures-information] ([Id])
GO
ALTER TABLE [dbo].[project-db-green-areas] CHECK CONSTRAINT [FK_project-db-green-areas_project-db-satelite-pictures-information]
GO
ALTER TABLE [dbo].[project-db-institutions]  WITH CHECK ADD  CONSTRAINT [FK_project-db-institutions_project-db-green-areas] FOREIGN KEY([GreenAreaId])
REFERENCES [dbo].[project-db-green-areas] ([Id])
GO
ALTER TABLE [dbo].[project-db-institutions] CHECK CONSTRAINT [FK_project-db-institutions_project-db-green-areas]
GO
ALTER TABLE [dbo].[project-db-institutions]  WITH CHECK ADD  CONSTRAINT [FK_project-db-institutions_project-db-regulations] FOREIGN KEY([RRegulationsId])
REFERENCES [dbo].[project-db-regulations] ([Id])
GO
ALTER TABLE [dbo].[project-db-institutions] CHECK CONSTRAINT [FK_project-db-institutions_project-db-regulations]
GO
ALTER TABLE [dbo].[project-db-role-authentication]  WITH CHECK ADD  CONSTRAINT [FK_project-db-role-authentication_project-db-users] FOREIGN KEY([ExpertId])
REFERENCES [dbo].[project-db-users] ([Id])
GO
ALTER TABLE [dbo].[project-db-role-authentication] CHECK CONSTRAINT [FK_project-db-role-authentication_project-db-users]
GO
ALTER TABLE [dbo].[project-db-role-authentication]  WITH CHECK ADD  CONSTRAINT [FK_project-db-role-authentication_project-db-users1] FOREIGN KEY([UserId])
REFERENCES [dbo].[project-db-users] ([Id])
GO
ALTER TABLE [dbo].[project-db-role-authentication] CHECK CONSTRAINT [FK_project-db-role-authentication_project-db-users1]
GO
USE [master]
GO
ALTER DATABASE [final-projects-csharp-database] SET  READ_WRITE 
GO
