USE [master]
GO
/****** Object:  Database [QLSinhVien]    Script Date: 1/3/2020 2:38:56 PM ******/
CREATE DATABASE [QLSinhVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSinhVien', FILENAME = N'F:\Setup\SQL Server\Root directory\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLSinhVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSinhVien_log', FILENAME = N'F:\Setup\SQL Server\Root directory\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLSinhVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLSinhVien] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSinhVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSinhVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSinhVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSinhVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSinhVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSinhVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSinhVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSinhVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSinhVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSinhVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSinhVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSinhVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSinhVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSinhVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSinhVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSinhVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSinhVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSinhVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSinhVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSinhVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSinhVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSinhVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSinhVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSinhVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSinhVien] SET  MULTI_USER 
GO
ALTER DATABASE [QLSinhVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSinhVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSinhVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSinhVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSinhVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSinhVien', N'ON'
GO
ALTER DATABASE [QLSinhVien] SET QUERY_STORE = OFF
GO
USE [QLSinhVien]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QLSinhVien]
GO
/****** Object:  User [DamNgocSon]    Script Date: 1/3/2020 2:38:56 PM ******/
CREATE USER [DamNgocSon] FOR LOGIN [DamNgocSon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaSV] [varchar](50) NULL,
	[MaMH] [varchar](20) NULL,
	[HocKy] [int] NOT NULL,
	[DiemLan1] [int] NULL,
	[DiemLan2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [varchar](30) NOT NULL,
	[TenHeDT] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK__HeDT__0C0AE79430AD232D] PRIMARY KEY CLUSTERED 
(
	[MaHeDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [varchar](30) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
	[DienThoai] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Khoa__6539040561C48EA3] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKhoaHoc] [varchar](15) NOT NULL,
	[TenKhoaHoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__KhoaHoc__48F0FF98AF8AA0C5] PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](30) NOT NULL,
	[TenLop] [nvarchar](30) NOT NULL,
	[MaKhoa] [varchar](30) NULL,
	[MaHeDT] [varchar](30) NULL,
	[MaKhoaHoc] [varchar](15) NULL,
 CONSTRAINT [PK__Lop__3B98D273C3B4F987] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](20) NOT NULL,
	[TenMH] [nvarchar](30) NOT NULL,
	[SoTrinh] [int] NOT NULL,
 CONSTRAINT [PK__MonHoc__2725DFD94A29A331] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 1/3/2020 2:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](50) NOT NULL,
	[TenSV] [nvarchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [varchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[MaLop] [varchar](30) NOT NULL,
 CONSTRAINT [PK__SinhVien__2725081A10BCE8E4] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060158', N'SQL', 2, 7, 7)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'SQL  ', 2, 6, 8)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'CNPM ', 1, 8, 9)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 1, 2, 7)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'JV   ', 2, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 1, 2, 7)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'PTHT ', 1, 2, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'SQL  ', 2, 9, 7)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060618     ', N'SQL  ', 2, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'SQL  ', 2, 9, 7)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'Mang ', 2, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 1, 2, 7)
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'A01  ', N'Ðại Học')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'B01  ', N'Cao Ðẳng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'CK   ', N'Cõ Khí', N'0437688886')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'CNTT ', N'Công nghệ thông tin', N'0437688887')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'DT   ', N'Ðiện tử', N'0437688888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'ELEC ', N'Điện', N'0964563535')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'KT   ', N'Kinh Tế', N'0437688889')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'QLNN', N'Quản lí năng lượng', N'98654352')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C15  ', N'Khóa Cao Đẳng thứ 15')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C16  ', N'Khóa Cao Đẳng thứ 16')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C17  ', N'Khóa Cao Đẳng thứ 17')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C18  ', N'Khóa Cao Đẳng thứ 18')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C19  ', N'Khóa Cao Đẳng thứ 19')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'C20  ', N'Khóa Cao Đẳng thứ 20')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D10  ', N'Khóa Đại Học thứ 10')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D11  ', N'Khóa Đại Học thứ 11')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D12  ', N'Khóa Đại Học thứ 12')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D13  ', N'Khóa Đại Học thứ 13')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D14  ', N'Khóa Đại Học thứ 14')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D8   ', N'Khóa Đại Học thứ 8')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'D9   ', N'Khóa Đại Học thứ 9')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D10CNPM', N'D10 Công nghệ phần mềm', N'CNTT ', N'A01  ', N'D10')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D10QTANM', N'D10 Quản trị an ninh mạnh', N'CNTT ', N'A01  ', N'D10')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D10QTDN', N'D10 Quản trị doanh nghiệp', N'KT   ', N'A01  ', N'D10')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D11CNPM', N'D11 Công nghệ phần mềm', N'CNTT', N'A01', N'D11')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D11QTANM', N'D11 Quản trị an ninh mạnh', N'CNTT ', N'A01  ', N'D11')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'D11TMDT', N'D11 Thương mại điện tử', N'CNTT ', N'A01  ', N'D11')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'abcd', N'Học Máy', 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'CNPM ', N'Công Ngh? ph?n m?m', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'JV   ', N'Java', 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'Mang ', N'M?ng máy tính', 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'PTHT ', N'Phân tích h? th?ng', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'SQL  ', N'SQL', 5)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060128     ', N'Nguyễn Minh Thu', 1, N'Sep 21 1997 12:00AM', N'Hải Dương', N'D10CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060138     ', N'Nguyễn Văn Tẹo', 0, N'21/09/1995', N'Kon Tum', N'D11CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060148     ', N'Nguyễn Thùy Linh', 0, N'Jul  8 1989 12:00AM', N'Bắc Giang', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060158     ', N'Nguyễn Văn Chiến', 0, N'Jul  8 1989 12:00AM', N'Hà Nội', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060168     ', N'Nguyễn Thị Linh', 1, N'Jul  8 1989 12:00AM', N'Hải Dương', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060178     ', N'Đàm Văn Huynh', 1, N'Jul  8 1989 12:00AM', N'Nam Định', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060218     ', N'Đàm Quang Vinh', 0, N'Aug 27 1989 12:00AM', N'Hà Nội', N'D11TMDT')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060318     ', N'Trần Thị Nga', 1, N'Feb  8 1989 12:00AM', N'Nam Định', N'D11TMDT')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060418     ', N'Nguyễn Quỳnh Hương', 1, N'Jul  4 1989 12:00AM', N'Ninh Bình', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060518     ', N'Nguyễn Văn Minh', 1, N'Jul  8 1989 12:00AM', N'Hà Nội', N'D10CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060618     ', N'Lương Văn Sáng', 0, N'Jul  8 1989 12:00AM', N'Nghệ An', N'D11CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060718     ', N'Dương Phương Nam', 1, N'Jul  8 1989 12:00AM', N'hà Tĩnh', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060818     ', N'Nguyễn Văn Huy', 1, N'Jul  8 1989 12:00AM', N'Hà Nội', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060918     ', N'Nguyễn Diệu Quỳnh', 1, N'Jul  8 1989 12:00AM', N'Hải Dương', N'D10QTDN')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060978     ', N'Nguyễn Ngọc An', 1, N'Jul  8 1989 12:00AM', N'Cà Mau', N'D10CNPM')
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK__Diem__MaMH__33D4B598] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK__Diem__MaMH__33D4B598]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK__Diem__MaSV__32E0915F] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK__Diem__MaSV__32E0915F]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK__Lop__MaHeDT__2D27B809] FOREIGN KEY([MaHeDT])
REFERENCES [dbo].[HeDT] ([MaHeDT])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK__Lop__MaHeDT__2D27B809]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK__Lop__MaKhoa__2C3393D0] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK__Lop__MaKhoa__2C3393D0]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_KhoaHoc] FOREIGN KEY([MaKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([MaKhoaHoc])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_KhoaHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK__Diem__HocKy__34C8D9D1] CHECK  (([HocKy]>(0)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK__Diem__HocKy__34C8D9D1]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK__MonHoc__SoTrinh__239E4DCF] CHECK  (([SoTrinh]>(0) AND [SoTrinh]<(7)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK__MonHoc__SoTrinh__239E4DCF]
GO
USE [master]
GO
ALTER DATABASE [QLSinhVien] SET  READ_WRITE 
GO
