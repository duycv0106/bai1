CREATE DATABASE [QLCoffee]
GO
USE [QLCoffee]
GO
/****** Object:  Table [dbo].[tbBan]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](15) NULL,
	[Trangthai] [nvarchar](15) NULL,
 CONSTRAINT [PK_tbBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbChitiethoadon]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChitiethoadon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoadon] [int] NULL,
	[IDSanpham] [int] NULL,
	[TenSP] [nvarchar](15) NULL,
	[IDNhanvien] [int] NULL,
	[TenNV] [nvarchar](15) NULL,
 CONSTRAINT [PK_tbChitiethoadon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoadon]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoadon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSanpham] [int] NULL,
	[TenSP] [nvarchar](15) NULL,
	[SoLuong] [int] NULL,
	[Dongia] [float] NULL,
	[IDNhanvien] [int] NULL,
	[TenNV] [nvarchar](15) NULL,
	[Tongtien] [float] NULL,
	[IDKhachhang] [int] NULL,
 CONSTRAINT [PK_tbHoadon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhachhang]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachhang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](15) NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [varchar](13) NULL,
	[SDT] [varchar](20) NULL,
	[Diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbKhachhang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhanvien]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhanvien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](15) NULL,
	[Gioitinh] [varchar](13) NULL,
	[Ngaysinh] [datetime] NULL,
	[Quequan] [nvarchar](20) NULL,
	[CMND] [nvarchar](20) NULL,
	[Email] [nvarchar](20) NULL,
	[SDT] [nvarchar](20) NULL,
	[Ngaybatdaulam] [datetime] NULL,
	[Calam] [varchar](11) NULL,
 CONSTRAINT [PK_tbNhanvien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSanpham]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanpham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](15) NULL,
	[Dongia] [float] NULL,
	[SLTon] [int] NULL,
	[SLdaban] [int] NULL,
 CONSTRAINT [PK_tbSanpham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbThongke]    Script Date: 11/5/2020 11:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbThongke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SLhoadon] [int] NULL,
	[Tongtien] [int] NULL,
	[SLKhachhang] [int] NULL,
	[SLSanpham] [int] NULL,
 CONSTRAINT [PK_tbThongke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbChitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiethoadon_tbHoadon] FOREIGN KEY([IDHoadon])
REFERENCES [dbo].[tbHoadon] ([ID])
GO
ALTER TABLE [dbo].[tbChitiethoadon] CHECK CONSTRAINT [FK_tbChitiethoadon_tbHoadon]
GO
ALTER TABLE [dbo].[tbChitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiethoadon_tbNhanvien] FOREIGN KEY([IDNhanvien])
REFERENCES [dbo].[tbNhanvien] ([ID])
GO
ALTER TABLE [dbo].[tbChitiethoadon] CHECK CONSTRAINT [FK_tbChitiethoadon_tbNhanvien]
GO
ALTER TABLE [dbo].[tbChitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiethoadon_tbSanpham] FOREIGN KEY([IDSanpham])
REFERENCES [dbo].[tbSanpham] ([ID])
GO
ALTER TABLE [dbo].[tbChitiethoadon] CHECK CONSTRAINT [FK_tbChitiethoadon_tbSanpham]
GO
ALTER TABLE [dbo].[tbHoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbHoadon_tbKhachhang] FOREIGN KEY([IDKhachhang])
REFERENCES [dbo].[tbKhachhang] ([ID])
GO
ALTER TABLE [dbo].[tbHoadon] CHECK CONSTRAINT [FK_tbHoadon_tbKhachhang]
GO
ALTER TABLE [dbo].[tbHoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbHoadon_tbNhanvien] FOREIGN KEY([IDNhanvien])
REFERENCES [dbo].[tbNhanvien] ([ID])
GO
ALTER TABLE [dbo].[tbHoadon] CHECK CONSTRAINT [FK_tbHoadon_tbNhanvien]
GO
ALTER TABLE [dbo].[tbHoadon]  WITH CHECK ADD  CONSTRAINT [FK_tbHoadon_tbSanpham] FOREIGN KEY([IDSanpham])
REFERENCES [dbo].[tbSanpham] ([ID])
GO
ALTER TABLE [dbo].[tbHoadon] CHECK CONSTRAINT [FK_tbHoadon_tbSanpham]
GO
