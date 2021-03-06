-- För att installera denna databas, öppna den här filen i SQL Server Management
-- Studio (antingen genom File > Open > File eller genom drag-and-drop) och kör
-- sedan filen med Execute. Om databasen inte dyker upp i vänsterkolumnen,
-- högerklicka på Databases och välj Refresh.

USE [master]
GO
/****** Object:  Database [Session1Solution]    Script Date: 2018-11-21 15:53:56 ******/
CREATE DATABASE [Session1Solution]
GO
ALTER DATABASE [Session1Solution] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Session1Solution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Session1Solution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Session1Solution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Session1Solution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Session1Solution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Session1Solution] SET ARITHABORT OFF 
GO
ALTER DATABASE [Session1Solution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Session1Solution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Session1Solution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Session1Solution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Session1Solution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Session1Solution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Session1Solution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Session1Solution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Session1Solution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Session1Solution] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Session1Solution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Session1Solution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Session1Solution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Session1Solution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Session1Solution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Session1Solution] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Session1Solution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Session1Solution] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Session1Solution] SET  MULTI_USER 
GO
ALTER DATABASE [Session1Solution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Session1Solution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Session1Solution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Session1Solution] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Session1Solution] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Session1Solution] SET QUERY_STORE = OFF
GO
USE [Session1Solution]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 2018-11-21 15:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ReleaseDate] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Band]    Script Date: 2018-11-21 15:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Band](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[YearFormed] [smallint] NOT NULL,
	[Country] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 2018-11-21 15:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Length] [int] NOT NULL,
	[Lyrics] [nvarchar](max) NULL,
	[Single] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([ID], [Title], [ReleaseDate]) VALUES (1, N'Evolve', CAST(N'2017-06-23' AS Date))
INSERT [dbo].[Album] ([ID], [Title], [ReleaseDate]) VALUES (2, N'Burnin''', CAST(N'1973-10-19' AS Date))
SET IDENTITY_INSERT [dbo].[Album] OFF
SET IDENTITY_INSERT [dbo].[Band] ON 

INSERT [dbo].[Band] ([ID], [Name], [YearFormed], [Country]) VALUES (1, N'Imagine Dragons', 2008, N'USA')
INSERT [dbo].[Band] ([ID], [Name], [YearFormed], [Country]) VALUES (2, N'ABBA', 1972, N'Sweden')
INSERT [dbo].[Band] ([ID], [Name], [YearFormed], [Country]) VALUES (3, N'Crash Test Dummies', 1988, N'Canada')
SET IDENTITY_INSERT [dbo].[Band] OFF
SET IDENTITY_INSERT [dbo].[Song] ON 

INSERT [dbo].[Song] ([ID], [Title], [Length], [Lyrics], [Single]) VALUES (1, N'Believer', 203, N'[Verse 1]
First things first
I''ma say all the words inside my head
I''m fired up and tired of the way that things have been, oh-ooh
The way that things have been, oh-ooh
Second thing second
Don''t you tell me what you think that I could be
I''m the one at the sail, I''m the master of my sea, oh-ooh
The master of my sea, oh-ooh

[Pre-Chorus]
I was broken from a young age
Taking my sulking to the masses
Writing my poems for the few
That look at me, took to me, shook to me, feeling me
Singing from heartache from the pain
Taking my message from the veins
Speaking my lesson from the brain
Seeing the beauty through the...

[Chorus]
Pain!
You made me a, you made me a believer, believer
Pain!
You break me down and build me up, believer, believer
Pain!
Oh let the bullets fly, oh let them rain
My life, my love, my drive, it came from...
Pain!
You made me a, you made me a believer, believer

[Verse 2]
Third things third
Send a prayer to the ones up above
All the hate that you''ve heard has turned your spirit to a dove, oh-ooh
Your spirit up above, oh-ooh

[Pre-Chorus 2]
I was choking in the crowd
Building my rain up in the cloud
Falling like ashes to the ground
Hoping my feelings, they would drown
But they never did, ever lived, ebbing and flowing
Inhibited, limited
Till it broke open and rained down
You rained down, like...

[Chorus]
Pain!
You made me a, you made me a believer, believer
Pain!
You break me down and build me up, believer, believer
Pain!
Oh let the bullets fly, oh let them rain
My life, my love, my drive, it came from...
Pain!
You made me a, you made me a believer, believer

[Bridge]
Last things last
By the grace of the fire and the flames
You''re the face of the future, the blood in my veins, oh-ooh
The blood in my veins, oh-ooh
But they never did, ever lived, ebbing and flowing
Inhibited, limited
Till it broke open and rained down
It rained down, like...

[Chorus]
Pain!
You made me a, you made me a believer, believer
Pain!
You break me down and build me up, believer, believer
Pain!
Oh let the bullets fly, oh let them rain
My life, my love, my drive, it came from...
Pain!
You made me a, you made me a believer, believer', 1)
INSERT [dbo].[Song] ([ID], [Title], [Length], [Lyrics], [Single]) VALUES (3, N'Whatever It Takes', 201, N'Falling too fast to prepare for this
Tripping in the world could be dangerous
Everybody circling is vulturous
Negative, nepotist
Everybody waiting for the fall of man
Everybody praying for the end of times
Everybody hoping they could be the one
I was born to run, I was born for this', 1)
INSERT [dbo].[Song] ([ID], [Title], [Length], [Lyrics], [Single]) VALUES (5, N'Who We Are', 249, NULL, 0)
INSERT [dbo].[Song] ([ID], [Title], [Length], [Lyrics], [Single]) VALUES (6, N'Roots', 174, NULL, 1)
INSERT [dbo].[Song] ([ID], [Title], [Length], [Lyrics], [Single]) VALUES (8, N'Thunder', 187, N'Just a young gun with a quick fuse', 1)
SET IDENTITY_INSERT [dbo].[Song] OFF
USE [master]
GO
ALTER DATABASE [Session1Solution] SET  READ_WRITE 
GO
