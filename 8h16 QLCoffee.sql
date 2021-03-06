USE [QLCoffee]
GO
/****** Object:  Table [dbo].[tbBan]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](15) NULL,
	[Trangthai] [varchar](12) NULL,
 CONSTRAINT [PK_tbBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbChitiet]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChitiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoadon] [int] NULL,
	[IDSanpham] [int] NULL,
	[IDNhanvien] [int] NULL,
	[IDKhachhang] [int] NULL,
 CONSTRAINT [PK_tbChitiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoadon]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoadon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSanpham] [int] NULL,
	[Soluong] [int] NULL,
	[Dongia] [int] NULL,
	[Tongtien] [int] NULL,
 CONSTRAINT [PK_tbHoadon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhachhang]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachhang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](15) NULL,
	[Ngaysinh] [varchar](20) NULL,
	[Gioitinh] [varchar](20) NULL,
	[SDT] [int] NULL,
	[Diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbKhachhang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhanvien]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhanvien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](15) NULL,
	[Ngaysinh] [varchar](20) NULL,
	[Gioitinh] [varchar](20) NULL,
	[Quequan] [varchar](20) NULL,
	[CMND] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[SDT] [int] NULL,
	[Ngaybatdau] [varchar](20) NULL,
	[Calam] [varchar](20) NULL,
 CONSTRAINT [PK_tbNhanvien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSanpham]    Script Date: 11/6/2020 8:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanpham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](15) NULL,
	[Dongia] [int] NULL,
	[SLTon] [int] NULL,
	[SLdaban] [int] NULL,
 CONSTRAINT [PK_tbSanpham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbChitiet]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiet_tbHoadon] FOREIGN KEY([IDHoadon])
REFERENCES [dbo].[tbHoadon] ([ID])
GO
ALTER TABLE [dbo].[tbChitiet] CHECK CONSTRAINT [FK_tbChitiet_tbHoadon]
GO
ALTER TABLE [dbo].[tbChitiet]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiet_tbKhachhang] FOREIGN KEY([IDKhachhang])
REFERENCES [dbo].[tbKhachhang] ([ID])
GO
ALTER TABLE [dbo].[tbChitiet] CHECK CONSTRAINT [FK_tbChitiet_tbKhachhang]
GO
ALTER TABLE [dbo].[tbChitiet]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiet_tbNhanvien] FOREIGN KEY([IDNhanvien])
REFERENCES [dbo].[tbNhanvien] ([ID])
GO
ALTER TABLE [dbo].[tbChitiet] CHECK CONSTRAINT [FK_tbChitiet_tbNhanvien]
GO
ALTER TABLE [dbo].[tbChitiet]  WITH CHECK ADD  CONSTRAINT [FK_tbChitiet_tbSanpham] FOREIGN KEY([IDSanpham])
REFERENCES [dbo].[tbSanpham] ([ID])
GO
ALTER TABLE [dbo].[tbChitiet] CHECK CONSTRAINT [FK_tbChitiet_tbSanpham]
GO
