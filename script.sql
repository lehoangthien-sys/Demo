USE [master]
GO
/****** Object:  Database [quanliresort]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
CREATE DATABASE [quanliresort]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanliresort', FILENAME = N'D:\Downloads\ResortDTN\quanliresort.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quanliresort_log', FILENAME = N'D:\Downloads\ResortDTN\quanliresort_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [quanliresort] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanliresort].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanliresort] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanliresort] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanliresort] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanliresort] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanliresort] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanliresort] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [quanliresort] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanliresort] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanliresort] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanliresort] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanliresort] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanliresort] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanliresort] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanliresort] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanliresort] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanliresort] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanliresort] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanliresort] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanliresort] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanliresort] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanliresort] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanliresort] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanliresort] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [quanliresort] SET  MULTI_USER 
GO
ALTER DATABASE [quanliresort] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanliresort] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanliresort] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanliresort] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [quanliresort] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [quanliresort] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [quanliresort] SET QUERY_STORE = OFF
GO
USE [quanliresort]
GO
/****** Object:  Table [dbo].[Account]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RePassword] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[AssignRoomID] [int] NULL,
	[CustomerID] [int] NULL,
	[BookingFrom] [nvarchar](50) NULL,
	[BookingTo] [nvarchar](50) NULL,
	[Quantity] [nchar](10) NULL,
	[TotalAmount] [int] NULL,
	[RoomPrice] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingStatus]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingStatus](
	[BookingStatusID] [int] IDENTITY(1,1) NOT NULL,
	[BookingStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_BookingStatus] PRIMARY KEY CLUSTERED 
(
	[BookingStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DoB] [date] NULL,
	[Gender] [nchar](10) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[DoB] [date] NULL,
	[Gender] [nchar](10) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NULL,
	[EmployeeID] [int] NULL,
	[PaymentTypeID] [int] NULL,
	[PaymentAmount] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [varchar](5) NULL,
	[RoomPrice] [nvarchar](50) NULL,
	[BookingStatusID] [int] NULL,
	[RoomTypeID] [int] NULL,
	[RoomCapacity] [int] NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: CN, 23, 07, 2023 20:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [UserName], [Password], [RePassword], [RoleID]) VALUES (1, N'Le Dinh Dinh', N'012345', N'012345', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (18, 1, 1, N'23/05/2021', N'25', N'1         ', 1, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (19, 1, 1, N'01/01/2021', N'02/01/2021', N'1         ', 4, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (20, 1, 1, N'01/01/2021', N'02/01/2021', N'2         ', 2, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (21, 1, 1, N'01/01/2021', N'02/01/2021', N'2         ', 2, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (22, 1, 1, N'01/01/2021', N'02/01/2021', N'2         ', NULL, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (23, 1, 1, N'01/01/2021', N'25/05/2021', N'2         ', 401, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (24, 1, 1, N'01/01/2021', N'25/05/2021', N'2         ', 1111111, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (25, 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (26, 1, 1, N'01/01/2021', N'02/01/2021', N'2         ', 50000, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (27, 6, 1, N'01/01/2021', N'02/01/2021', N'2         ', 50000, NULL)
INSERT [dbo].[Booking] ([BookingID], [AssignRoomID], [CustomerID], [BookingFrom], [BookingTo], [Quantity], [TotalAmount], [RoomPrice]) VALUES (29, 1, 1, N'23/05/2021', N'02/01/2021', N'2         ', 10000000, 1000000)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingStatus] ON 

INSERT [dbo].[BookingStatus] ([BookingStatusID], [BookingStatusName]) VALUES (1, N'Trống')
INSERT [dbo].[BookingStatus] ([BookingStatusID], [BookingStatusName]) VALUES (2, N'Có Người')
INSERT [dbo].[BookingStatus] ([BookingStatusID], [BookingStatusName]) VALUES (3, N'Đã Đặt Trước')
SET IDENTITY_INSERT [dbo].[BookingStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Address], [Email], [DoB], [Gender]) VALUES (1, N'DFGHJKL', N'TP HCM', N'ldsknfdsjfn@gmai.com', CAST(N'1000-12-12' AS Date), N'Nữ       ')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Address], [Email], [DoB], [Gender]) VALUES (5, N'Nguyễn Văn A', N'Quận 1', N'abc@gmail.com', CAST(N'1000-02-01' AS Date), N'Nam       ')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [DoB], [Gender]) VALUES (1, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [DoB], [Gender]) VALUES (2, N'trung', CAST(N'1000-02-01' AS Date), N'Nam       ')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [DoB], [Gender]) VALUES (5, N'khoa', CAST(N'1000-12-12' AS Date), N'Nam       ')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentType] ON 

INSERT [dbo].[PaymentType] ([PaymentTypeID], [PaymentTypeName]) VALUES (1, N'Credit Card')
INSERT [dbo].[PaymentType] ([PaymentTypeID], [PaymentTypeName]) VALUES (2, N'Internet Banking')
INSERT [dbo].[PaymentType] ([PaymentTypeID], [PaymentTypeName]) VALUES (3, N'Cash')
SET IDENTITY_INSERT [dbo].[PaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Nhân Viên ')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Khách Hàng')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (1, N'A01.1', N'100000.000', 2, 1, 5, N'Phòng Rộng Rãi')
INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (5, N'A01.1', N'100k/1h', 1, 2, 2, N'Gía cả phù hợp túi tiền')
INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (6, N'A01.2', N'200/1h', 1, 3, 6, N'Phù Hợp Cho Gia Đình')
INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (7, N'A01.3', N'300k/1h', 1, 1, 2, N'Phòng Rộng Rãi')
INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (8, N'A01.1', N'12000000', 1, 1, 2, N'Phòng Rộng Rãi')
INSERT [dbo].[Room] ([RoomID], [RoomNumber], [RoomPrice], [BookingStatusID], [RoomTypeID], [RoomCapacity], [Description]) VALUES (10, N'A01.3', N'12000000', 1, 1, 1, N'Phù Hợp Cho Gia Đình')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON 

INSERT [dbo].[RoomType] ([RoomTypeID], [RoomTypeName]) VALUES (1, N'Phòng VIP')
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomTypeName]) VALUES (2, N'Phòng Đơn ')
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomTypeName]) VALUES (3, N'Phòng Đôi')
INSERT [dbo].[RoomType] ([RoomTypeID], [RoomTypeName]) VALUES (4, N'Phòng Gia Đình')
SET IDENTITY_INSERT [dbo].[RoomType] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Room] FOREIGN KEY([AssignRoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Room]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Booking] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Employee]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([PaymentTypeID])
REFERENCES [dbo].[PaymentType] ([PaymentTypeID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_BookingStatus] FOREIGN KEY([BookingStatusID])
REFERENCES [dbo].[BookingStatus] ([BookingStatusID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_BookingStatus]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
USE [master]
GO
ALTER DATABASE [quanliresort] SET  READ_WRITE 
GO
