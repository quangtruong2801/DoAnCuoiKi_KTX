USE [master]
GO
/****** Object:  Database [QUAN_LY_KTX]    Script Date: 7/23/2023 9:36:41 AM ******/
CREATE DATABASE [QUAN_LY_KTX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LY_KTX', FILENAME = N'D:\App\MySQLSever\MSSQL16.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KTX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUAN_LY_KTX_log', FILENAME = N'D:\App\MySQLSever\MSSQL16.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KTX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUAN_LY_KTX] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LY_KTX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LY_KTX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUAN_LY_KTX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KTX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KTX] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LY_KTX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LY_KTX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LY_KTX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LY_KTX] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUAN_LY_KTX] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUAN_LY_KTX] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUAN_LY_KTX] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUAN_LY_KTX]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 7/23/2023 9:36:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[ngaytao] [datetime] NOT NULL,
	[maphong] [int] NOT NULL,
	[tiendiennuoc] [float] NULL,
	[tongtien] [float] NULL,
	[tienphong] [float] NULL,
	[tenhs] [nvarchar](50) NULL,
	[tennv] [nvarchar](50) NULL,
	[maphieudiennuoc] [int] NOT NULL,
 CONSTRAINT [PK__HOADON__981D1EB23CD73055] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[maphong] [int] NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NOT NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK__HOCSINH__7A2100A91276970E] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH_NEW]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH_NEW](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK_HOCSINH_NEW] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH_OLD]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH_OLD](
	[mahs] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[quequan] [nvarchar](100) NULL,
	[gioitinh] [bit] NULL,
	[ttphuhuynh] [nvarchar](150) NULL,
	[lop] [nvarchar](30) NULL,
 CONSTRAINT [PK_HOCSINH_OLD] PRIMARY KEY CLUSTERED 
(
	[mahs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_DIENNUOC]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_DIENNUOC](
	[maphieu] [int] IDENTITY(1,1) NOT NULL,
	[ngaytaophieu] [datetime] NULL,
	[maphong] [int] NOT NULL,
	[sodien] [int] NULL,
	[sonuoc] [int] NULL,
	[giadien] [int] NULL,
	[gianuoc] [int] NULL,
	[tongtien] [float] NULL,
 CONSTRAINT [PK__PHIEU_DI__A72B518548848E65] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[maphong] [int] IDENTITY(1,1) NOT NULL,
	[tenphong] [nvarchar](50) NOT NULL,
	[tsogiuong] [int] NOT NULL,
	[tang] [int] NULL,
	[tinhtrang] [bit] NULL,
 CONSTRAINT [PK__PHONG__BBA25480B37DBAB9] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[matk] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[email] [nvarchar](100) NOT NULL,
	[pass] [nvarchar](100) NOT NULL,
	[cvu] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU](
	[mavt] [int] IDENTITY(1,1) NOT NULL,
	[tenvattu] [nvarchar](100) NULL,
	[soluong] [int] NULL,
	[giatien] [float] NULL,
 CONSTRAINT [PK__VATTU__7A208E5D08B15BC7] PRIMARY KEY CLUSTERED 
(
	[mavt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU_PHONG]    Script Date: 7/23/2023 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU_PHONG](
	[ID] [int] NOT NULL,
	[maphong] [int] NOT NULL,
	[mavt] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_VATTU_PHONG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 
GO
INSERT [dbo].[HOADON] ([mahd], [ngaytao], [maphong], [tiendiennuoc], [tongtien], [tienphong], [tenhs], [tennv], [maphieudiennuoc]) VALUES (1, CAST(N'2023-05-31T10:07:53.000' AS DateTime), 1, NULL, 2500000, 2500000, N'Nguyễn Văn A', N'Quang Trường', 1)
GO
INSERT [dbo].[HOADON] ([mahd], [ngaytao], [maphong], [tiendiennuoc], [tongtien], [tienphong], [tenhs], [tennv], [maphieudiennuoc]) VALUES (3, CAST(N'2023-07-22T12:44:59.000' AS DateTime), 2, NULL, 2000000, 2000000, N'Nguyễn Văn A', N'Quang Trường', 1)
GO
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[HOCSINH] ON 
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, 1, N'Đặng Quang Trường ', CAST(N'2002-01-28T00:00:00.000' AS DateTime), N'Bình Dương', 1, N'QV', N'D20CNTT01')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, 1, N'Nguyễn Trọng Dương', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Bình Dương', 1, N'NO', N'D20CNTT01')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, 1, N'Phan Lê Minh Long', CAST(N'2002-07-01T00:00:00.000' AS DateTime), N'Bình Dương', 1, N'NO', N'D20CNTT01')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, 1, N'Tống Viết Tài', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Bình Dương', 1, N'NO', N'D20CNTT01')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (6, 2, N'Nguyễn Thành Danh', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Bình Dương', 1, N'No', N'D20CNTT01')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (7, 2, N'Nguyễn Nhi', CAST(N'1998-12-01T00:00:00.000' AS DateTime), N'Bình Phước', 1, N'No', N'9E')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (8, 3, N'Hồng Nhung', CAST(N'1990-02-03T00:00:00.000' AS DateTime), N'Hà Nam', 0, N'NO', N'7A')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (9, 3, N'Thúy Anh', CAST(N'2001-02-02T00:00:00.000' AS DateTime), N'Hà Nội', 0, N'', N'9A')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (10, 3, N'Phú Mỹ', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Hà Tĩnh', 1, N'', N'8B')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (13, 4, N'Nguyễn Hà', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Hà Nam', 0, N'', N'9A')
GO
INSERT [dbo].[HOCSINH] ([mahs], [maphong], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (16, 4, N'Thế Anh', CAST(N'2000-02-09T00:00:00.000' AS DateTime), N'Nghệ An', 1, N'', N'7E')
GO
SET IDENTITY_INSERT [dbo].[HOCSINH] OFF
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_NEW] ON 
GO
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (1, N'hs mới 1', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
GO
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, N'hs mới 2', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'BP', 1, N'no', N'9a')
GO
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, N'hs mới 3', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
GO
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, N'hs mới 4', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'TP.HCM', 1, N'no', N'9a')
GO
INSERT [dbo].[HOCSINH_NEW] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, N'hs mới 5', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'9a')
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_NEW] OFF
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_OLD] ON 
GO
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (1, N'hs cũ 1', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'VT', 1, N'no', N'no')
GO
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (2, N'hs cũ 2', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'VL', 1, N'no', N'no')
GO
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (3, N'hs cũ 3', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
GO
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (4, N'hs cũ 4', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'BD', 1, N'no', N'no')
GO
INSERT [dbo].[HOCSINH_OLD] ([mahs], [hoten], [ngaysinh], [quequan], [gioitinh], [ttphuhuynh], [lop]) VALUES (5, N'hs cũ 5', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'hn', 1, N'no', N'no')
GO
SET IDENTITY_INSERT [dbo].[HOCSINH_OLD] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEU_DIENNUOC] ON 
GO
INSERT [dbo].[PHIEU_DIENNUOC] ([maphieu], [ngaytaophieu], [maphong], [sodien], [sonuoc], [giadien], [gianuoc], [tongtien]) VALUES (1, CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, 54, 456, 456, 654, 46)
GO
INSERT [dbo].[PHIEU_DIENNUOC] ([maphieu], [ngaytaophieu], [maphong], [sodien], [sonuoc], [giadien], [gianuoc], [tongtien]) VALUES (3, CAST(N'2001-02-02T00:00:00.000' AS DateTime), 1, 45, 54, 654, 456, 64)
GO
INSERT [dbo].[PHIEU_DIENNUOC] ([maphieu], [ngaytaophieu], [maphong], [sodien], [sonuoc], [giadien], [gianuoc], [tongtien]) VALUES (4, CAST(N'2022-05-15T20:41:34.000' AS DateTime), 1, 25, 435, 345, 5, 5)
GO
SET IDENTITY_INSERT [dbo].[PHIEU_DIENNUOC] OFF
GO
SET IDENTITY_INSERT [dbo].[PHONG] ON 
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (1, N'Phòng 1A', 8, 1, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (2, N'Phòng 2A', 8, 1, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (3, N'Phòng 3A', 8, 1, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (4, N'Phòng 4A', 6, 1, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (6, N'Phòng 5A', 6, 1, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (7, N'Phòng 1B', 5, 2, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (8, N'Phòng 2B', 5, 2, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (9, N'Phòng 3B', 7, 2, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (10, N'Phòng 4B', 6, 2, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (11, N'Phòng 5B', 8, 2, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (12, N'Phòng 1C', 7, 3, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (13, N'Phòng 2C', 8, 3, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (14, N'Phòng 3C', 7, 3, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (15, N'Phòng 4C', 5, 3, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (16, N'Phòng 5D', 5, 3, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (17, N'Phòng 1D', 7, 4, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (18, N'Phòng 2D', 8, 4, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (19, N'Phòng 3D', 7, 4, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (20, N'Phòng 4D', 5, 4, 1)
GO
INSERT [dbo].[PHONG] ([maphong], [tenphong], [tsogiuong], [tang], [tinhtrang]) VALUES (21, N'Phòng 5D', 5, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[PHONG] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 
GO
INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (1, N'Quang Trường', N'truongtruong2801@gmail.com', N'123456', N'ADMIN')
GO
INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (2, N'Nguyễn Trọng Dương', N'duong12@gmail.com', N'123456', N'Nhân viên')
GO
INSERT [dbo].[TAIKHOAN] ([matk], [hoten], [email], [pass], [cvu]) VALUES (4, N'Phan Lê Minh Long', N'long123@gmail.com', N'123456', N'Nhân viên')
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[VATTU] ON 
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (1, N'Bàn ', 12, 120000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (2, N'Giường', 123, 450000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (3, N'Tủ', 32, 345000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (4, N'Ghế', 76, 65000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (5, N'Điều hòa', 43, 2300000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (6, N'Máy giặt ', 56, 5600000)
GO
INSERT [dbo].[VATTU] ([mavt], [tenvattu], [soluong], [giatien]) VALUES (8, N'máy tính', 4, 456)
GO
SET IDENTITY_INSERT [dbo].[VATTU] OFF
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ngayhoadon]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC] ADD  CONSTRAINT [DF_PHIEU_DIENNUOC_ngaytaophieu]  DEFAULT (getdate()) FOR [ngaytaophieu]
GO
ALTER TABLE [dbo].[VATTU_PHONG] ADD  CONSTRAINT [DF_VATTU_PHONG_soluong]  DEFAULT ((1)) FOR [soluong]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_dn_1] FOREIGN KEY([maphieudiennuoc])
REFERENCES [dbo].[PHIEU_DIENNUOC] ([maphieu])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_dn_1]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_PHONG] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_PHONG]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [fk_ii_1] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [fk_ii_1]
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC]  WITH CHECK ADD  CONSTRAINT [fk_p_2] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
GO
ALTER TABLE [dbo].[PHIEU_DIENNUOC] CHECK CONSTRAINT [fk_p_2]
GO
ALTER TABLE [dbo].[VATTU_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_VATTU_PHONG_PHONG] FOREIGN KEY([maphong])
REFERENCES [dbo].[PHONG] ([maphong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VATTU_PHONG] CHECK CONSTRAINT [FK_VATTU_PHONG_PHONG]
GO
ALTER TABLE [dbo].[VATTU_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_VATTU_PHONG_VATTU] FOREIGN KEY([mavt])
REFERENCES [dbo].[VATTU] ([mavt])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VATTU_PHONG] CHECK CONSTRAINT [FK_VATTU_PHONG_VATTU]
GO
USE [master]
GO
ALTER DATABASE [QUAN_LY_KTX] SET  READ_WRITE 
GO
