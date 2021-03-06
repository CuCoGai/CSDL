USE [master]
GO
/****** Object:  Database [QLNhanSu]    Script Date: 4/3/2017 9:36:41 AM ******/
CREATE DATABASE [QLNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNhanSu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNhanSu.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNhanSu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNhanSu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNhanSu] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNhanSu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [QLNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNhanSu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLNhanSu]
GO
/****** Object:  Table [dbo].[baohiem]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[baohiem](
	[ma] [varchar](10) NOT NULL,
	[ngaycap] [datetime] NULL,
	[noicap] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[nhanvienma] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chucvu]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chucvu](
	[ma] [varchar](10) NOT NULL,
	[ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hocvan]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hocvan](
	[ma] [varchar](10) NOT NULL,
	[ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hopdonglaodongnhanvien]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hopdonglaodongnhanvien](
	[ma] [varchar](10) NOT NULL,
	[ngayky] [date] NULL,
	[ngaybatdau] [date] NULL,
	[ngayketthuc] [date] NULL,
	[luongthuviec] [money] NULL,
	[ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khenthuong]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khenthuong](
	[ma] [varchar](10) NOT NULL,
	[noidung] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kyluat]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kyluat](
	[ma] [varchar](10) NOT NULL,
	[noidung] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[luongcoban]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[luongcoban](
	[ma] [varchar](10) NOT NULL,
	[heso] [float] NULL,
	[ten] [nvarchar](50) NULL,
	[hocvanma] [varchar](10) NULL,
	[giatri] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[luongnhanvien]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[luongnhanvien](
	[nhanvienma] [varchar](10) NULL,
	[luongcobanma] [varchar](10) NULL,
	[phucapma] [varchar](10) NULL,
	[ma] [varchar](10) NOT NULL,
	[SoNgayCong] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[Thuong] [int] NULL,
	[TamUng] [int] NULL,
	[NgayLap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[username] [nvarchar](20) NOT NULL,
	[pass] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhanvien](
	[ma] [varchar](10) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [bit] NULL,
	[anh] [image] NULL,
	[quequan] [nvarchar](200) NULL,
	[noisinh] [nvarchar](200) NULL,
	[hokhauthuongtru] [nvarchar](200) NULL,
	[diachilienlac] [nvarchar](200) NULL,
	[quoctich] [nvarchar](50) NULL,
	[tongiao] [nvarchar](50) NULL,
	[soCMT] [varchar](12) NULL,
	[ngaycap] [datetime] NULL,
	[noicap] [nvarchar](200) NULL,
	[noiohiennay] [nvarchar](200) NULL,
	[dienthoai] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[tinhtranghonnhan] [bit] NULL,
	[trinhdongoaingu] [nvarchar](50) NULL,
	[hocvanma] [varchar](10) NULL,
	[chucvuma] [varchar](10) NULL,
	[phongbanma] [varchar](10) NULL,
	[hopdonglaodongnhanvienma] [varchar](10) NULL,
	[dantoc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phongban]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phongban](
	[ma] [varchar](10) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[sdt] [varchar](11) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phucap]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phucap](
	[chucvuma] [varchar](10) NULL,
	[ma] [varchar](10) NOT NULL,
	[heso] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thongtinkhacvenhanvien]    Script Date: 4/3/2017 9:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thongtinkhacvenhanvien](
	[giadinh] [nvarchar](200) NULL,
	[khenthuongma] [varchar](10) NULL,
	[kyluatma] [varchar](10) NULL,
	[taikhoannganhang] [varchar](20) NULL,
	[manganhang] [varchar](10) NULL,
	[nhanvienma] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nhanvienma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[baohiem]  WITH CHECK ADD FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[nhanvien] ([ma])
GO
ALTER TABLE [dbo].[luongcoban]  WITH CHECK ADD FOREIGN KEY([hocvanma])
REFERENCES [dbo].[hocvan] ([ma])
GO
ALTER TABLE [dbo].[luongnhanvien]  WITH CHECK ADD FOREIGN KEY([luongcobanma])
REFERENCES [dbo].[luongcoban] ([ma])
GO
ALTER TABLE [dbo].[luongnhanvien]  WITH CHECK ADD FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[nhanvien] ([ma])
GO
ALTER TABLE [dbo].[luongnhanvien]  WITH CHECK ADD FOREIGN KEY([phucapma])
REFERENCES [dbo].[phucap] ([ma])
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD FOREIGN KEY([chucvuma])
REFERENCES [dbo].[chucvu] ([ma])
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD FOREIGN KEY([hocvanma])
REFERENCES [dbo].[hocvan] ([ma])
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD FOREIGN KEY([hopdonglaodongnhanvienma])
REFERENCES [dbo].[hopdonglaodongnhanvien] ([ma])
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD FOREIGN KEY([phongbanma])
REFERENCES [dbo].[phongban] ([ma])
GO
ALTER TABLE [dbo].[phucap]  WITH CHECK ADD FOREIGN KEY([chucvuma])
REFERENCES [dbo].[chucvu] ([ma])
GO
ALTER TABLE [dbo].[thongtinkhacvenhanvien]  WITH CHECK ADD FOREIGN KEY([khenthuongma])
REFERENCES [dbo].[khenthuong] ([ma])
GO
ALTER TABLE [dbo].[thongtinkhacvenhanvien]  WITH CHECK ADD FOREIGN KEY([kyluatma])
REFERENCES [dbo].[kyluat] ([ma])
GO
ALTER TABLE [dbo].[thongtinkhacvenhanvien]  WITH CHECK ADD FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[nhanvien] ([ma])
GO
USE [master]
GO
ALTER DATABASE [QLNhanSu] SET  READ_WRITE 
GO
