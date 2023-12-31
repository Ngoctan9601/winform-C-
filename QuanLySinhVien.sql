USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[DiemHocPhan]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemHocPhan](
	[MaLopHP] [nvarchar](24) NOT NULL,
	[MaSV] [int] NOT NULL,
	[DiemThiQT] [float] NULL,
	[DiemThiKT] [float] NULL,
	[DiemTK] [float] NULL,
	[XepLoaiHocLuc] [nvarchar](24) NULL,
 CONSTRAINT [PK_QLDiem] PRIMARY KEY CLUSTERED 
(
	[MaLopHP] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Username] [nvarchar](24) NULL,
	[MaNganh] [nvarchar](24) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [nvarchar](24) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[Khoa] [nvarchar](10) NULL,
	[MaNganh] [nvarchar](24) NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaLopHP] [nvarchar](24) NOT NULL,
	[MaGV] [int] NULL,
	[MaMH] [nvarchar](24) NULL,
	[MaLop] [nvarchar](24) NULL,
 CONSTRAINT [PK_LopHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](24) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[SoTC] [int] NULL,
	[HocKy] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NganhHoc]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganhHoc](
	[MaNganh] [nvarchar](24) NOT NULL,
	[TenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NienKhoa]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NienKhoa](
	[Khoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[NamNK] [nvarchar](24) NULL,
 CONSTRAINT [PK_NienKhoa] PRIMARY KEY CLUSTERED 
(
	[Khoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[TenSV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](12) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [nvarchar](24) NULL,
	[Username] [nvarchar](24) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](24) NOT NULL,
	[Pass] [nvarchar](24) NULL,
	[Quyen] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 1, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 3, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 6, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 7, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 10, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 12, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 15, 7.5, 7.5, 7.5, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 17, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 18, 6, 6, 6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 19, 5, 7, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015701', 20, 5, 5, 5, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 2, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 3, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 4, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 5, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 6, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 7, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 9, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 12, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 18, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 19, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100015902', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 4, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 6, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 7, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 11, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 14, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 17, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100016002', 20, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 1, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 3, 6.3, 7.2, 6.84, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 4, 6.5, 6.5, 6.5, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 5, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 6, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 7, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 8, 6, 7.2, 6.72, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 9, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 10, 10, 10, 10, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 11, 9.5, 10, 9.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 12, 7, 7.5, 7.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 13, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 14, 5, 6, 5.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 15, 5, 7, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 16, 6.5, 7, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 17, 7.5, 7.5, 7.5, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 19, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017002', 20, 6, 6.5, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 21, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 22, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 23, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 24, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 26, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 29, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017003', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017004', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017004', 33, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017004', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100017004', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 2, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 3, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 4, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 6, 7, 7, 7, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 7, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 9, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 10, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 13, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 14, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 16, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 17, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018005', 20, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018105', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100018405', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 2, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 3, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 5, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 6, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 7, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 8, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 9, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 12, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 13, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 18, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019706', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 1, 9, 9, 9, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 2, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 3, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 4, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 5, 5, 2, 3.2, N'Yeu')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 6, 5, 5, 5, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 7, 6, 5, 5.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 8, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 9, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 10, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 11, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 12, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 13, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 14, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 15, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 16, 9, 8, 8.4, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 17, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 18, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 19, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100019901', 20, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 1, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 2, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 3, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 4, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 5, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 6, 9, 9, 9, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 7, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 8, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 9, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 10, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 11, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 15, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 16, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 18, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100020102', 20, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 1, 8.5, 8, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 4, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 6, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 7, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 8, 6, 6.5, 6.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 12, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 13, 7, 7.5, 7.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 14, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 15, 7, 7.5, 7.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 16, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 17, 10, 5, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 18, 5, 6, 5.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 19, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100035605', 20, 8.8, 7.8, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 2, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 3, 8, 5, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 5, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 7, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 8, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 10, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 11, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 12, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 13, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 14, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 16, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 17, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 18, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100049317', 20, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 3, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 5, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 6, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 7, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 9, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 12, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 17, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 19, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057310', 20, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 1, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 2, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 4, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 6, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 9, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 10, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 16, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 17, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057411', 20, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 1, 8, 9, 8.6, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 2, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 3, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 4, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 5, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 6, 7, 8, 7.6, N'Kha')
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 7, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 8, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 9, 7, 9, 8.2, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 10, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 11, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 12, 8, 9, 8.6, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 13, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 14, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 15, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 16, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 17, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 18, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 19, 7, 6, 6.4, N'Trung binh')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057606', 20, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 5, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 6, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 7, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 8, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 9, 6.5, 7, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 11, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 12, 7, 6.5, 6.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 13, 7.5, 6, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 14, 6.5, 7, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 16, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 18, 7.5, 7, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 19, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100057703', 20, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 1, 9, 9, 9, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 2, 8, 8, 8, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 3, 7, 8, 7.6, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 4, 7, 7, 7, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 5, 8, 8.5, 8.3, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 6, 7.7, 7.5, 7.58, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 7, 7.5, 8.5, 8.1, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 8, 7, 7.5, 7.3, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 9, 8.5, 9, 8.8, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 10, 9, 10, 9.6, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 11, 9, 9.5, 9.3, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 12, 8.5, 7.5, 7.9, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 13, 8.5, 7.5, 7.9, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 14, 6.5, 6, 6.2, N'Trung bình')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 15, 7, 7.2, 7.12, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 16, 8, 8.8, 8.48, N'Gi?i')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 17, 7.5, 8, 7.8, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 18, 7.5, 8, 7.8, N'Khá')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 19, 6.5, 6, 6.2, N'Trung bình')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058406', 20, 6, 7, 6.4, N'Yếu')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 21, 6, 6, 6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 22, 7, 5.5, 6.1, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 23, 7.6, 6.5, 6.94, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 24, 7.8, 6.8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 26, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 27, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 28, 7.6, 6.7, 7.06, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 29, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 30, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058407', 31, 8.5, 9, 8.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 3, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 4, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 5, 8, 5, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 9, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 12, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 15, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 16, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 17, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100058535', 20, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 1, 8, 9, 8.6, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 2, 8, 7, 7.4, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 3, 9, 8, 8.4, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 4, 9, 8, 8.4, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 5, 7, 9, 8.2, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 6, 8, 8, 8, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 7, 8, 6, 6.8, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 8, 8, 9, 8.6, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 9, 7, 7, 7, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 10, 6, 6, 6, N'C')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 11, 7, 7, 7, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 12, 8, 7, 7.4, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 13, 8, 8, 8, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 14, 9, 7, 7.8, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 15, 7, 8, 7.6, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 16, 9, 8, 8.4, N'A')
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 17, 9, 9, 9, N'A')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 18, 7, 8, 7.6, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 19, 8, 7, 7.4, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100059107', 20, 7, 8, 7.6, N'B')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 1, 9, 8, 8.4, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 2, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 3, 9, 8, 8.4, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 4, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 5, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 6, 9, 8, 8.4, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 7, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 8, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 9, 7, 9, 8.2, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 10, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 11, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 12, 9, 8, 8.4, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 13, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 14, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 15, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 16, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 17, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 18, 9, 7, 7.8, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 19, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100096906', 20, 5, 6, 5.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 2, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 3, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 4, 8.5, 9, 8.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 5, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 7, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 8, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 9, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 10, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 12, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 13, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 14, 9, 8.5, 8.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 15, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 16, 8, 8.5, 8.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 17, 8.5, 9, 8.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 18, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 19, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100105305', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107506', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 2, 7.8, 7, 7.32, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 3, 7.8, 7, 7.32, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 4, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 7, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 10, 10, 10, 10, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 11, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 14, 5, 7, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 15, 6, 5, 5.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 17, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 19, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107608', 20, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 1, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 3, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 7, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 12, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 13, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 15, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 16, 6, 7, 6.6, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 17, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 18, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 19, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107702', 20, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 2, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 4, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 5, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 6, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 7, 9, 6, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 8, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 10, 9, 6, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 11, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 12, 8, 5, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 13, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 16, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 17, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 18, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 19, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100107805', 20, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108701', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 18, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100108702', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 2, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 3, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 5, 6, 6, 6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 6, 7.5, 9, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 7, 7.5, 8.5, 8.1, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 10, 7, 5, 5.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 12, 6, 3, 4.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 13, 5, 3, 3.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 14, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 15, 4, 4, 4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 17, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 18, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 19, 8, 5, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100110308', 20, 5, 5, 5, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 2, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 3, 7, 7.5, 7.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 4, 7, 6.5, 6.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 5, 8, 6.8, 7.28, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 6, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 7, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 8, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 10, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 14, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 16, 8, 7, 7.4, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 17, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 18, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 19, 5, 6, 5.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100112905', 20, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 1, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 2, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 5, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 6, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 8, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 9, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 13, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 14, 8, 8.5, 8.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 16, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 17, 8.7, 8, 8.28, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 18, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113205', 20, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 1, 8, 9, 8.6, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 2, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 3, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 4, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 5, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 6, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 7, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 8, 6, 8, 7.2, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 9, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 10, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 11, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 12, 8, 9, 8.6, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 13, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 14, 6, 7, 6.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 15, 7, 7, 7, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 16, 7, 8, 7.6, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 17, 8, 7, 7.4, N'Kha')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 18, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 19, 9, 9, 9, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100113305', 20, 8, 8, 8, N'Gioi')
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 4, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 5, 8.5, 6, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 6, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 7, 7.5, 7, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 9, 7.5, 9, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 10, 9, 10, 9.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 11, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 14, 6, 5, 5.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 15, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 18, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100115605', 20, 7.5, 8.5, 8.1, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 1, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 3, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 4, 8.6, 7.8, 8.12, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 6, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 9, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 10, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 12, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 13, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 14, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 17, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 18, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 19, 5, 9, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100121505', 20, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 2, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 4, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 5, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 7, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 12, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 16, 8, 8, 8, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 17, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 18, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122433', 20, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 2, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 3, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 4, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 6, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 7, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 8, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 10, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 11, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 12, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 15, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 16, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 19, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122539', 20, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 2, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 3, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 4, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 6, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 9, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 10, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 11, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 12, 7, 5, 5.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 15, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 16, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 18, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 19, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122614', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 5, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 7, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 8, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 9, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 10, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 11, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 12, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 13, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 14, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 16, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 17, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 18, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 19, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100122737', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 4, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 5, 6, 7.5, 6.9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 6, 6, 5, 5.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 7, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 8, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 9, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 12, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 13, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 14, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 16, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127406', 20, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 2, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 3, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 4, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 6, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 7, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 8, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 10, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 13, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 14, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 15, 8.5, 9, 8.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 16, 8, 9, 8.6, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 17, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127506', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 1, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 3, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 4, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 5, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 6, 6, 6, 6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 7, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 10, 10, 10, 10, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 11, 8, 7.5, 7.7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 13, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 14, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 15, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 16, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100127609', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 2, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 4, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 6, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 7, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 8, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 9, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 10, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 11, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 12, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 13, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 18, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129005', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 2, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 3, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 4, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 5, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 7, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 8, 8.5, 8, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 9, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 10, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 14, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 17, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 18, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100129105', 20, 8.5, 8, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 1, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 2, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 3, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 4, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 6, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 7, 8, 8.5, 8.3, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 8, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 9, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 10, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 13, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 14, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 15, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 17, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 18, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 19, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100132605', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 3, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 4, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 6, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 7, 6, 6, 6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 8, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 9, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 10, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 11, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 12, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 13, 6, 8, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 14, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 16, 6, 8, 7.2, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 18, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 19, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100136810', 20, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 1, 8.5, 8, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 4, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 5, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 6, 8.5, 7, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 7, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 8, 7, 10, 8.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 9, 9, 6, 7.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 11, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 12, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 13, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 15, 7, 5, 5.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 16, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 17, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 18, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100138405', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 1, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 2, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 3, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 7, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 8, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 9, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 10, 7, 9, 8.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 11, 6, 7, 6.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 12, 5, 7, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 13, 7, 5, 5.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 14, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 16, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 17, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 18, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185302', 20, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 1, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 2, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 3, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 4, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 5, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 6, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 7, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 8, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 9, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 10, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 11, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 12, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 13, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 14, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 15, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 16, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 17, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 18, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 19, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100185406', 20, 7.5, 8, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 1, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 2, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 3, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 4, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 5, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 6, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 7, 9, 7, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 8, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 9, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 11, 9, 9, 9, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 12, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 13, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 14, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 15, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 16, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 17, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 18, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 19, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100212944', 20, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 1, 9, 10, 9.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 2, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 3, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 4, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 5, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 6, 7, 6, 6.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 8, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 9, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 10, 8, 10, 9.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 11, 7, 10, 8.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 12, 6, 10, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 13, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 14, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 15, 5, 8, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 16, 7, 9, 8.2, NULL)
GO
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 17, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 18, 6, 9, 7.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 19, 5, 7, 6.2, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215141', 20, 8, 6, 6.8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 1, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 2, 9, 8, 8.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 3, 8, 9, 8.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 4, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 5, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 6, 7, 8, 7.6, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 7, 8, 8, 8, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 8, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 9, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 10, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 11, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 12, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 13, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 14, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 15, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 16, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 17, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 18, 7, 7, 7, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 19, 8, 7, 7.4, NULL)
INSERT [dbo].[DiemHocPhan] ([MaLopHP], [MaSV], [DiemThiQT], [DiemThiKT], [DiemTK], [XepLoaiHocLuc]) VALUES (N'010100215605', 20, 9, 9, 9, NULL)
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (1, N'Phạm Thị Thư', CAST(N'1985-12-12' AS Date), 0, N'ptt@gmail.com', N'0985014385', N'Nam Định', N'gv01', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (2, N'Hà Diệu Hằng ', CAST(N'1985-12-12' AS Date), 0, N'hdh@gmail.com', N'0975903779', N'Hà Nam', N'gv02', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (3, N'Vũ Đại Đồng', CAST(N'1985-12-12' AS Date), 1, N'vdd@gmail.com', N'0975903779', N'Hà Nội', N'gv03', N'QTKD')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (4, N'Vũ Thu Uyên', CAST(N'1985-12-12' AS Date), 0, N'vtu@gmai.com', N'0975903779', N'Bắc Ninh', N'gv04', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (5, N'Lê Thị Thu Hiền', CAST(N'1985-12-12' AS Date), 0, N'ltth@gmai.com', N'0975903779', N'Nam Định', N'gv05', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (6, N'Bùi Thị Huế', CAST(N'1985-12-10' AS Date), 0, N'bth@gmai.com', N'0329168308', N'Hà Nội', N'gv06', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (7, N'Hà Thị Thanh', CAST(N'1985-11-12' AS Date), 0, N'htt@gmai.com', N'0372118911', N'Hải Dương', N'gv07', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (8, N'Bùi Thanh Thủy', CAST(N'1985-12-12' AS Date), 0, N'btt@gmai.com', N'078211633', N'Phú Thọ', N'gv08', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (9, N'Bùi Lan Hương', CAST(N'1985-12-12' AS Date), 0, N'blh@gmai.com', NULL, N'Hà Giang', N'gv09', N'NNA')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (10, N'Khiếu Thị Hương', CAST(N'1985-12-12' AS Date), 0, N'kth@gmai.com', N'0975903779', N'Ninh Bình', N'gv10', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (11, N'Nguyễn Thu Hiền ', CAST(N'1985-12-12' AS Date), 0, N'nth@gmai.com', N'0975903779', N'Vĩnh Phúc ', N'gv11', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (12, N'Đỗ Thị Ngọc Lan', CAST(N'1985-12-12' AS Date), 0, N'dtnl@gmai.com', NULL, N'Hải Dương', N'gv12', N'NNA')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (13, N'Trần Văn Toàn ', CAST(N'1985-12-12' AS Date), 1, N'tvt@gmai.com', N'0975903779', N'Hưng Yên', N'gv13', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (14, N'Lê Xuân Huy', CAST(N'1985-12-12' AS Date), 1, N'lxh@gmai.com', N'0975903779', N'Quảng Ninh ', N'gv14', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (15, N'Trần Thu Hương', CAST(N'1985-12-12' AS Date), 0, N'tth@gmai.com', N'0975903779', N'Hà Nội', N'gv15', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (16, N'Bùi Huy Hải', CAST(N'1985-12-12' AS Date), 1, N'bhh@gmai.com', N'0975903779', N'Hà Nội', N'gv16', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (17, N'Lê Thị Kiều Oanh', CAST(N'1985-12-12' AS Date), 0, N'ltko@gmai.com', N'0975903779', N'Hòa Bình', N'gv17', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (18, N'Nguyễn Thị Hiền', CAST(N'1985-12-12' AS Date), 0, N'nth@gmai.com', N'0975903779', N'Hải Phòng', N'gv18', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (19, N'Nguyễn Thúy Ngọc', CAST(N'1985-12-12' AS Date), 0, N'ntn@gmai.com', NULL, N'Bắc Ninh', N'gv19', N'NNA')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (20, N'Hoàng Thị Minh Châu', CAST(N'1985-12-12' AS Date), 0, N'htmc@gmai.com', N'0975903779', N'Hà Nội', N'gv20', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (21, N'Nguyễn Thị Hạnh Lê', CAST(N'1985-12-12' AS Date), 0, N'nthl@gmai.com', N'', N'Hải Dương', N'gv21', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (22, N'Nguyễn Tường Vy', CAST(N'1985-12-12' AS Date), 0, N'ntv@gmai.com', N'0975903779', N'Bắc Giang', N'gv22', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (23, N'Phạm Thị Thu Hà', CAST(N'1985-12-12' AS Date), 0, N'ptth@gmai.com', N'', N'Nam Định', N'gv23', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (24, N'Nguyễn Thùy Dung', CAST(N'1985-12-12' AS Date), 0, N'ntd@gmai.com', N'0975903779', N'Hà Nội', N'gv24', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (25, N'Trần Quốc Hoàn', CAST(N'1985-12-12' AS Date), 1, N'tqh@gmai.com', N'0975903779', N'Bắc Ninh', N'gv25', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (26, N'Trần Thanh Đại', CAST(N'1985-12-12' AS Date), 1, N'ttd@gmai.com', NULL, N'Hà Nội', N'gv26', N'QTKD')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (27, N'Trần Thị Hương', CAST(N'1985-12-12' AS Date), 0, N'tth@gmai.com', N'0975903779', N'Nam Định', N'gv27', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (28, N'Hoàng Thị Oanh', CAST(N'1985-12-12' AS Date), 0, N'hto@gmai.com', NULL, N'Hà Nội', N'gv28', N'NNA')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (29, N'Hoàng Thị Thu Thủy', CAST(N'1985-12-12' AS Date), 0, N'httt@gmai.com', N'0985014385', N'Nam Định', N'gv29', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (30, N'Phạm Thị Thùy', CAST(N'1985-12-12' AS Date), 0, N'ptt@gmai.com', N'0975903779', N'Hà Nội ', N'gv30', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (31, N'Đào Thanh Bình', CAST(N'1985-12-12' AS Date), 0, N'dtb@gmai.com', N'0985014385', N'Bắc Ninh', N'gv31', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (32, N'Nguyễn Khánh An', CAST(N'1985-12-12' AS Date), 0, N'nka@gmai.com', NULL, N'Hải Dương', N'gv32', N'QTKD')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (33, N'Đào Thụy Ánh', CAST(N'1985-12-12' AS Date), 1, N'dta@gmai.com', N'0975903779', N'Bắc Ninh', N'gv33', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (34, N'Lê Thanh Của', CAST(N'1985-12-12' AS Date), 1, N'ltc@gmai.com', N'0975903779', N'Hải Dương', N'gv34', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (35, N'Điền Thị Hồng Hà', CAST(N'1985-12-12' AS Date), 0, N'dthh@gmai.com', N'0975903779', N'Hà Nội ', N'gv35', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (36, N'Vũ Văn Đốc', CAST(N'1985-12-12' AS Date), 1, N'@gmai.com', N'0975903779', N'Nam Định', N'gv36', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (37, N'Lương Thị Thảo Hiếu', CAST(N'1985-12-12' AS Date), 0, N'vvd@gmai.com', N'0975903779', N'Nam Định', N'gv37', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (38, N'Đường Tuấn Hải', CAST(N'1985-12-12' AS Date), 1, N'dth@gmai.com', N'0975903779', N'Hà Nội ', N'gv38', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (39, N'Nguyễn Quang Thỏa', CAST(N'1985-12-12' AS Date), 1, N'nqt@gmai.com', N'', N'Hà Nội ', N'gv39', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (40, N'Hoàng Thị Phượng', CAST(N'1985-12-12' AS Date), 0, N'htp@gmai.com', N'', N'Hà Nội ', N'gv40', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (41, N'Vũ Thị Nguyệt', CAST(N'1985-12-12' AS Date), 0, N'vtn@gmai.com', N'0985014385', N'Nam Định', N'gv41', N'TLH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (42, N'Phạm Minh Thái', CAST(N'1985-12-12' AS Date), 1, N'pmt@gmai.com', N'', N'Hà Nội ', N'gv42', N'TDH')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (43, N'Nguyễn Thùy Linh', CAST(N'1985-12-12' AS Date), 0, N'ntl@gmai.com', N'', N'Hà Nội ', N'gv43', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (44, N'Nguyễn Khánh Linh', CAST(N'1985-12-12' AS Date), 0, N'nkl@gmai.com', N'', N'Nam Định', N'gv44', N'CNTT')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (46, N'Nguyễn Thu Phương', CAST(N'1985-12-12' AS Date), 0, N'hdh@gmail.com', N'0975903779', N'Hà Nam', N'gv50', N'CNKTCK')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [Username], [MaNganh]) VALUES (47, N'Phạm Thị Anh', CAST(N'1985-12-12' AS Date), 0, N'ptt@gmail.com', N'098501439', N'Nam Định', N'gv49', N'CNDM')
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT13A1', N'Công nghệ thông tin 13A1', N'K13', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT13A2', N'Công nghệ thông tin 13A2', N'K13', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT13A3', N'Công nghệ thông tin 13A3', N'K13', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT13A4', N'Công nghệ thông tin 13A4', N'K13', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT13A5', N'Công nghệ thông tin 13A5', N'K13', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT14A1', N'Công nghệ thông tin 14A1', N'K14', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT14A2', N'Công nghệ thông tin 14A2', N'K14', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT14A3', N'Công nghệ thông tin 14A3', N'K14', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT14A4', N'Công nghệ thông tin 14A4', N'K14', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT14A5', N'Công nghệ thông tin 14A5', N'K14', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT15A1', N'Công nghệ thông tin 15A1', N'K15', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT15A2', N'Công nghệ thông tin 15A2', N'K15', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT15A3', N'Công nghệ thông tin 15A3', N'K15', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT15A4', N'Công nghệ thông tin 15A4', N'K15', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT15A5', N'Công nghệ thông tin 15A5', N'K15', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT16A1', N'Công nghệ thông tin 16A1', N'K16', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT16A2', N'Công nghệ thông tin 16A2', N'K16', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT16A3', N'Công nghệ thông tin 16A3', N'K16', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT16A4', N'Công nghệ thông tin 16A4', N'K16', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'CNTT16A5', N'Công nghệ thông tin 16A5', N'K16', N'CNTT')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA13A1', N'Ngôn ngữ Anh 13A1', N'K13', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA13A2', N'Ngôn ngữ Anh 13A2', N'K13', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA14A1', N'Ngôn ngữ Anh 14A1', N'K14', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA14A2', N'Ngôn ngữ Anh 14A2', N'K14', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA15A1', N'Ngôn ngữ Anh 15A1', N'K15', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA15A2', N'Ngôn ngữ Anh 15A2', N'K15', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA16A1', N'Ngôn ngữ Anh 16A1', N'K16', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'NNA16A2', N'Ngôn ngữ Anh 16A2', N'K16', N'NNA')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH13A1', N'Tự động hóa 13A1', N'K13', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH13A2', N'Tự động hóa 13A2', N'K13', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH14A1', N'Tự động hóa 14A1', N'K14', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH14A2', N'Tự động hóa 14A2', N'K14', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH15A1', N'Tự động hóa 15A1', N'K15', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH15A2', N'Tự động hóa 15A2', N'K15', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH16A1', N'Tự động hóa 16A1', N'K16', N'TDH')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [Khoa], [MaNganh]) VALUES (N'TDH16A2', N'Tự động hóa 16A2', N'K16', N'TDH')
GO
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100015701', 17, N'MH17', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100015902', 36, N'MH39', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100015903', 36, N'MH39', N'CNTT13A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100015904', 36, N'MH39', N'CNTT14A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100016002', 27, N'MH30', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100017002', 30, N'MH34', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100017003', 30, N'MH34', N'CNTT13A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100017004', 30, N'MH34', N'CNTT14A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100018005', 26, N'MH26', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100018105', 11, N'MH46', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100018405', 30, N'MH47', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100019706', 4, N'MH04', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100019901', 20, N'MH20', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100020102', 35, N'MH37', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100035605', 14, N'MH16', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100049317', 3, N'MH03', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100057310', 29, N'MH29', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100057411', 31, N'MH32', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100057606', 8, N'MH08', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100057703', 18, N'MH18', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058406', 1, N'MH01', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058407', 1, N'MH01', N'CNTT13A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058408', 1, N'MH01', N'TDH13A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058409', 1, N'MH01', N'TDH13A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058410', 2, N'MH01', N'CNTT14A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058411', 2, N'MH01', N'CNTT14A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058412', 2, N'MH01', N'TDH14A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058413', 2, N'MH01', N'TDH14A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058414', 29, N'MH01', N'CNTT15A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058415', 29, N'MH01', N'CNTT15A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058416', 29, N'MH01', N'TDH15A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058417', 29, N'MH01', N'TDH15A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058418', 31, N'MH01', N'CNTT16A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058419', 31, N'MH01', N'CNTT16A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058420', 31, N'MH01', N'TDH16A1')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058421', 31, N'MH01', N'TDH16A2')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100058535', 2, N'MH02', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100059107', 6, N'MH06', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100096906', 5, N'MH05', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100105305', 7, N'MH07', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100107506', 37, N'MH48', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100107608', 30, N'MH31', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100107702', 33, N'MH35', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100107805', 11, N'MH13', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100108701', 43, N'MH49', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100108702', 44, N'MH50', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100110308', 13, N'MH15', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100112905', 9, N'MH09', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100113205', 17, N'MH25', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100113305', 4, N'MH11', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100115605', 24, N'MH23', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100121505', 11, N'MH12', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100122433', 10, N'MH10', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100122539', 12, N'MH14', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100122614', 19, N'MH19', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100122737', 28, N'MH28', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100127406', 40, N'MH43', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100127506', 23, N'MH22', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100127609', 27, N'MH27', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100129005', 42, N'MH45', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100129105', 35, N'MH40', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100132605', 11, N'MH38', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100136810', 34, N'MH36', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100138405', 25, N'MH24', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100185302', 37, N'MH41', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100185406', 38, N'MH42', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100212944', 41, N'MH44', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100215141', 8, N'MH21', N'CNTT13A5')
INSERT [dbo].[LopHocPhan] ([MaLopHP], [MaGV], [MaMH], [MaLop]) VALUES (N'010100215605', 32, N'MH33', N'CNTT13A5')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH01', N'Logic học', 2, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH02', N'Pháp luật đại cương', 2, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH03', N'Quản trị học', 2, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH04', N'Tin cơ sở', 4, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH05', N'Tin học văn phòng
', 2, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH06', N'Vật lý', 4, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH07', N'Đại số tuyến tính', 2, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH08', N'Nguyên lý cơ bản của chủ nghĩa Mác- Lênin 1', 2, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH09', N'Thực tập lập trình cơ bản', 3, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH10', N'Tiếng Anh cơ bản 1', 3, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH11', N'Cấu trúc dữ liệu và giải thuật', 4, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH12', N'Kiến trúc máy tính', 3, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH13', N'Lập trình hướng đối tượng', 3, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH14', N'Tiếng Anh cơ bản 2', 3, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH15', N'Toán giải tích', 3, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH16', N'Xử lý số tín hiệu', 2, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH17', N'Cơ sở dữ liệu', 4, 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH18', N'Nguyên lý cơ bản của chủ nghĩa Mác- Lênin 2', 3, 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH19', N'Tiếng Anh cơ bản 3', 3, 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH20', N'Toán rời rạc', 3, 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH21', N'Kỹ năng nhận thức bản thân', 1, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH22', N'Kỹ thuật điện tử số', 2, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH23', N'Kỹ thuật đồ họa máy tính', 2, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH24', N'Mạng máy tính', 4, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH25', N'Phân tích và thiết kế các hệ thống thông tin', 4, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH26', N'Quản lý dự án công nghệ thông tin', 2, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH27', N'Thực tập lập trình hướng đối tượng', 3, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH28', N'Tiếng Anh cơ bản 4', 3, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH29', N'Tư tưởng Hồ Chí Minh', 2, 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH30', N'Công nghệ phần mềm', 2, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH31', N'Đồ án 1: Thiết kế hệ thống cơ sở dữ liệu', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH32', N'Đường lối cách mạng Đảng Cộng sản Việt nam', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH33', N'Kỹ năng nghề nghiệp - CNTT', 1, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH34', N'Lập trình .NET', 4, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH35', N'Thực tập quản trị mạng', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH36', N'Thực tập Web', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH37', N'Ứng dụng dữ liệu WEB', 2, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH38', N'An toàn thông tin', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH39', N'Công nghệ Java', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH40', N'Khai phá dữ liệu', 3, 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH41', N'Công nghệ di động', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH42', N'	
Đồ án 2', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH43', N'Hệ điều hành', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH44', N'Kỹ năng phỏng vấn xin việc', 1, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH45', N'Kỹ thuật mô phỏng', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH46', N'Thực tập an toàn thông tin', 2, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH47', N'Thực tập lập trình .NET', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH48', N'Thực tập lập trình mạng', 3, 7)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH49', N'Thực tập doanh nghiệp', 7, 8)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'MH50', N'Luận án tốt nghiệp ', 9, 8)
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'BH', N'Bảo hiểm')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNDM', N'Công nghệ dệt may')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNKTCK', N'Công nghệ kĩ thuật-Cơ khí')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNKTDTVT', N'Công nghệ kĩ thuật-Điện tử viễn thông')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNKTOT', N'Công nghệ kĩ thuật-Ô tô')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNSD', N'Công nghê sợi dệt')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNTP', N'Công nghệ thực phẩm')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'CNTT', N'Công nghệ thông tin')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'KDTM', N'Kinh doanh thương mại')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'MMT', N'Mạng máy tính')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'NNA', N'Ngôn ngữ Anh')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'QTDVDL', N'Quản trị dịch vụ du lịch và lữ hành ')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'QTKD', N'Quản trị kinh doanh')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'TCNH', N'Tài chính ngân hàng ')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'TDH', N'Tự động hóa')
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'TLH', N'Tâm lí học ')
GO
INSERT [dbo].[NienKhoa] ([Khoa], [TenKhoa], [NamNK]) VALUES (N'K13', N'Khóa 13', N'2019-2023')
INSERT [dbo].[NienKhoa] ([Khoa], [TenKhoa], [NamNK]) VALUES (N'K14', N'Khóa 14', N'2020-2024')
INSERT [dbo].[NienKhoa] ([Khoa], [TenKhoa], [NamNK]) VALUES (N'K15', N'Khóa 15', N'2021-2025')
INSERT [dbo].[NienKhoa] ([Khoa], [TenKhoa], [NamNK]) VALUES (N'K16', N'Khóa 16', N'2022-2026')
GO
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (1, N'Đỗ Thị Thuỳ Nhương
', CAST(N'2001-12-10' AS Date), 0, N'dttn@gmail.com', N'0523590117', N'Hà Nội', N'CNTT13A5', N'sv01')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (2, N'Nguyễn Bá Phú ', CAST(N'2001-05-05' AS Date), 1, N'nbp@gmail.com', N'035276522', N'Phú Thọ', N'CNTT13A5', N'sv02')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (3, N'Nguyễn Thị Phương
', CAST(N'2001-09-09' AS Date), 0, N'ntp@gmail.com', N'0976522133', N'Ninh Bình ', N'CNTT13A5', N'sv03')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (4, N'Nguyễn Việt Phương
', CAST(N'2001-07-10' AS Date), 1, N'nvp@gmail.com', N'0966793330', N'Hải Dương', N'CNTT13A5', N'sv04')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (5, N'Vũ Anh Quân
', CAST(N'2001-03-06' AS Date), 1, N'vaq@gmail.com', N'0987556556', N'Hà Nội', N'CNTT13A5', N'sv05')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (6, N'Lê Vũ Quang
', CAST(N'2001-03-06' AS Date), 1, N'ntq@gmail.com', N'0966158583', N'Nam Định', N'CNTT13A5', N'sv06')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (7, N'Nguyễn Thế Quang
', CAST(N'2000-08-19' AS Date), 1, N'nvs@gmail.com', N'0359183644', N'Bắc Giang', N'CNTT13A5', N'sv07')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (8, N'Phạm Văn	 Sáng
', CAST(N'2000-01-04' AS Date), 1, N'pvs@gmail.com', N'0984974029', N'Bắc Ninh', N'CNTT13A5', N'sv08')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (9, N'Nguyễn Ngọc Tân
', CAST(N'2001-06-09' AS Date), 1, N'nnt@gmail.com', N'0335155404', N'Bắc Ninh', N'CNTT13A5', N'sv09')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (10, N'Trần Huyền Tân
', CAST(N'2001-03-11' AS Date), 1, N'tht@gmail.com', N'0377672186', N'Nghệ An', N'CNTT13A5', N'sv10')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (11, N'Nguyễn Trọng Tấn
', CAST(N'2001-02-03' AS Date), 1, N'ntt@gmail.com', N'0328373036', N'Hà Tây', N'CNTT13A5', N'sv11')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (12, N'Trần Hoàng Thái
', CAST(N'2001-05-10' AS Date), 1, N'pnt@gmail.com', N'02856784126', N'Hà Nội', N'CNTT13A5', N'sv12')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (13, N'Phạm Như Thuần
', CAST(N'2001-07-13' AS Date), 1, N'tht@gmail.com', N'0967458896', N'Phú Thọ', N'CNTT13A5', N'sv13')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (14, N'Mai Ngọc	Thụy
', CAST(N'2001-09-06' AS Date), 1, N'mnt@gmail.com', N'0969800311', N'Vĩnh Phúc', N'CNTT13A5', N'sv14')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (15, N'Bùi Thị Thùy Trang
', CAST(N'2001-10-10' AS Date), 0, N'bttt@gmail.com', N'0977527650', N'Hải Dương', N'CNTT13A5', N'sv15')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (16, N'Phùng Thị Thùy Trang
', CAST(N'2001-11-10' AS Date), 0, N'pttt@gmail.com', N'0962055305', N'Vĩnh Phúc', N'CNTT13A5', N'sv16')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (17, N'Nguyễn Việt Trinh
', CAST(N'2001-05-16' AS Date), 0, N'nvt@gmail.com', N'0329168308', N'Hà Nội ', N'CNTT13A5', N'sv17')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (18, N'Dương Văn Trình
', CAST(N'2001-03-25' AS Date), 1, N'dtm@gmail.com', N'0978211911', N'Thanh Hóa', N'CNTT13A5', N'sv18')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (19, N'Bùi Hiếu Trung
', CAST(N'2001-11-02' AS Date), 1, N'bht@gmail.com', N'0978211911', N'Thái Nguyên', N'CNTT13A5', N'sv19')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (20, N'Lê Thanh Tú ', CAST(N'2001-01-09' AS Date), 1, N'ltt@gmail.com', N'0978218911', N'Hải Dương', N'CNTT13A5', N'sv20')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (21, N'Trần Ngọc Anh Tuấn
', CAST(N'2001-02-09' AS Date), 1, N'tnat@gmail.com', N'0977527650', N'Hà Nội', N'CNTT13A1', N'sv21')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (22, N'Lê Ngọc Thanh Tùng
', CAST(N'2001-07-09' AS Date), 1, N'lntt@gmail.com', N'0967458896', N'Hà Nội', N'CNTT13A1', N'sv22')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (23, N'Nguyễn Quang Tùng
', CAST(N'2001-05-14' AS Date), 1, N'nqt@gmail.com', N'0962055305', N'Hà Nội', N'CNTT13A1', N'sv23')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (24, N'Bùi Chí Tuyên
', CAST(N'2001-04-01' AS Date), 1, N'bct@gmail.com', N'0977527650', N'Hà Nội', N'CNTT13A1', N'sv24')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (26, N'Nguyễn Nam Tuyền
', CAST(N'2001-04-01' AS Date), 1, N'nnt@gmail.com', N'0329168308', N'Hà Nội', N'CNTT13A1', N'sv26')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (27, N'Hà Thị Thanh Xuân
', CAST(N'2001-04-01' AS Date), 0, N'httx@gmail.com', N'0984974029', N'Hà Nội', N'CNTT13A1', N'sv27')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (28, N'Đinh Thị Ngọc Anh
', CAST(N'2001-04-01' AS Date), 0, N'dtna@gmail.com', N'0359183644', N'Hà Nội', N'CNTT13A1', N'sv28')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (29, N'Lê Phương Anh
', CAST(N'2001-04-01' AS Date), 0, N'lpa@gmail.com', N'0984974029', N'Hà Nội', N'CNTT13A1', N'sv29')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (30, N'Ngô Thị Quỳnh Anh
', CAST(N'2001-04-01' AS Date), 0, N'ntqa@gmail.com', N'0377672186', N'Hà Nội', N'CNTT13A1', N'sv30')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (31, N'Nguyễn Thị Châm Anh
', CAST(N'2001-04-01' AS Date), 0, N'ntca@gmail.com', N'0969800311', N'Hà Nội', N'CNTT13A1', N'sv31')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (32, N'Nguyễn Thị Phương	 Anh
', CAST(N'2001-04-01' AS Date), NULL, NULL, NULL, NULL, N'CNTT14A1', N'sv32')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (33, N'Trần Vân Anh
', CAST(N'2001-04-01' AS Date), NULL, NULL, NULL, NULL, N'CNTT14A1', N'sv33')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (34, N'Nguyễn Thị Nhật Ánh
', NULL, NULL, NULL, NULL, NULL, N'CNTT14A1', N'sv34')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (35, N'Nguyễn Thị Giang
', NULL, NULL, NULL, NULL, NULL, N'CNTT14A1', N'sv35')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (36, N'Đào Thị Thu Hà
', NULL, NULL, NULL, NULL, NULL, N'CNTT15A1', N'sv36')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (37, N'Hoàng Hải Hà
', NULL, NULL, NULL, NULL, NULL, N'CNTT15A1', N'sv37')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (38, N'Mai Thanh Hằng
', NULL, NULL, NULL, NULL, NULL, N'CNTT15A1', N'sv38')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (39, N'Nguyễn Thị Hoa
', NULL, NULL, NULL, NULL, NULL, N'CNTT15A1', N'sv39')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (40, N'Phạm Mai	 Hoa
', NULL, NULL, NULL, NULL, NULL, N'CNTT15A1', N'sv40')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (41, N'Hoàng Thị Hòa
', NULL, NULL, NULL, NULL, NULL, N'CNTT16A1', N'sv41')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (42, N'Nguyễn Thị Huệ
', NULL, NULL, NULL, NULL, NULL, N'CNTT16A1', N'sv42')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (43, N'Lê Quốc Hưng
', NULL, NULL, NULL, NULL, NULL, N'CNTT16A1', N'sv43')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (44, N'Bạch Thu	Hương
', NULL, NULL, NULL, NULL, NULL, N'CNTT16A1', N'sv44')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (45, N'Bùi Thị Lan	Hương
', NULL, NULL, NULL, NULL, NULL, N'CNTT16A1', N'sv45')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (46, N'Lê Thị Hương
', NULL, NULL, NULL, NULL, NULL, N'NNA13A1', N'sv46')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (47, N'Nguyễn Thị Lan Hương
', NULL, NULL, NULL, NULL, NULL, N'NNA13A1', N'sv47')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (48, N'Đinh Thùy Linh
', NULL, NULL, NULL, NULL, NULL, N'NNA13A1', N'sv48')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (49, N'Đỗ Phương Linh
', NULL, NULL, NULL, NULL, NULL, N'NNA13A1', N'sv49')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (50, N'Lê Diệu Linh
', NULL, NULL, NULL, NULL, NULL, N'NNA13A1', N'sv50')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (51, N'Trần Thùy	Linh
', NULL, NULL, NULL, NULL, NULL, N'NNA14A1', N'sv51')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (52, N'Lê Thị Loan
', NULL, NULL, NULL, NULL, NULL, N'NNA14A1', N'sv52')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (53, N'Đỗ Thị Cẩm Ly
', NULL, NULL, NULL, NULL, NULL, N'NNA14A1', N'sv53')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (54, N'Nguyễn Thị Khánh Ly
', NULL, NULL, NULL, NULL, NULL, N'NNA14A1', N'sv54')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (55, N'Lê Thị Thu  Mai
', NULL, NULL, NULL, NULL, NULL, N'NNA14A1', N'sv55')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (56, N'Nguyễn Diệu Mai
', NULL, NULL, NULL, NULL, NULL, N'NNA15A1', N'sv56')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (57, N'Nguyễn Thị Ngọc Mai
', NULL, NULL, NULL, NULL, NULL, N'NNA15A1', N'sv57')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (58, N'Đỗ hà My
', NULL, NULL, NULL, NULL, NULL, N'NNA15A1', N'sv58')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (59, N'Nguyễn Lương Hằng Nga
', NULL, NULL, NULL, NULL, NULL, N'NNA15A1', N'sv59')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (60, N'Nguyễn Thị Thu Nga
', NULL, NULL, NULL, NULL, NULL, N'NNA15A1', N'sv60')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (61, N'Đào Thị	Ngọc
', NULL, NULL, NULL, NULL, NULL, N'NNA16A1', N'sv61')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (62, N'Phạm Thị Hoài Nhi
', NULL, NULL, NULL, NULL, NULL, N'NNA16A1', N'sv62')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (63, N'Lường Thị	 Nhung
', NULL, NULL, NULL, NULL, NULL, N'NNA16A1', N'sv63')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (64, N'Vũ Thị Tuyết Nhung
', NULL, NULL, NULL, NULL, NULL, N'NNA16A1', N'sv64')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (65, N'Trần Thị Phương
', NULL, NULL, NULL, NULL, NULL, N'NNA16A1', N'sv65')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (66, N'Nguyễn Hữu An
', NULL, NULL, NULL, NULL, NULL, N'TDH13A1', N'sv66')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (67, N'Vũ Tuấn  Anh
', NULL, NULL, NULL, NULL, NULL, N'TDH13A1', N'sv67')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (68, N'Đinh Tiến Bạch
', NULL, NULL, NULL, NULL, NULL, N'TDH13A1', N'sv68')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (69, N'Hoàng Đức Chính
', NULL, NULL, NULL, NULL, NULL, N'TDH13A1', N'sv69')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (70, N'Nguyễn Thành Đạt
', NULL, NULL, NULL, NULL, NULL, N'TDH13A1', N'sv70')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (71, N'Dương Thành Duy
', NULL, NULL, NULL, NULL, NULL, N'TDH14A1', N'sv71')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (72, N'Nguyễn Đình Duy
', NULL, NULL, NULL, NULL, NULL, N'TDH14A1', N'sv72')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (73, N'Khúc Minh Hiếu
', NULL, NULL, NULL, NULL, NULL, N'TDH14A1', N'sv73')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (74, N'Nguyễn Quý Hiếu
', NULL, NULL, NULL, NULL, NULL, N'TDH14A1', N'sv74')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (75, N'Nguyễn Trung Hiếu
', NULL, NULL, NULL, NULL, NULL, N'TDH14A1', N'sv75')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (76, N'Trần Trung Hiếu
', NULL, NULL, NULL, NULL, NULL, N'TDH15A1', N'sv76')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (77, N'Phạm bá Hòa
', NULL, NULL, NULL, NULL, NULL, N'TDH15A1', N'sv77')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (78, N'Chu Văn Hùng
', NULL, NULL, NULL, NULL, NULL, N'TDH15A1', N'sv78')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (79, N'Cao Việt Hưng
', NULL, NULL, NULL, NULL, NULL, N'TDH15A1', N'sv79')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (80, N'Ngô Đức Huy
', NULL, NULL, NULL, NULL, NULL, N'TDH15A1', N'sv80')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (81, N'Nguyễn Quang Huy
', NULL, NULL, NULL, NULL, NULL, N'TDH16A1', N'sv81')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (82, N'Nguyễn Văn Huy
', NULL, NULL, NULL, NULL, NULL, N'TDH16A1', N'sv82')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (83, N'Phạm Văn  Huy
', NULL, NULL, NULL, NULL, NULL, N'TDH16A1', N'sv83')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (84, N'Trịnh Quốc Khánh
', NULL, NULL, NULL, NULL, NULL, N'TDH16A1', N'sv84')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh], [GioiTinh], [Email], [SoDT], [DiaChi], [MaLop], [Username]) VALUES (86, N'Nguyễn Thanh Liêm
', NULL, NULL, NULL, NULL, NULL, N'TDH16A1', N'sv85')
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
GO
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'admin', N'3333', N'3')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv01', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv02', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv03', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv04', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv05', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv06', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv07', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv08', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv09', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv10', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv11', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv12', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv13', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv14', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv15', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv16', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv17', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv18', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv19', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv20', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv21', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv22', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv23', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv24', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv25', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv26', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv27', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv28', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv29', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv30', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv31', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv32', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv33', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv34', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv35', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv36', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv37', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv38', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv39', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv40', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv41', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv42', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv43', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv44', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv45', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv46', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv47', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv48', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv49', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'gv50', N'1111', N'1')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv01', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv02', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv03', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv04', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv05', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv06', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv07', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv08', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv09', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv10', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv100', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv11', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv12', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv13', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv14', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv15', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv16', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv17', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv18', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv19', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv20', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv21', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv22', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv23', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv24', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv25', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv26', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv27', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv28', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv29', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv30', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv31', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv32', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv33', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv34', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv35', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv36', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv37', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv38', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv39', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv40', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv41', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv42', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv43', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv44', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv45', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv46', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv47', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv48', N'2222', N'2')
GO
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv49', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv50', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv51', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv52', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv53', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv54', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv55', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv56', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv57', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv58', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv59', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv60', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv61', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv62', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv63', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv64', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv65', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv66', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv67', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv68', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv69', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv70', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv71', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv72', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv73', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv74', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv75', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv76', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv77', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv78', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv79', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv80', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv81', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv82', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv83', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv84', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv85', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv86', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv87', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv88', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv89', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv90', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv91', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv92', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv93', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv94', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv95', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv96', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv97', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv98', N'2222', N'2')
INSERT [dbo].[Users] ([Username], [Pass], [Quyen]) VALUES (N'sv99', N'2222', N'2')
GO
ALTER TABLE [dbo].[DiemHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_QLDiem_SinhVien1] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DiemHocPhan] CHECK CONSTRAINT [FK_QLDiem_SinhVien1]
GO
ALTER TABLE [dbo].[DiemHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_QLDiemHocPhan_LopHocPhan] FOREIGN KEY([MaLopHP])
REFERENCES [dbo].[LopHocPhan] ([MaLopHP])
GO
ALTER TABLE [dbo].[DiemHocPhan] CHECK CONSTRAINT [FK_QLDiemHocPhan_LopHocPhan]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_NganhHoc] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NganhHoc] ([MaNganh])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_NganhHoc]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_User] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_User]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_NganhHoc] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NganhHoc] ([MaNganh])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_NganhHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_NienKhoa] FOREIGN KEY([Khoa])
REFERENCES [dbo].[NienKhoa] ([Khoa])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_NienKhoa]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_GiaoVien]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_LopHoc1] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_LopHoc1]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_MonHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_LopHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Users]
GO
/****** Object:  StoredProcedure [dbo].[BangDiem]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[BangDiem]
@TenLop nvarchar(50),
@TenSV nvarchar(50),
@NamNK nvarchar(24),
@TenNganh nvarchar(50),
@NgaySinh date
as
begin
Select c.MaLopHP,d.TenMH, a.DiemTK , d.SoTC, d.HocKy 
from DiemHocPhan a, SinhVien b, LopHocPhan c ,MonHoc d,LopHoc e,NganhHoc f, NienKhoa g 
where a.MaSV = b.MaSV and a.MaLopHP=c.MaLopHP and c.MaMH=d.MaMH and g.Khoa=e.Khoa and e.MaNganh=f.MaNganh
and TenLop= @TenLop and TenSV=@TenSV and NamNK=@NamNK and NgaySinh=@NgaySinh and TenNganh=@TenNganh
END
GO
/****** Object:  StoredProcedure [dbo].[TTSVTheoLop]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[TTSVTheoLop]
@TenNganh nvarchar(50),
@TenLop nvarchar(50)
as
begin
Select a.MaSV,a.TenSV, a.GioiTinh,a.Email,a.NgaySinh,a.SoDT,b.TenLop,c.TenNganh
from SinhVien a ,LopHoc b,NganhHoc c
where a.MaLop = b.MaLop and b.MaNganh=c.MaNganh 
and TenLop= @TenLop and TenNganh=@TenNganh
END
GO
/****** Object:  StoredProcedure [dbo].[Update_Pass]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Pass] 
	-- Add the parameters for the stored procedure here
@Username nvarchar(50),
@OldPass nvarchar(50),
@NewPass nvarchar(50)
as
begin
    if exists (select * from Users where Username = @Username and Pass = @OldPass)
    begin
        update Users set Pass = @NewPass where Username = @Username
        select 1 as code, N'Thay doi mat khau thanh cong !!' as MSG
    end
    else
        select 0 as code, N'Tai khoan hoac mat khau sai !!' as MSG
end
GO
/****** Object:  StoredProcedure [dbo].[User_login]    Script Date: 11/18/2022 2:48:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_login] 
	-- Add the parameters for the stored procedure here
@Username nvarchar(50),
@Pass nvarchar(24)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if exists (select * from Users where Username = @Username and Pass = @Pass and Quyen = 1)
        select 1 as code
	if exists (select * from Users where Username = @Username and Pass = @Pass and Quyen = 2)
        select 2 as code
	if exists (select * from Users where Username = @Username and Pass = @Pass and Quyen = 3)
        select 3 as code
	else if exists(select * from Users where Username = @Username and Pass != @Pass) 
	    select 4 as code
END
GO
