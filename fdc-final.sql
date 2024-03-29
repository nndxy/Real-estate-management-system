USE [master]
GO
/****** Object:  Database [fdc]    Script Date: 07/10/2016 13:34:53 ******/
CREATE DATABASE [fdc] ON  PRIMARY 
( NAME = N'fdc_data', FILENAME = N'd:\xuelanghu\data\fdc_data.mdf' , SIZE = 5120KB , MAXSIZE = 102400KB , FILEGROWTH = 15%)
 LOG ON 
( NAME = N'fdc_log', FILENAME = N'd:\xuelanghu\data\fdc_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 15%)
GO
ALTER DATABASE [fdc] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fdc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fdc] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [fdc] SET ANSI_NULLS OFF
GO
ALTER DATABASE [fdc] SET ANSI_PADDING OFF
GO
ALTER DATABASE [fdc] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [fdc] SET ARITHABORT OFF
GO
ALTER DATABASE [fdc] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [fdc] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [fdc] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [fdc] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [fdc] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [fdc] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [fdc] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [fdc] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [fdc] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [fdc] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [fdc] SET  ENABLE_BROKER
GO
ALTER DATABASE [fdc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [fdc] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [fdc] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [fdc] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [fdc] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [fdc] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [fdc] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [fdc] SET  READ_WRITE
GO
ALTER DATABASE [fdc] SET RECOVERY FULL
GO
ALTER DATABASE [fdc] SET  MULTI_USER
GO
ALTER DATABASE [fdc] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [fdc] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'fdc', N'ON'
GO
USE [fdc]
GO
/****** Object:  Table [dbo].[users]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nickName] [varchar](20) NOT NULL,
	[realName] [varchar](20) NULL,
	[password] [varchar](50) NOT NULL,
	[tel] [varchar](11) NULL,
	[email] [varchar](20) NOT NULL,
	[checked] [bit] NULL,
	[type] [bit] NULL,
	[headImg] [varchar](50) NULL,
	[sex] [bit] NULL,
	[age] [int] NULL,
	[icNumber] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [nickName], [realName], [password], [tel], [email], [checked], [type], [headImg], [sex], [age], [icNumber]) VALUES (1, N'Tmono', N'TXY', N'123', N'1231231231', N'Tmono@gmail.com', 1, 1, N'upload/1467716160513yonghu.png', 0, 23, N'123123123123')
INSERT [dbo].[users] ([id], [nickName], [realName], [password], [tel], [email], [checked], [type], [headImg], [sex], [age], [icNumber]) VALUES (2, N'xulianhui', N'XLH', N'233', N'1232123123', N'xuelanghu@gmail.com', 1, 1, N'upload/1468127172913yonghu.png', 1, 20, N'123213213131231231')
INSERT [dbo].[users] ([id], [nickName], [realName], [password], [tel], [email], [checked], [type], [headImg], [sex], [age], [icNumber]) VALUES (51, N'asd', NULL, N'123123', NULL, N'qwer@mail.com', NULL, 0, N'upload/1468126573441yonghu.png', NULL, NULL, NULL)
INSERT [dbo].[users] ([id], [nickName], [realName], [password], [tel], [email], [checked], [type], [headImg], [sex], [age], [icNumber]) VALUES (52, N'人23', NULL, N'123123', NULL, N'asdf@mail.com', NULL, 0, N'upload/1468128297550yonghu.png', NULL, NULL, NULL)
INSERT [dbo].[users] ([id], [nickName], [realName], [password], [tel], [email], [checked], [type], [headImg], [sex], [age], [icNumber]) VALUES (53, N'QAQ', N'QAQ', N'QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ', N'QAQ', N'QAQ@QQ.COM', NULL, 0, NULL, NULL, 123, N'QAQ')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[recordRent]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recordRent](
	[recordId] [int] IDENTITY(1,1) NOT NULL,
	[houseNewsId] [int] NOT NULL,
	[houseUserId] [int] NOT NULL,
	[recordState] [int] NOT NULL,
	[recordType] [bit] NOT NULL,
	[recordReqTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[recordRent] ON
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (13, 29, 2, 1, 0, CAST(0x0000A63D01391FC9 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (14, 29, 42, 0, 0, CAST(0x0000A63D013B3425 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (15, 2, 2, 3, 1, CAST(0x0000A63E008EC2EF AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (16, 31, 2, 2, 1, CAST(0x0000A63E0098BDC1 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (17, 19, 2, 2, 1, CAST(0x0000A63F0094A1DD AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (18, 11, 44, 1, 0, CAST(0x0000A63F00A06835 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (19, 6, 2, 0, 0, CAST(0x0000A63F00A7A107 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (20, 6, 2, 0, 0, CAST(0x0000A63F00A7AC72 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (21, 6, 2, 0, 0, CAST(0x0000A63F00A80DBD AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (22, 6, 45, 2, 0, CAST(0x0000A63F00B11296 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (23, 2, 2, 0, 1, CAST(0x0000A63F00C0E86E AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (24, 19, 2, 0, 1, CAST(0x0000A63F00C0F33C AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (25, 6, 2, 0, 0, CAST(0x0000A63F00C100C9 AS DateTime))
INSERT [dbo].[recordRent] ([recordId], [houseNewsId], [houseUserId], [recordState], [recordType], [recordReqTime]) VALUES (26, 20, 2, 0, 1, CAST(0x0000A63F00CD89DB AS DateTime))
SET IDENTITY_INSERT [dbo].[recordRent] OFF
/****** Object:  Table [dbo].[mails]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userFromId] [int] NOT NULL,
	[userToId] [int] NOT NULL,
	[title] [varchar](40) NOT NULL,
	[mailContent] [varchar](600) NOT NULL,
	[sendTime] [datetime] NOT NULL,
	[readFlag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[houseNews]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[houseNews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[newsType] [int] NOT NULL,
	[houseReg] [varchar](50) NOT NULL,
	[houseAddDetail] [varchar](500) NOT NULL,
	[houseTitle] [varchar](150) NOT NULL,
	[houseFloor] [int] NOT NULL,
	[housePrice] [int] NOT NULL,
	[houseHall] [int] NOT NULL,
	[houseWc] [int] NOT NULL,
	[houseRoom] [int] NOT NULL,
	[houseArea] [int] NOT NULL,
	[buildType] [varchar](50) NOT NULL,
	[houseDetail] [varchar](5000) NULL,
	[tel] [varchar](20) NOT NULL,
	[img1] [varchar](50) NULL,
	[img2] [varchar](50) NULL,
	[img3] [varchar](50) NULL,
	[img4] [varchar](50) NULL,
	[img5] [varchar](50) NULL,
	[img6] [varchar](50) NULL,
	[houseNewsStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[houseNews] ON
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (1, 2, 0, N'洪山区', N'湖北省武汉市珞喻路152号', N'幸福小区出租屋', 7, 3000, 2, 2, 3, 120, N'商品房', N'精美装修，空间宽敞，空气清新，邻里和谐', N'12323132111', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'img\g1.jpg', N'img\g1.jpg', 2)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (2, 1, 1, N'武昌区', N'湖北省武汉市长征路4号', N'无限小区出租屋', 5, 400000, 2, 2, 4, 132, N'二手房', N'买房子送老婆饼，空气清新，空间宽敞，精美装修，邻里和谐', N'12323132111', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'img\g2.jpg', N'img\g2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (3, 1, 0, N'洪山区', N'123123123123', N'阿萨德亲爱的', 12, 123, 1, 1, 1, 231, N'0', N'1231231', N'31231', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'img\g3.jpg', N'img\g3.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (5, 1, 0, N'洪山区', N'湖北省武汉市虎泉街', N'虎泉附近', 3, 233, 3, 3, 3, 123, N'0', N'去玩儿玩儿去设定法师打发打发转发撒·		房子面积大，位于中心地带，采光好	', N'12313221321', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g3.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (6, 1, 0, N'洪山区', N'街道口', N'街道口商圈三室一厅', 5, 300, 1, 1, 3, 120, N'0', N'hjbkjhjklhjiljljlkopkopkp靠谱靠谱【
', N'12345677895', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g3.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (7, 1, 0, N'洪山区', N'广埠屯', N'华师附近', 2, 150, 1, 1, 1, 60, N'0', N'gjfxmuc', N'15224785985', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, N'upload/1467947938332pic9.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (8, 2, 1, N'武昌区', N'光谷广场', N'光谷附近', 6, 500000, 2, 1, 3, 150, N'0', N'				金融学dnertet6kjdrk7uf			', N'12548975563', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (9, 2, 1, N'武昌区', N'火车站', N'江夏', 4, 700000, 1, 1, 1, 100, N'1', N'					sjtzswertykfu		', N'12345678954', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (10, 2, 0, N'武昌区', N'光谷地铁站附近', N'光谷商圈', 3, 200, 1, 1, 1, 100, N'0', N'精美装修，空间宽敞，空气清新，邻里和谐', N'12356978447', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (11, 2, 0, N'武昌区', N'新长江香榭琴台', N'琴台', 10, 120, 2, 1, 3, 98, N'1', N'					AGETVGBV3AYBVE5RHFD		', N'15544478554', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', NULL, 2)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (12, 2, 1, N'武昌区', N'南湖', N'南湖康泰家园', 12, 100, 1, 1, 1, 70, N'0', N'				wfeaNBt6sercy,mkgi			', N'16713288921', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 2)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (13, 2, 0, N'武昌区', N'汉正街', N'汉正街多福商城', 5, 130, 1, 1, 1, 90, N'0', N'						SZENTFUICDRTFNGXFGTKGC 	', N'163529380090', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, N'upload/1467947938332pic9.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (14, 40, 0, N'武昌区', N'新华家园', N'新华家园三期', 3, 150, 2, 1, 3, 120, N'1', N'					维A，MTFUYJVHG.IKJLO		', N'15638920386', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (15, 40, 1, N'武昌区', N'保利香槟国际', N'保利香槟国际', 10, 100, 1, 1, 1, 70, N'0', N'					当然他们看到，tuygbjokjnpo		', N'18963281038', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (16, 40, 1, N'洪山区', N'香港映象', N'香港映象 豪装轻轨房', 15, 110, 1, 1, 1, 80, N'0', N'					WAETN5SD XUJH,VKJUGFHGBFCVGSD		', N'17831927362', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (17, 40, 0, N'武昌区', N'香港映象', N'香港映象电梯精装大两房', 2, 100, 2, 1, 2, 120, N'0', N'				法师媒体的房产股已经从吗mtfhjy			', N'16739037281', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, N'upload/1467947938332pic9.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (18, 40, 0, N'武昌区', N' 探矿宿舍', N'简易路探矿宿舍 精装电梯大两房', 2, 120, 1, 1, 1, 70, N'0', N'						↑如今他当然也还行的人们提供一个叫，
	', N'17382913029', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (19, 41, 1, N'洪山区', N'保利香槟国际', N'保利香槟国际酒店式公寓 精美装修', 20, 200, 2, 1, 3, 130, N'1', N'						铯们竟然能提交一份，突然想吃肉特么消防工程，h	', N'16278392163', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (20, 41, 1, N'洪山区', N'丽水康城', N'丽水康城 双轨沿线', 16, 210, 2, 1, 3, 130, N'0', N'						estmujvyhi.kjnkn	', N'16278329382', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (21, 41, 1, N'洪山区', N'天下城市星座', N'菱角湖地铁口 唐家墩万达附近', 20, 20000000, 2, 1, 3, 130, N'1', N'					ARSVBILRFHDSGSLF		', N'1531235475', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, N'upload/1467947938332pic9.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (22, 41, 1, N'洪山区', N'九头鸟小区', N'万达对面一室一厅', 8, 15020000, 2, 1, 2, 100, N'1', N'				玩儿法南通大学体育，发成功后			', N'1245212357', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (23, 41, 1, N'江夏区', N'砂布路153号', N'江夏海景家园', 9, 4, 1, 2, 2, 120, N'0', N'阿萨德亲爱的期望啊大大哇爱的是的亲爱我啥的期望哇撒旦的·12哇撒旦·2我说的1下去我掉下去吖1我·', N'123123123', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (24, 41, 0, N'洪山区', N'12312', N'12131241', 21321, 1111, 1, 1, 1, 1231, N'0', N'1233333334123453125321532151235123', N'11', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', N'upload/1467947938333bg2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (25, 42, 0, N'洪山区', N'珞喻路', N'vhjkfrhj ', 10, 100, 1, 1, 2, 100, N'0', N'							', N'21531211', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', N'upload/1467947938333bg2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (26, 42, 0, N'洪山区', N'华中师范大学', N'精装修大房', 4, 1300, 3, 1, 2, 130, N'0', N'	房子采光好						', N'12398123783', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', N'upload/1467947938333bg2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (27, 42, 0, N'洪山区', N'HUASHI', N'ASD', 2, 1, 1, 1, 1, 123, N'0', N'			DETAIL				', N'1', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', N'upload/1467947938333bg2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (28, 42, 0, N'洪山区', N'华中师范大学9#', N'1106', 11, 321, 1, 1, 1, 100, N'0', N'							常年不打扫', N'15527326628', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', N'upload/1467947938332pic9.jpg', N'upload/1467947938333bg2.jpg', 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (29, 42, 0, N'洪山区', N'1231', N'125612351', 123, 1123, 1, 1, 1, 123, N'0', N'							', N'125126521', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 2)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (30, 42, 0, N'洪山区', N'狗逼肥', N'12312512', 123, 1123, 1, 1, 1, 123, N'0', N'							', N'1825412521', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (31, 42, 0, N'洪山区', N'狗', N'12312512', 123, 123, 1, 1, 1, 123, N'0', N'							', N'狗狗狗狗狗', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (32, 42, 0, N'洪山区', N'4567', N'1234253', 53712, 13, 13, 13, 13, 1737, N'0', N'							', N'131313', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 1)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (35, 2, 0, N'江夏区', N'12', N'民族大道司门口', 12, 123, 2, 3, 1, 123, N'0', N'123123123123123123123123123123123123123', N'123123123', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 0)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (36, 2, 0, N'洪山区', N'123', N'123123123', 12, 12, 2, 3, 1, 123, N'0', N'123123123123123123123', N'123123123', N'upload/1468111998827g1.jpg', N'upload/1468111954863g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 0)
INSERT [dbo].[houseNews] ([id], [userId], [newsType], [houseReg], [houseAddDetail], [houseTitle], [houseFloor], [housePrice], [houseHall], [houseWc], [houseRoom], [houseArea], [buildType], [houseDetail], [tel], [img1], [img2], [img3], [img4], [img5], [img6], [houseNewsStatus]) VALUES (37, 2, 0, N'洪山区', N'123', N'123123123', 12, 12, 2, 3, 1, 123, N'0', N'123123123123123123123', N'123123123', N'upload/1468111998827g1.jpg', N'upload/1468111998828g2.jpg', N'upload/1468111998828g3.jpg', N'upload/1468111998828g2.jpg', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[houseNews] OFF
/****** Object:  Table [dbo].[homepage]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[homepage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[divname] [varchar](50) NULL,
	[picadd] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[houseNewsId] [int] NULL,
 CONSTRAINT [PK_homepage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[homepage] ON
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (1, N'pic1', N'upload/1468111998827g1.jpg', N'幸福小区出租屋', 1)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (4, N'pic2', N'img\g2.jpg', N'无限小区出租屋', 2)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (6, N'pic3', N'img\g3.jpg', N'阿萨德亲爱的', 3)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (7, N'pic4', N'upload/1468111998827g1.jpg', N'膜鑫', 5)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (8, N'pic5', N'upload/1468111998827g1.jpg', N'街道口商圈三室一厅', 6)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (9, N'pic6', N'upload/1468111998827g1.jpg', N'华师附近', 7)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (10, N'pic7', N'upload/1468111998827g1.jpg', N'光谷附近', 8)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (11, N'pic8', N'upload/1468111998827g1.jpg', N'江夏', 9)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (12, N'pic9', N'upload/1468111998827g1.jpg', N'光谷商圈', 10)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (13, N'pic10', N'upload/1468111998827g1.jpg', N'琴台', 11)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (14, N'pic11', N'upload/1468111998827g1.jpg', N'南湖康泰家园', 12)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (15, N'pic12', N'upload/1468111998827g1.jpg', N'南湖康泰家园', 12)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (16, N'pic13', N'upload/1468111998827g1.jpg', N'汉正街多福商城', 13)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (17, N'pic14', N'upload/1468111998827g1.jpg', N'新华家园三期', 14)
INSERT [dbo].[homepage] ([id], [divname], [picadd], [remarks], [houseNewsId]) VALUES (18, N'pic15', N'upload/1468111998827g1.jpg', N'保利香槟国际', 15)
SET IDENTITY_INSERT [dbo].[homepage] OFF
/****** Object:  Table [dbo].[comments]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comterId] [int] NOT NULL,
	[comtedId] [int] NOT NULL,
	[content] [varchar](400) NOT NULL,
	[conTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comments] ON
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (18, 40, 6, N'垃圾', CAST(0x0000A22E00000000 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (19, 2, 1, N'道可道，非常道，名可名，非常名。无名天地之始，有名万物之母，此二者同出而异名', CAST(0x00009E6500000000 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (22, 1, 13, N'路过', CAST(0x0000A2A600000000 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (23, 43, 23, N'好房！！！！', CAST(0x0001CB6800000000 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (24, 1, 7, N'学有四失。或失则多；或失则寡；或失则易；或失则止', CAST(0x0000A13900000000 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (25, 2, 1, N'123', CAST(0x0000A63F0094E1C8 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (26, 2, 1, N'12312312312321', CAST(0x0000A63F0094ED51 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (27, 2, 20, N'123
', CAST(0x0000A63F00CD9464 AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (28, 2, 6, N'lalall
', CAST(0x0000A63F00DEA04D AS DateTime))
INSERT [dbo].[comments] ([id], [comterId], [comtedId], [content], [conTime]) VALUES (29, 2, 6, N'alalalalalalallalalalalalalalalalalalalal', CAST(0x0000A63F00DEB314 AS DateTime))
SET IDENTITY_INSERT [dbo].[comments] OFF
/****** Object:  Table [dbo].[collections]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[houseNewsId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[collections] ON
INSERT [dbo].[collections] ([id], [userId], [houseNewsId]) VALUES (59, 44, 6)
INSERT [dbo].[collections] ([id], [userId], [houseNewsId]) VALUES (63, 45, 6)
INSERT [dbo].[collections] ([id], [userId], [houseNewsId]) VALUES (64, 2, 20)
INSERT [dbo].[collections] ([id], [userId], [houseNewsId]) VALUES (65, 2, 6)
SET IDENTITY_INSERT [dbo].[collections] OFF
/****** Object:  Table [dbo].[admins]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admins] ON
INSERT [dbo].[admins] ([id], [userName], [password]) VALUES (1, N'gc', N'gc')
SET IDENTITY_INSERT [dbo].[admins] OFF
/****** Object:  Table [dbo].[wanted]    Script Date: 07/10/2016 13:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wanted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[userTel] [varchar](11) NOT NULL,
	[maxPrice] [int] NOT NULL,
	[minArea] [int] NOT NULL,
	[maxArea] [int] NOT NULL,
	[wantedType] [bit] NOT NULL,
	[details] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[wanted] ON
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (1, 2, N'12312', 123, 111, 21, 0, N'12312321')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (2, 2, N'3434343', 34, 34, 43, 0, N'3434343434343')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (3, 2, N'1', 1, 1, 2, 0, N'1')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (4, 2, N'2', 2, 2, 2, 0, N'2')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (5, 2, N'3', 3, 3, 3, 0, N'3')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (6, 2, N'123123123', 123123, 12, 1231, 0, N'1231231231231231231231')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (7, 2, N'1231231231', 123, 123, 126, 0, N'1231231231231')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (8, 2, N'12312312', 12, 123, 123, 0, N'123123131231231231')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (9, 2, N'123123123', 12, 123, 124, 0, N'12312312312312312')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (10, 2, N'1231231231', 1231231, 123, 1142, 0, N'1231231321123')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (11, 2, N'123123', 12, 123, 123, 0, N'123123123')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (12, 2, N'123123123', 12, 123, 124, 1, N'123`123123123131231231')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (13, 2, N'1', 22, 111, 2222, 0, N'1')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (14, 2, N'wqe', 3, 1, 2, 0, N'2')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (15, 49, N'1234', -100, -100, -100, 0, N'1234')
INSERT [dbo].[wanted] ([id], [userId], [userTel], [maxPrice], [minArea], [maxArea], [wantedType], [details]) VALUES (16, 53, N'-1', -1, -1, -1, 1, N'--------------')
SET IDENTITY_INSERT [dbo].[wanted] OFF
/****** Object:  View [dbo].[VHouseNewsRecord]    Script Date: 07/10/2016 13:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VHouseNewsRecord]
AS
SELECT     dbo.houseNews.houseAddr, dbo.houseNews.houseFloor, dbo.houseNews.housePrice, dbo.houseNews.houseTitle, dbo.houseNews.houseArea, 
                      dbo.houseNews.houseStatus, dbo.houseNews.tel, dbo.houseNews.newsType, dbo.houseNews.photo, dbo.recordRent.houseNewsId, dbo.recordRent.houseUserId, 
                      dbo.recordRent.recordState, dbo.recordRent.recordReqTime, dbo.recordRent.recordType, dbo.recordRent.recordId, dbo.houseNews.id
FROM         dbo.houseNews INNER JOIN
                      dbo.recordRent ON dbo.houseNews.id = dbo.recordRent.houseNewsId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "houseNews"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 251
               Right = 186
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "recordRent"
            Begin Extent = 
               Top = 14
               Left = 324
               Bottom = 259
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHouseNewsRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHouseNewsRecord'
GO
/****** Object:  Default [DF_houseNews_houseNewsStatus]    Script Date: 07/10/2016 13:34:53 ******/
ALTER TABLE [dbo].[houseNews] ADD  CONSTRAINT [DF_houseNews_houseNewsStatus]  DEFAULT ((0)) FOR [houseNewsStatus]
GO
