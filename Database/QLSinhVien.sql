Create Database QLSinhVien
go
USE [QLSinhVien]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[HeDT]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[Lop]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/15/2019 9:19:51 PM ******/
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
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/15/2019 9:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](50) NOT NULL,
	[TenSV] [nvarchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[QueQuan] [nvarchar](50) NULL,
	[MaLop] [varchar](30) NOT NULL,
 CONSTRAINT [PK__SinhVien__2725081A10BCE8E4] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'SQL  ', 5, 7, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'SQL  ', 5, 6, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'CNPM ', 5, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'SQL  ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'Mang ', 5, 4, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'JV   ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'JV   ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'PTHT ', 4, 2, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'SQL  ', 4, 9, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060618     ', N'SQL  ', 4, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'Mang ', 5, 3, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'Mang ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 5, 8, NULL)
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'A01  ', N'Ðại Học')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'B01  ', N'Cao Ðẳng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'CK   ', N'Cõ Khí', N'0437688886')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'CNTT ', N'Công nghệ thông tin', N'0437688887')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'DT   ', N'Ðiện tử', N'0437688888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'ELEC ', N'Điện', N'0964563535')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DienThoai]) VALUES (N'KT   ', N'Kinh Tế', N'0437688889')
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
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'CNPM ', N'Công Ngh? ph?n m?m', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'JV   ', N'Java', 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'Mang ', N'M?ng máy tính', 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'PTHT ', N'Phân tích h? th?ng', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'SQL  ', N'SQL', 5)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060128     ', N'Nguyễn Minh Thu', 1, CAST(N'1997-09-21T00:00:00.000' AS DateTime), N'Hải Dương', N'D10QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060138     ', N'Nguyễn Văn Tí', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Cần Thơ', N'D10QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060148     ', N'Nguyễn Thùy Linh', 0, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Bắc Giang', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060158     ', N'Nguyễn Văn Chiến', 0, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Hà Nội', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060168     ', N'Nguyễn Thị Linh', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Hải Dương', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060178     ', N'Đàm Văn Huynh', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Nam Định', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060218     ', N'Đàm Quang Vinh', 0, CAST(N'1989-08-27T00:00:00.000' AS DateTime), N'Hà Nội', N'D11TMDT')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060318     ', N'Trần Thị Nga', 1, CAST(N'1989-02-08T00:00:00.000' AS DateTime), N'Nam Định', N'D11TMDT')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060418     ', N'Nguyễn Quỳnh Hương', 1, CAST(N'1989-07-04T00:00:00.000' AS DateTime), N'Ninh Bình', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060518     ', N'Nguyễn Văn Minh', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Hà Nội', N'D10CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060618     ', N'Lương Văn Sáng', 0, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Nghệ An', N'D11CNPM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060718     ', N'Dương Phương Nam', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'hà Tĩnh', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060818     ', N'Nguyễn Văn Huy', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Hà Nội', N'D11QTANM')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060918     ', N'Nguyễn Diệu Quỳnh', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Hải Dương', N'D10QTDN')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060978     ', N'Nguyễn Ngọc An', 1, CAST(N'1989-07-08T00:00:00.000' AS DateTime), N'Cà Mau', N'D10CNPM')
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
