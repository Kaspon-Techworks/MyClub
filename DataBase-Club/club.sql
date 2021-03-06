USE [master]
GO
/****** Object:  Database [club]    Script Date: 09/26/2016 11:30:31 ******/
CREATE DATABASE [club] ON  PRIMARY 
( NAME = N'club', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\club.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'club_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\club_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [club] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [club].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [club] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [club] SET ANSI_NULLS OFF
GO
ALTER DATABASE [club] SET ANSI_PADDING OFF
GO
ALTER DATABASE [club] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [club] SET ARITHABORT OFF
GO
ALTER DATABASE [club] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [club] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [club] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [club] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [club] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [club] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [club] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [club] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [club] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [club] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [club] SET  DISABLE_BROKER
GO
ALTER DATABASE [club] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [club] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [club] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [club] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [club] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [club] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [club] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [club] SET  READ_WRITE
GO
ALTER DATABASE [club] SET RECOVERY SIMPLE
GO
ALTER DATABASE [club] SET  MULTI_USER
GO
ALTER DATABASE [club] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [club] SET DB_CHAINING OFF
GO
USE [club]
GO
/****** Object:  Table [dbo].[AdmiLogin]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdmiLogin](
	[uname] [varchar](20) NULL,
	[pass] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AdmiLogin] ([uname], [pass]) VALUES (N'admin', N'admin')
/****** Object:  Table [dbo].[TypesOfClubs]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypesOfClubs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NOT NULL,
	[ClubName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfClubs] ON
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (1, 1, N'ALumini Club')
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (4, 2, N'Laughter Club')
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (5, 3, N'Sports Club')
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (6, 4, N'Health Club')
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (7, 5, N'Entreprenur Club')
INSERT [dbo].[TypesOfClubs] ([Id], [ClubId], [ClubName]) VALUES (8, 6, N'Music Club')
SET IDENTITY_INSERT [dbo].[TypesOfClubs] OFF
/****** Object:  Table [dbo].[TypeofSports]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeofSports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TypeofSports] ON
INSERT [dbo].[TypeofSports] ([id], [Name]) VALUES (1, N'FootBall')
SET IDENTITY_INSERT [dbo].[TypeofSports] OFF
/****** Object:  Table [dbo].[Facilities]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facilities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Capacity] [varchar](50) NOT NULL,
	[No] [varchar](50) NOT NULL,
	[TimeFrom] [varchar](20) NOT NULL,
	[TimeTo] [varchar](20) NOT NULL,
	[ClubName] [varchar](50) NOT NULL,
	[Descripition] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Facilities] ON
INSERT [dbo].[Facilities] ([id], [Name], [Capacity], [No], [TimeFrom], [TimeTo], [ClubName], [Descripition]) VALUES (1, N'seminar Hall', N'100', N'909', N'10:00', N'22:00', N'KCT', N'it contain ac projector etc ')
INSERT [dbo].[Facilities] ([id], [Name], [Capacity], [No], [TimeFrom], [TimeTo], [ClubName], [Descripition]) VALUES (6, N'Party Hall', N'100', N'3', N'10:00', N'22:00', N'KCT', N'A/c')
INSERT [dbo].[Facilities] ([id], [Name], [Capacity], [No], [TimeFrom], [TimeTo], [ClubName], [Descripition]) VALUES (8, N'Football Ground', N'-', N'3', N'06:00', N'19:00', N'FCB', N'Grass Filed')
SET IDENTITY_INSERT [dbo].[Facilities] OFF
/****** Object:  Table [dbo].[EventRequest]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [char](20) NULL,
	[Email] [varchar](50) NULL,
	[EventName] [char](20) NULL,
	[Members] [char](20) NULL,
	[EventDate] [varchar](20) NULL,
	[Location] [char](20) NULL,
	[Facilities] [char](20) NULL,
	[stus] [char](20) NULL,
	[ClubName] [varchar](50) NULL,
	[Eventtime] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EventRequest] ON
INSERT [dbo].[EventRequest] ([Id], [Name], [Email], [EventName], [Members], [EventDate], [Location], [Facilities], [stus], [ClubName], [Eventtime]) VALUES (2, N'Vetri               ', N'vetri.selvam8@gmail.com', N'Yugam               ', N'100                 ', N'2016-09-09', N'chennai             ', N'seminar hall        ', N'1                   ', N'KCT', N'11.00')
INSERT [dbo].[EventRequest] ([Id], [Name], [Email], [EventName], [Members], [EventDate], [Location], [Facilities], [stus], [ClubName], [Eventtime]) VALUES (3, N'vetri               ', N'vetri.selvam8@gmail.com', N'Kalam               ', N'1000                ', N'2016-09-25', N'Coimbatore          ', N'Ground              ', N'1                   ', N'KCT', N'15.00')
SET IDENTITY_INSERT [dbo].[EventRequest] OFF
/****** Object:  Table [dbo].[ClubLogin]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClubLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](20) NULL,
	[pass] [varchar](20) NULL,
	[ClubTypeId] [varchar](20) NULL,
	[ClubTypeName] [varchar](20) NULL,
	[ClubId] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClubLogin] ON
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (1, N'admin', N'admin', N'1', N'KCT', N'1', N'vetri.selvam8@gmail.com')
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (2, N'fcb', N'fcb', N'3', N'FCB', N'3', NULL)
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (3, N'Lekshmi', N'lk', N'2', N'WiKi', N'3', NULL)
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (4, N'Arun', N'UIiWwC', N'4', N'Ganga', N'4', NULL)
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (9, N'somu', N'Ii8wB1', N'2', N'SomaNathan', N'6', NULL)
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (10, N'vetri', N'l2zF4T', N'3', N'napo', N'7', N'vetri.selvam8@gmail.com')
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (11, N'susi', N'Qq65J9', N'5', N'Vasavi', N'8', N'gudivadasuseela@gmail.com')
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (12, N'Ramya', N'yEdSsg', N'2', N'Ramya', N'9', N'gudivadasuseela@gmail.com')
INSERT [dbo].[ClubLogin] ([id], [uname], [pass], [ClubTypeId], [ClubTypeName], [ClubId], [Email]) VALUES (13, N'Divya', N'I8Xwl1', N'2', N'Divya', N'10', N'gudivadasuseela@gmail.com')
SET IDENTITY_INSERT [dbo].[ClubLogin] OFF
/****** Object:  Table [dbo].[MemLog]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](20) NOT NULL,
	[pass] [varchar](20) NULL,
	[ClubId] [varchar](20) NOT NULL,
	[ClubTypeId] [varchar](20) NULL,
	[Name] [varchar](50) NULL,
	[ClubName] [varchar](50) NULL,
	[Loginstus] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[uname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MemLog] ON
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (7, N'KCT1', N'KCT1', N'1', N'1', N'Vetri', N'KCT', 1)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (10, N'WiKi1', N'GfUt09', N'3', N'2', N'Napolean', N'WiKi', 0)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (11, N'WiKi2', N'cRq75K', N'3', N'2', N'Lekshmikanth', N'WiKi', 0)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (12, N'WiKi3', N'Rr86L0', N'3', N'2', N'Vetri', N'WiKi', 0)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (13, N'WiKi4', N'5t9YNm', N'3', N'2', N'Praveen', N'WiKi', 0)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (14, N'WiKi5', N'H6Vvj0', N'3', N'2', N'Lekshmikanth', N'WiKi', 0)
INSERT [dbo].[MemLog] ([Id], [uname], [pass], [ClubId], [ClubTypeId], [Name], [ClubName], [Loginstus]) VALUES (15, N'WiKi6', N'EeSs87', N'3', N'2', N'dfdf', N'WiKi', 0)
SET IDENTITY_INSERT [dbo].[MemLog] OFF
/****** Object:  Table [dbo].[MusicClub]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MusicClub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[Gender] [varchar](20) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[Currentaddress] [varchar](20) NULL,
	[Specialistin] [varchar](20) NULL,
	[NameOfyourBand] [varchar](20) NULL,
	[Achievements] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClubRegister]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClubRegister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clubName] [varchar](20) NOT NULL,
	[adminName] [varchar](20) NULL,
	[adrs] [varchar](50) NULL,
	[city] [varchar](20) NULL,
	[stat] [varchar](20) NULL,
	[pin] [varchar](20) NULL,
	[phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[typeofclub] [varchar](20) NULL,
	[stas] [tinyint] NULL,
	[ClubTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[clubName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClubRegister] ON
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (10, N'Divya', N'Divya', N'Velachery', N'chennai', N'Tamil Nadu', N'7877685', N'3457476585', N'gudivadasuseela@gmail.com', N'Laughter Club', 1, 2)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (2, N'FCB', N'Admin', N'Chennai', N'chennai', N'TamilNadu', N'600028', N'9994163481', N'vetri.selvam8@gmail.com', N'Sports Club', 1, 3)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (4, N'Ganga', N'Arun', N'Manamadurai', N'Manamadurai', N'Tamil Nadu', N'623630', N'9994163481', N'vetri.selvam8@gmail.com', N'Health Club', 1, 4)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (1, N'KCT', N'Admin', N'Coimbatore', N'coimbatore', N'Tamil Nadu', N'623490', N'9994163481', N'vetri.selvam8@gmail.com', N'ALumini Club', 1, 1)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (7, N'napo', N'vetri', N'area', N'Chennai', N'Tamil Nadu', N'636115', N'1234567890', N'vetri.selvam8@gmail.com', N'Sports Club', 1, 3)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (9, N'Ramya', N'Ramya', N'Velachery', N'chennai', N'Tamil Nadu', N'7877685', N'3457476585', N'gudivadasuseela@gmail.com', N'Laughter Club', 1, 2)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (6, N'SomaNathan', N'somu', N'Chennai', N'Chennai', N'Tamil Nadu', N'123456', N'1234567890', N'lekshmikanthc@gmail.com', N'Laughter Club', 1, 2)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (8, N'Vasavi', N'susi', N'Navalur', N'chennai', N'Tamil Nadu', N'600042', N'54675876987', N'gudivadasuseela@gmail.com', N'Entreprenur Club', 1, 5)
INSERT [dbo].[ClubRegister] ([id], [clubName], [adminName], [adrs], [city], [stat], [pin], [phone], [Email], [typeofclub], [stas], [ClubTypeId]) VALUES (3, N'WiKi', N'Lekshmi', N'Kannyakumarai.', N'Nagarkovil', N'Tamil Nadu', N'629001', N'9790248272', N'lekshmikanthc@gmail.com', N'Laughter Club', 1, 2)
SET IDENTITY_INSERT [dbo].[ClubRegister] OFF
/****** Object:  Table [dbo].[LaughterClub]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaughterClub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NOT NULL,
	[Mobile] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](20) NULL,
	[MaritalStatus] [varchar](20) NULL,
	[Currentaddress] [varchar](20) NULL,
	[Currentstatus] [varchar](20) NULL,
	[SpeaciaSkills] [varchar](20) NULL,
	[performance] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LaughterClub] ON
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (5, 2, N'Praveen', N'9876545398', N'prave@gmail.com', N'male', N'Single', N'chennai', N'working', N'sports', N'good', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (8, 2, N'Lekshmikanth', N'987654321', N'lekshmic@gmail.com', N'male', N'Single', N'Chennai', N'Working', N'Mimicry', N'Top', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (9, 2, N'Vetri', N'987654321', N'vetri@gmail.com', N'male', N'Single', N'Chennai', N'Working', N'Singing', N'Top', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (10, 2, N'Napolean', N'9876543210', N'grnapoleon@gmail.com', N'male', N'Single', N'Chennai', N'Working', N'Dance', N'Top', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (12, 2, N'dfdf', N'3457688999', N'sdf@we.com', N'male', N'Single', N'Sss', N'sss', N'sss', N'sss', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (13, 2, N'Vetriselvam', N'987654321', N'fdf@gmail.com', N'male', N'Single', N'sss', N'Sss', N'ss', N'ss', 0, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (14, 2, N'Lekshmikanth', N'8122490234', N'lekshmikanthc@gmail.com', N'male', N'Single', N'Chennai', N'Working', N'Dance', N'Top', 1, N'WiKi')
INSERT [dbo].[LaughterClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [MaritalStatus], [Currentaddress], [Currentstatus], [SpeaciaSkills], [performance], [stus], [ClubName]) VALUES (11, 2, N'SomaSundaram', N'7894561230', N'ff@gmail.com', N'male', N'Single', N'Chenaai', N'Working', N'Singing', N'Top', 0, N'WiKi')
SET IDENTITY_INSERT [dbo].[LaughterClub] OFF
/****** Object:  Table [dbo].[HealthClub]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HealthClub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NULL,
	[Mobile] [int] NULL,
	[Email] [varchar](20) NULL,
	[Gender] [varchar](20) NULL,
	[Age] [int] NULL,
	[Maritalstatus] [varchar](20) NULL,
	[CurrentAddress] [varchar](20) NULL,
	[Descr] [varchar](50) NULL,
	[Find] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AluminiClub]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AluminiClub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NOT NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Email] [varchar](50) NULL,
	[Institute] [varchar](20) NULL,
	[Program] [varchar](20) NULL,
	[BatchPassoutYear] [varchar](50) NULL,
	[Gender] [varchar](20) NOT NULL,
	[MaritalStatus] [varchar](20) NULL,
	[CurrentStatus] [varchar](20) NULL,
	[Organisation] [varchar](20) NULL,
	[Designation] [varchar](20) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[CurrentAddress] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AluminiClub] ON
INSERT [dbo].[AluminiClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Institute], [Program], [BatchPassoutYear], [Gender], [MaritalStatus], [CurrentStatus], [Organisation], [Designation], [Age], [DOB], [CurrentAddress], [stus], [ClubName]) VALUES (1, 1, N'Vetri', N'9994163481', N'vetri.selvam8@gmail.com', N'KCT', N'CSE', N'2016', N'Male', N'Single', N'Working', N'Kaspon', N'trainiee', 21, CAST(0x1F1C0B00 AS Date), N'chennai', 0, N'KCT')
INSERT [dbo].[AluminiClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Institute], [Program], [BatchPassoutYear], [Gender], [MaritalStatus], [CurrentStatus], [Organisation], [Designation], [Age], [DOB], [CurrentAddress], [stus], [ClubName]) VALUES (2, 1, N'SomaSundaram', N'9798564231', N'lekshmikanthc@gmail.com', N'KCT', N'MCA', N'2016', N'male', N'Single', N'Working', N'Kaspon', N'developer', 22, CAST(0xB23B0B00 AS Date), N'Chennai', 1, N'Single')
INSERT [dbo].[AluminiClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Institute], [Program], [BatchPassoutYear], [Gender], [MaritalStatus], [CurrentStatus], [Organisation], [Designation], [Age], [DOB], [CurrentAddress], [stus], [ClubName]) VALUES (10, 1, N'SomaSundaram', N'97654321', N'fdf@gmail.com', N'dttr', N'tfry', N'ytfryfr', N'male', N'Married', N'tuftu', N'fubhu', N'ftryf', 32, CAST(0xDD3B0B00 AS Date), N'fyhgv', 0, N'KCT')
INSERT [dbo].[AluminiClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Institute], [Program], [BatchPassoutYear], [Gender], [MaritalStatus], [CurrentStatus], [Organisation], [Designation], [Age], [DOB], [CurrentAddress], [stus], [ClubName]) VALUES (4, 1, N'Lekshmikanth', N'9790248272', N'lekshmikanthc@gmail.com', N'KCT', N'MCA', N'2016', N'male', N'Married', N'Working', N'KASPON', N'Developer', 23, CAST(0x4C1A0B00 AS Date), N'Chennai', 0, N'--Select---')
INSERT [dbo].[AluminiClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Institute], [Program], [BatchPassoutYear], [Gender], [MaritalStatus], [CurrentStatus], [Organisation], [Designation], [Age], [DOB], [CurrentAddress], [stus], [ClubName]) VALUES (11, 1, N'SomaSundaram', N'987654321', N'fdf@gmail.com', N'awdfwa', N'asfase', N'gfdgdf', N'male', N'Married', N'fdgdf', N'fdgdfg', N'fdgfdg', 12, CAST(0xDB3B0B00 AS Date), N'fgdfgdfg', 0, N'KCT')
SET IDENTITY_INSERT [dbo].[AluminiClub] OFF
/****** Object:  Table [dbo].[Entreprenurs]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entreprenurs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NULL,
	[Mobile] [int] NULL,
	[Email] [varchar](20) NULL,
	[Gender] [varchar](20) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[MaritalStatus] [varchar](20) NULL,
	[CitizenShip] [varchar](20) NULL,
	[CompanyName] [varchar](20) NULL,
	[Position] [varchar](20) NULL,
	[Companyfoundedon] [date] NULL,
	[CurrentAddress] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SportdClub]    Script Date: 09/26/2016 11:30:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SportdClub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClubId] [int] NULL,
	[Name] [varchar](20) NULL,
	[Mobile] [int] NULL,
	[Email] [varchar](20) NULL,
	[Gender] [varchar](20) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[Currentaddress] [varchar](20) NULL,
	[area] [varchar](20) NULL,
	[Achievements] [varchar](20) NULL,
	[NationalLevel] [varchar](20) NULL,
	[stus] [tinyint] NULL,
	[ClubName] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SportdClub] ON
INSERT [dbo].[SportdClub] ([Id], [ClubId], [Name], [Mobile], [Email], [Gender], [Age], [DOB], [Currentaddress], [area], [Achievements], [NationalLevel], [stus], [ClubName]) VALUES (5, 3, N'Arun', 1234567890, N'vetri@gmail.com', N'Male', 21, CAST(0x01200B00 AS Date), N'chennai', N'FootBall', N'national level', N'yes', 1, N'FCB')
SET IDENTITY_INSERT [dbo].[SportdClub] OFF
/****** Object:  StoredProcedure [dbo].[reportdisplay]    Script Date: 09/26/2016 11:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[reportdisplay](@tablename varchar(20),@name varchar(20))
as
begin
if(@tablename = 'AluminiClub')
begin
select * from AluminiClub where ClubName = @name
end

if(@tablename = 'SportdClub')
begin
select * from SportdClub where ClubName = @name
end

if(@tablename = 'Entreprenurs')
begin
select * from Entreprenurs where ClubName = @name
end

if(@tablename = 'HealthClub')
begin
select * from HealthClub where ClubName = @name
end

if(@tablename = 'LaughterClub')
begin
select * from LaughterClub where ClubName = @name
end

if(@tablename = 'MusicClub')
begin
select * from MusicClub where ClubName = @name
end

end
GO
/****** Object:  StoredProcedure [dbo].[reportdis]    Script Date: 09/26/2016 11:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[reportdis](@tablename varchar(20),@name varchar(20))
as
begin
if(@tablename = 'AluminiClub')
begin
select * from AluminiClub where ClubName = @name
end
end
GO
/****** Object:  StoredProcedure [dbo].[displaymember]    Script Date: 09/26/2016 11:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[displaymember] (@tablename varchar(20),@name varchar(20),@status tinyint)
as
begin
if(@tablename = 'AluminiClub')
begin
select * from AluminiClub where ClubName = @name
end

if(@tablename = 'SportdClub')
begin
select * from SportdClub where ClubName = @name
end

if(@tablename = 'Entreprenurs')
begin
select * from Entreprenurs where ClubName = @name
end

if(@tablename = 'HealthClub')
begin
select * from HealthClub where ClubName = @name
end

if(@tablename = 'LaughterClub')
begin
select * from LaughterClub where ClubName = @name
end

if(@tablename = 'MusicClub')
begin
select * from MusicClub where ClubName = @name
end

end
GO
/****** Object:  Table [dbo].[descripition]    Script Date: 09/26/2016 11:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[descripition](
	[ClubName] [varchar](20) NULL,
	[Descripition] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[descripition] ([ClubName], [Descripition]) VALUES (N'KCT', N'An alumni association is an association of graduates or, more broadly, of former students (alumni). In the United Kingdom and the United States, alumni of universities, colleges, schools (especially independent schools), fraternities, and sororities often form groups with alumni from the same organization. These associations often organize social events, publish newsletters or magazines, and raise funds for the organization. Many provide a variety of benefits and services that help alumni maintain connections to their educational institution and fellow graduates. In the US, most associations do not require its members to be an alumnus of a university to enjoy membership and privileges.')
INSERT [dbo].[descripition] ([ClubName], [Descripition]) VALUES (N'Divya', NULL)
INSERT [dbo].[descripition] ([ClubName], [Descripition]) VALUES (N'Divya', NULL)
INSERT [dbo].[descripition] ([ClubName], [Descripition]) VALUES (N'WiKi', NULL)
INSERT [dbo].[descripition] ([ClubName], [Descripition]) VALUES (N'FCB', NULL)
/****** Object:  ForeignKey [FK__MusicClub__ClubI__15502E78]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[MusicClub]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__ClubRegis__ClupT__3E52440B]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[ClubRegister]  WITH CHECK ADD FOREIGN KEY([ClubTypeId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__LaughterC__ClubI__1920BF5C]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[LaughterClub]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__HealthClu__ClubI__173876EA]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[HealthClub]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__AluminiCl__ClubI__2B3F6F97]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[AluminiClub]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__Entrepren__ClubI__1367E606]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[Entreprenurs]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__SportdClu__ClubI__24927208]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[SportdClub]  WITH CHECK ADD FOREIGN KEY([ClubId])
REFERENCES [dbo].[TypesOfClubs] ([ClubId])
GO
/****** Object:  ForeignKey [FK__SportdClub__area__25869641]    Script Date: 09/26/2016 11:30:32 ******/
ALTER TABLE [dbo].[SportdClub]  WITH CHECK ADD FOREIGN KEY([area])
REFERENCES [dbo].[TypeofSports] ([Name])
GO
/****** Object:  ForeignKey [FK__descripit__ClubN__412EB0B6]    Script Date: 09/26/2016 11:30:40 ******/
ALTER TABLE [dbo].[descripition]  WITH CHECK ADD FOREIGN KEY([ClubName])
REFERENCES [dbo].[ClubRegister] ([clubName])
GO
