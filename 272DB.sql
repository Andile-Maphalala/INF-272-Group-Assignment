USE [master]
GO
/****** Object:  Database [Del 4 272]    Script Date: 2019/10/22 03:16:10 ******/
CREATE DATABASE [Del 4 272]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Del 4 272', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SYSARCH\MSSQL\DATA\Del 4 272.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Del 4 272_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SYSARCH\MSSQL\DATA\Del 4 272_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Del 4 272] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Del 4 272].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Del 4 272] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Del 4 272] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Del 4 272] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Del 4 272] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Del 4 272] SET ARITHABORT OFF 
GO
ALTER DATABASE [Del 4 272] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Del 4 272] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Del 4 272] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Del 4 272] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Del 4 272] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Del 4 272] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Del 4 272] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Del 4 272] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Del 4 272] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Del 4 272] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Del 4 272] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Del 4 272] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Del 4 272] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Del 4 272] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Del 4 272] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Del 4 272] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Del 4 272] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Del 4 272] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Del 4 272] SET  MULTI_USER 
GO
ALTER DATABASE [Del 4 272] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Del 4 272] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Del 4 272] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Del 4 272] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Del 4 272] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Del 4 272]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CellphoneNo] [char](10) NOT NULL,
	[UserID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Learner]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Learner](
	[LearnerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[ParentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LevelID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Learner] PRIMARY KEY CLUSTERED 
(
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Level]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Level](
	[LevelID] [int] IDENTITY(1,1) NOT NULL,
	[LevelDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parent](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PracGame]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PracGame](
	[PracGameID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[PracType] [numeric](1, 0) NOT NULL,
	[LevelID] [int] NOT NULL,
 CONSTRAINT [PK_PracGame] PRIMARY KEY CLUSTERED 
(
	[PracGameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PracGameQuestion]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracGameQuestion](
	[PracQuestionID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PracGameID] [int] NOT NULL,
 CONSTRAINT [PK_PracGameQuestion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PracQuestion]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PracQuestion](
	[PracQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](250) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Type] [numeric](1, 0) NOT NULL,
 CONSTRAINT [PK_PracQuestion] PRIMARY KEY CLUSTERED 
(
	[PracQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PracticalGameAttempt]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracticalGameAttempt](
	[PracticalGameScore] [int] NOT NULL,
	[PracGameID] [int] NOT NULL,
	[LearnerID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttemptDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PracticalGameAttempt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShortStory]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShortStory](
	[ShortStoryID] [int] IDENTITY(1,1) NOT NULL,
	[ShortStoryDescription] [varchar](50) NOT NULL,
	[ShortStoryPdfPath] [varchar](max) NOT NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_ShortStory] PRIMARY KEY CLUSTERED 
(
	[ShortStoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheoryGame]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheoryGame](
	[TheoryGameID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[TheoryVideo] [char](254) NOT NULL,
	[TheoryType] [numeric](1, 0) NOT NULL,
	[LevelID] [int] NOT NULL,
 CONSTRAINT [PK_TheoryGame] PRIMARY KEY CLUSTERED 
(
	[TheoryGameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheoryGameAttempt]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoryGameAttempt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NULL,
	[AttemptDate] [datetime] NULL,
	[TheoryGameID] [int] NOT NULL,
	[LearnerID] [int] NOT NULL,
 CONSTRAINT [PK_TheoryGameAttempt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheoryGameQuestion]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoryGameQuestion](
	[TheoryGameID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TheoryQuestionID] [int] NOT NULL,
 CONSTRAINT [PK_TheoryGameQuestion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheoryQuestion]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheoryQuestion](
	[TheoryQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](250) NOT NULL,
	[Answer] [varchar](250) NOT NULL,
	[Type] [numeric](1, 0) NOT NULL,
 CONSTRAINT [PK_TheoryQuestion] PRIMARY KEY CLUSTERED 
(
	[TheoryQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Guid] [varchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2019/10/22 03:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeDescription] [char](10) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [AdminName], [Surname], [Email], [CellphoneNo], [UserID], [GenderID]) VALUES (1, N'Andile', N'Maphalala', N'andy@gmail.com', N'0823456789', 1, 2)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'South Africa')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'France')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Malawi')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (4, N'Canada')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (5, N'Japan')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderID], [Description]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([GenderID], [Description]) VALUES (2, N'Female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Learner] ON 

INSERT [dbo].[Learner] ([LearnerID], [Name], [Surname], [DOB], [ParentID], [UserID], [LevelID], [GenderID]) VALUES (2, N'h', N't', CAST(N'2006-12-30' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Learner] ([LearnerID], [Name], [Surname], [DOB], [ParentID], [UserID], [LevelID], [GenderID]) VALUES (3, N'tg', N'fg', CAST(N'2019-10-22' AS Date), 1, 8, 1, 1)
INSERT [dbo].[Learner] ([LearnerID], [Name], [Surname], [DOB], [ParentID], [UserID], [LevelID], [GenderID]) VALUES (4, N'fffff', N'fg', CAST(N'2019-10-22' AS Date), 1, 9, 1, 1)
SET IDENTITY_INSERT [dbo].[Learner] OFF
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([LevelID], [LevelDescription]) VALUES (1, N'Theory')
INSERT [dbo].[Level] ([LevelID], [LevelDescription]) VALUES (2, N'Practical')
INSERT [dbo].[Level] ([LevelID], [LevelDescription]) VALUES (3, N'Entertainment')
SET IDENTITY_INSERT [dbo].[Level] OFF
SET IDENTITY_INSERT [dbo].[Parent] ON 

INSERT [dbo].[Parent] ([ParentID], [Name], [Surname], [DOB], [Email], [UserID], [CountryID], [GenderID]) VALUES (1, N'mino', N'mum', CAST(N'1987-12-30 00:00:00.000' AS DateTime), N'ecvf', 1, 1, 1)
INSERT [dbo].[Parent] ([ParentID], [Name], [Surname], [DOB], [Email], [UserID], [CountryID], [GenderID]) VALUES (3, N'rt', N'hg', CAST(N'2019-10-20 18:21:41.150' AS DateTime), N'jh@gmail.com', 5, 1, 1)
INSERT [dbo].[Parent] ([ParentID], [Name], [Surname], [DOB], [Email], [UserID], [CountryID], [GenderID]) VALUES (4, N'hh', N'hhh', CAST(N'2019-10-20 18:24:56.573' AS DateTime), N'jh@gmail.com', 6, 1, 1)
INSERT [dbo].[Parent] ([ParentID], [Name], [Surname], [DOB], [Email], [UserID], [CountryID], [GenderID]) VALUES (5, N'tg', N'fg', CAST(N'2019-10-18 00:00:00.000' AS DateTime), N'edc@gmail.com', 7, 1, 1)
SET IDENTITY_INSERT [dbo].[Parent] OFF
SET IDENTITY_INSERT [dbo].[PracGame] ON 

INSERT [dbo].[PracGame] ([PracGameID], [Description], [PracType], [LevelID]) VALUES (1, N'Alphabet', CAST(0 AS Numeric(1, 0)), 2)
INSERT [dbo].[PracGame] ([PracGameID], [Description], [PracType], [LevelID]) VALUES (2, N'Number', CAST(1 AS Numeric(1, 0)), 2)
SET IDENTITY_INSERT [dbo].[PracGame] OFF
SET IDENTITY_INSERT [dbo].[PracQuestion] ON 

INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (1, N'apple', N'~/Content/WordGameImages/apple.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (3, N'ball', N'~/Content/WordGameImages/ball.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (4, N'car', N'~/Content/WordGameImages/car.png', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (5, N'dog', N'~/Content/WordGameImages/dog.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (6, N'glass', N'~/Content/WordGameImages/glass.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (7, N'horse', N'~/Content/WordGameImages/horse.png', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (10, N'pen', N'~/Content/WordGameImages/pen.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (11, N'shoe', N'~/Content/WordGameImages/shoe.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (12, N'tree', N'~/Content/WordGameImages/tree.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (13, N'wheel', N'~/Content/WordGameImages/wheel.jpg', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (14, N'one', N'~/Content/NumberGameImages/one.png', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (15, N'two', N'~/Content/NumberGameImages/two.png', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (16, N'three', N'~/Content/NumberGameImages/three.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (17, N'four', N'~/Content/NumberGameImages/four.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (18, N'five', N'~/Content/NumberGameImages/five.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (19, N'six', N'~/Content/NumberGameImages/six.png', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (20, N'seven', N'~/Content/NumberGameImages/seven.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (21, N'eight', N'~/Content/NumberGameImages/eight.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (22, N'nine', N'~/Content/NumberGameImages/nine.jpg', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[PracQuestion] ([PracQuestionID], [Answer], [Image], [Type]) VALUES (23, N'ten', N'~/Content/NumberGameImages/ten.jpg', CAST(1 AS Numeric(1, 0)))
SET IDENTITY_INSERT [dbo].[PracQuestion] OFF
SET IDENTITY_INSERT [dbo].[PracticalGameAttempt] ON 

INSERT [dbo].[PracticalGameAttempt] ([PracticalGameScore], [PracGameID], [LearnerID], [ID], [AttemptDate]) VALUES (2, 1, 2, 1, CAST(N'2019-10-21 14:00:35.940' AS DateTime))
INSERT [dbo].[PracticalGameAttempt] ([PracticalGameScore], [PracGameID], [LearnerID], [ID], [AttemptDate]) VALUES (4, 1, 2, 2, CAST(N'2019-10-21 14:03:03.617' AS DateTime))
INSERT [dbo].[PracticalGameAttempt] ([PracticalGameScore], [PracGameID], [LearnerID], [ID], [AttemptDate]) VALUES (3, 1, 2, 3, CAST(N'2019-10-22 01:39:38.643' AS DateTime))
INSERT [dbo].[PracticalGameAttempt] ([PracticalGameScore], [PracGameID], [LearnerID], [ID], [AttemptDate]) VALUES (4, 1, 2, 4, CAST(N'2019-10-22 01:41:39.733' AS DateTime))
INSERT [dbo].[PracticalGameAttempt] ([PracticalGameScore], [PracGameID], [LearnerID], [ID], [AttemptDate]) VALUES (1, 1, 2, 5, CAST(N'2019-10-22 02:05:29.090' AS DateTime))
SET IDENTITY_INSERT [dbo].[PracticalGameAttempt] OFF
SET IDENTITY_INSERT [dbo].[ShortStory] ON 

INSERT [dbo].[ShortStory] ([ShortStoryID], [ShortStoryDescription], [ShortStoryPdfPath], [Image]) VALUES (1, N'Cinderella', N'~/Content/ShortStory/Cinderella.pdf', N'~/Content/EntertainmentImages/cinderella.jpg')
INSERT [dbo].[ShortStory] ([ShortStoryID], [ShortStoryDescription], [ShortStoryPdfPath], [Image]) VALUES (2, N'HumptyDumpty', N'~/Content/ShortStory/HumptyDumpty.pdf', N'~/Content/EntertainmentImages/humpty 2.jpg')
INSERT [dbo].[ShortStory] ([ShortStoryID], [ShortStoryDescription], [ShortStoryPdfPath], [Image]) VALUES (3, N'Little Red Riding Hood', N'~/Content/ShortStory/Little-red-riding-hood.pdf', N'~/Content/EntertainmentImages/little red.jpg')
SET IDENTITY_INSERT [dbo].[ShortStory] OFF
SET IDENTITY_INSERT [dbo].[TheoryGame] ON 

INSERT [dbo].[TheoryGame] ([TheoryGameID], [Description], [TheoryVideo], [TheoryType], [LevelID]) VALUES (1, N'Number', N'https://www.youtube.com/embed/glkQwKA5_PU                                                                                                                                                                                                                     ', CAST(0 AS Numeric(1, 0)), 1)
INSERT [dbo].[TheoryGame] ([TheoryGameID], [Description], [TheoryVideo], [TheoryType], [LevelID]) VALUES (2, N'Alphabet', N'https://www.youtube.com/embed/75p-N9YKqNo                                                                                                                                                                                                                     ', CAST(1 AS Numeric(1, 0)), 1)
SET IDENTITY_INSERT [dbo].[TheoryGame] OFF
SET IDENTITY_INSERT [dbo].[TheoryGameAttempt] ON 

INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (8, 9, CAST(N'2006-12-30 00:38:54.840' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (9, 1, CAST(N'2019-10-22 01:16:40.903' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (10, 6, CAST(N'2019-10-22 01:30:36.900' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (11, 0, CAST(N'2019-10-22 01:32:25.667' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (12, 0, CAST(N'2019-10-22 01:32:25.733' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (13, 0, CAST(N'2019-10-22 01:32:25.760' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (14, 0, CAST(N'2019-10-22 01:32:25.793' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (15, 0, CAST(N'2019-10-22 01:32:25.817' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (16, 1, CAST(N'2019-10-22 01:32:25.837' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (17, 1, CAST(N'2019-10-22 01:32:25.860' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (18, 1, CAST(N'2019-10-22 01:32:25.890' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (19, 1, CAST(N'2019-10-22 01:32:25.917' AS DateTime), 1, 2)
INSERT [dbo].[TheoryGameAttempt] ([ID], [Score], [AttemptDate], [TheoryGameID], [LearnerID]) VALUES (20, 2, CAST(N'2019-10-22 01:32:25.940' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[TheoryGameAttempt] OFF
SET IDENTITY_INSERT [dbo].[TheoryQuestion] ON 

INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (1, N'1 2 _ 4', N'3', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (2, N'1 _ 3 4', N'2', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (3, N'7 _ 9 10', N'8', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (4, N'5 6 _ 8', N'7', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (5, N'3 4 _ 6', N'5', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (6, N'_ 2 3 4', N'1', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (7, N'7 8 9 _', N'10', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (8, N'3 _ 5 6', N'4', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (9, N'6 7 8 _ 10', N'9', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (10, N'4 5 _ 7', N'6', CAST(0 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (11, N'A B _ D', N'C', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (12, N'E _ G H', N'F', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (13, N'I J _ L', N'K', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (14, N'W _ Y Z', N'X', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (15, N'P Q _ S', N'R', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (16, N'M N _ P', N'O', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (17, N'S T _ V', N'U', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (18, N'L M _ O ', N'N', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (19, N'T U _ W', N'V', CAST(1 AS Numeric(1, 0)))
INSERT [dbo].[TheoryQuestion] ([TheoryQuestionID], [Question], [Answer], [Type]) VALUES (20, N'C D _ F', N'E', CAST(1 AS Numeric(1, 0)))
SET IDENTITY_INSERT [dbo].[TheoryQuestion] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (1, N'Andy', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', CAST(N'2019-10-22 02:07:01.367' AS DateTime), 1, N'135e98f4-ade5-49b9-add1-9c0606e2a394')
INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (5, N'Ye', N'EE425DF98582637BAC95ED97CBF450C593D75E34CF832FD8ACB5913392C52DD8', CAST(N'2019-10-22 02:08:11.933' AS DateTime), 2, N'9991d093-6c3c-47cd-9e60-06f7c859c686')
INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (6, N'You', N'BB0347A468D97E98A9C00E37CEBEC1AB930F6F1221CAE0F1FBB92B07E1900BA2', CAST(N'2019-10-22 01:57:01.337' AS DateTime), 3, N'd8ba08d2-3291-42f1-9991-124dba57e391')
INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (7, N'uyf', N'475322f76aceac32281bed56f20f2c86c110b8ca6ba4f86c274fe7a2d4a17625', CAST(N'2019-10-22 02:18:50.837' AS DateTime), 2, N'0b257959-25cb-4734-9666-bd3fce88fd6a')
INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (8, N'ur', N'4cd8cf8e48cfb313c2c5136ab40bd2b5f43de704542db49b85c0a2006a47832e', CAST(N'2019-10-22 02:28:14.780' AS DateTime), 2, N'e7c64da0-91cd-4076-ab6f-4ce6224f9606')
INSERT [dbo].[User] ([UserID], [Username], [Password], [LastLoginDate], [UserTypeID], [Guid]) VALUES (9, N'tty', N'544996b31a8aa7a9e58ab3f43eacffd8510d1cc7cb1d3404bf9caaea638bda99', CAST(N'2019-10-22 02:30:58.560' AS DateTime), 2, N'e9fba094-001c-45bc-b0c8-1a22f1795182')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([UserTypeID], [UserTypeDescription]) VALUES (1, N'Admin     ')
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeDescription]) VALUES (2, N'Parent    ')
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeDescription]) VALUES (3, N'Learner   ')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Gender]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Learner_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Learner_Gender]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Learner_Level] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Level] ([LevelID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Learner_Level]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Learner_Parent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parent] ([ParentID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Learner_Parent]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Learner_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Learner_User]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Country]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Gender]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_User]
GO
ALTER TABLE [dbo].[PracGame]  WITH CHECK ADD  CONSTRAINT [FK_PracGame_Level] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Level] ([LevelID])
GO
ALTER TABLE [dbo].[PracGame] CHECK CONSTRAINT [FK_PracGame_Level]
GO
ALTER TABLE [dbo].[PracGameQuestion]  WITH CHECK ADD  CONSTRAINT [FK_PracGameQuestion_PracGame] FOREIGN KEY([PracGameID])
REFERENCES [dbo].[PracGame] ([PracGameID])
GO
ALTER TABLE [dbo].[PracGameQuestion] CHECK CONSTRAINT [FK_PracGameQuestion_PracGame]
GO
ALTER TABLE [dbo].[PracGameQuestion]  WITH CHECK ADD  CONSTRAINT [FK_PracGameQuestion_PracQuestion] FOREIGN KEY([PracQuestionID])
REFERENCES [dbo].[PracQuestion] ([PracQuestionID])
GO
ALTER TABLE [dbo].[PracGameQuestion] CHECK CONSTRAINT [FK_PracGameQuestion_PracQuestion]
GO
ALTER TABLE [dbo].[PracticalGameAttempt]  WITH CHECK ADD  CONSTRAINT [FK_PracticalGameAttempt_Learner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[PracticalGameAttempt] CHECK CONSTRAINT [FK_PracticalGameAttempt_Learner]
GO
ALTER TABLE [dbo].[PracticalGameAttempt]  WITH CHECK ADD  CONSTRAINT [FK_PracticalGameAttempt_PracGame] FOREIGN KEY([PracGameID])
REFERENCES [dbo].[PracGame] ([PracGameID])
GO
ALTER TABLE [dbo].[PracticalGameAttempt] CHECK CONSTRAINT [FK_PracticalGameAttempt_PracGame]
GO
ALTER TABLE [dbo].[TheoryGame]  WITH CHECK ADD  CONSTRAINT [FK_TheoryGame_Level] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Level] ([LevelID])
GO
ALTER TABLE [dbo].[TheoryGame] CHECK CONSTRAINT [FK_TheoryGame_Level]
GO
ALTER TABLE [dbo].[TheoryGameAttempt]  WITH CHECK ADD  CONSTRAINT [FK_TheoryGameAttempt_Learner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[TheoryGameAttempt] CHECK CONSTRAINT [FK_TheoryGameAttempt_Learner]
GO
ALTER TABLE [dbo].[TheoryGameAttempt]  WITH CHECK ADD  CONSTRAINT [FK_TheoryGameAttempt_TheoryGame] FOREIGN KEY([TheoryGameID])
REFERENCES [dbo].[TheoryGame] ([TheoryGameID])
GO
ALTER TABLE [dbo].[TheoryGameAttempt] CHECK CONSTRAINT [FK_TheoryGameAttempt_TheoryGame]
GO
ALTER TABLE [dbo].[TheoryGameQuestion]  WITH CHECK ADD  CONSTRAINT [FK_TheoryGameQuestion_TheoryGame] FOREIGN KEY([TheoryGameID])
REFERENCES [dbo].[TheoryGame] ([TheoryGameID])
GO
ALTER TABLE [dbo].[TheoryGameQuestion] CHECK CONSTRAINT [FK_TheoryGameQuestion_TheoryGame]
GO
ALTER TABLE [dbo].[TheoryGameQuestion]  WITH CHECK ADD  CONSTRAINT [FK_TheoryGameQuestion_TheoryQuestion] FOREIGN KEY([TheoryQuestionID])
REFERENCES [dbo].[TheoryQuestion] ([TheoryQuestionID])
GO
ALTER TABLE [dbo].[TheoryGameQuestion] CHECK CONSTRAINT [FK_TheoryGameQuestion_TheoryQuestion]
GO
USE [master]
GO
ALTER DATABASE [Del 4 272] SET  READ_WRITE 
GO
