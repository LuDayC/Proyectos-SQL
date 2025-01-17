USE [master]
GO
/****** Object:  Database [Prodiaseo]    Script Date: 14/11/2023 3:44:33 p. m. ******/
CREATE DATABASE [Prodiaseo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prodiaseo_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prodiaseo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Prodiaseo_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prodiaseo.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Prodiaseo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prodiaseo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prodiaseo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prodiaseo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prodiaseo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prodiaseo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prodiaseo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prodiaseo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prodiaseo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prodiaseo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prodiaseo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prodiaseo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prodiaseo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prodiaseo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prodiaseo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prodiaseo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prodiaseo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prodiaseo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prodiaseo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prodiaseo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prodiaseo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prodiaseo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prodiaseo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prodiaseo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prodiaseo] SET RECOVERY FULL 
GO
ALTER DATABASE [Prodiaseo] SET  MULTI_USER 
GO
ALTER DATABASE [Prodiaseo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prodiaseo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prodiaseo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prodiaseo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prodiaseo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prodiaseo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prodiaseo', N'ON'
GO
ALTER DATABASE [Prodiaseo] SET QUERY_STORE = ON
GO
ALTER DATABASE [Prodiaseo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Prodiaseo]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[Placa] [varchar](50) NOT NULL,
	[Modelo] [varchar](max) NOT NULL,
	[Marca] [int] NOT NULL,
	[id_Conductor] [int] NOT NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[Placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[Id_Cargo] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id_Categoria] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[NIT_Cliente] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Telefono] [varchar](max) NOT NULL,
	[Localidad] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[NIT_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[id_Compra] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Tipo_Pago] [int] NOT NULL,
	[Producto] [int] NOT NULL,
	[Proveedor] [int] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[id_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Producto_Proveedor]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Producto_Proveedor](
	[Producto] [int] NOT NULL,
	[Proveedor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Venta]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Venta](
	[id_DetalleVenta] [int] NOT NULL,
	[id_Venta] [int] NOT NULL,
	[Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Venta] PRIMARY KEY CLUSTERED 
(
	[id_DetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[CC_Empleado] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Apellido] [varchar](max) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sueldo] [money] NOT NULL,
	[Cargo] [int] NOT NULL,
	[Tipo_Contrato] [int] NOT NULL,
	[Localidad] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[CC_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entregas]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entregas](
	[id_Entrega] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[id_Venta] [int] NOT NULL,
	[Placa_Camiones] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Entregas] PRIMARY KEY CLUSTERED 
(
	[id_Entrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_Factura] [int] NOT NULL,
	[IVA] [int] NOT NULL,
	[id_Venta] [int] NOT NULL,
	[Valor_Total] [int] NOT NULL,
	[id_Vendedor] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[id_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IVA]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVA](
	[id_IVA] [int] NOT NULL,
	[Porcentaje] [varchar](50) NOT NULL,
 CONSTRAINT [PK_IVA] PRIMARY KEY CLUSTERED 
(
	[id_IVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[id_Localidad] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id_Localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[id_Marca] [int] NOT NULL,
	[Marca] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[id_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[CodigoProducto] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[ValorUnitario] [varchar](50) NOT NULL,
	[Categoria] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[NIT_Proveedor] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Localidad] [int] NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[NIT_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContrato]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContrato](
	[id_Tipo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoContrato] PRIMARY KEY CLUSTERED 
(
	[id_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPago](
	[Id_Pago] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[Id_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 14/11/2023 3:44:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_Venta] [int] NOT NULL,
	[Concepto] [varchar](max) NULL,
	[Cliente] [int] NOT NULL,
	[Id_Factura] [int] NULL,
	[Tipo_Pago] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Camiones] ([Placa], [Modelo], [Marca], [id_Conductor]) VALUES (N'ABC-721', N'Mobi', 900, 1032667731)
INSERT [dbo].[Camiones] ([Placa], [Modelo], [Marca], [id_Conductor]) VALUES (N'HPD-000', N'Stepway', 901, 1047890123)
INSERT [dbo].[Camiones] ([Placa], [Modelo], [Marca], [id_Conductor]) VALUES (N'JPN-840', N'Landtrek', 902, 1065432109)
GO
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (20, N'Vendedores')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (21, N'Auxiliar administrativo')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (22, N'Financiera')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (23, N'Gerente administrativo')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (24, N'Gerente')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (25, N'Conductores')
INSERT [dbo].[Cargo] ([Id_Cargo], [Nombre]) VALUES (26, N'Jefe de Almacen')
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [Nombre]) VALUES (10001, N'Aseo')
INSERT [dbo].[Categoria] ([Id_Categoria], [Nombre]) VALUES (10002, N'Cafeteria')
GO
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (19247148, N'Maximiliano Castro', N'Calle 32 norte # 32p-32', N'3206952154', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (51609053, N'Sebastián Ríos', N'Calle 18 norte # 18p-18', N'3204021856', 111711)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (79313231, N'Sebastián Morales', N'Calle 49 norte # 49p-49', N'3206760485', 111611)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80000691, N'Luna Marín', N'Calle 31 norte # 31p-31', N'3206188461', 111611)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80004478, N'Diego Castro', N'Calle 14 norte # 14p-14', N'3201598430', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80004479, N'Esteban Cordero', N'Calle 25 norte # 25p-25', N'3209381855', 111511)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80009294, N'Eduardo Sánchez', N'Calle 47 norte # 47p-47', N'3207339839', 111511)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80012598, N'Natalia Martínez', N'Calle 48 norte # 48p-48', N'3203354496', 111411)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80013534, N'Andrea González', N'Calle 11 norte # 11p-11', N'3206847637', 111411)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80015415, N'Juan García', N'Calle 9 norte # 9p-9', N'3203877615', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80015416, N'Camila Vargas', N'Calle 2 norte # 2p-2', N'3207726951', 111311)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80022791, N'Santiago Rodríguez', N'Calle 5 norte # 5p-5', N'3204070921', 111311)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80022792, N'Emilia Torres', N'Calle 35 norte # 35p-35', N'3208679957', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80023054, N'Julián Molano', N'Calle 1 norte # 1p-1', N'3206657927', 111211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83002871, N'Martina Paredes', N'Calle 42 norte # 42p-42', N'3208558555', 111211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83002872, N'Lucas Aguirre', N'Calle 26 norte # 26p-26', N'3208917299', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83002895, N'Catalina Aguilar', N'Calle 44 norte # 44p-44', N'3207872353', 111111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83005444, N'Felipe Valencia', N'Calle 34 norte # 34p-34', N'3205686678', 111111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83006250, N'Mariano Vásquez', N'Calle 39 norte # 39p-39', N'3201802719', 111011)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83008747, N'Valentina Vega', N'Calle 50 norte # 50p-50', N'3202531693', 111011)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83011414, N'Sofía Fuentes', N'Calle 33 norte # 33p-33', N'3209405299', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83013694, N'Felipe Díaz', N'Calle 12 norte # 12p-12', N'3201517890', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83013826, N'Luis Pérez', N'Calle 3 norte # 3p-3', N'3209947633', 111011)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83200318, N'Ana Morales', N'Calle 19 norte # 19p-19', N'3207642098', 110911)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83200467, N'Iván Pérez', N'Calle 45 norte # 45p-45', N'3202261659', 111811)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (83200759, N'Eduardo Sánchez', N'Calle 23 norte # 23p-23', N'3207239836', 110911)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86000130, N'Simón Mendoza', N'Calle 41 norte # 41p-41', N'3209624170', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86000508, N'Antonia Ríos', N'Calle 46 norte # 46p-46', N'3205247261', 110911)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86002555, N'Valeria Barrios', N'Calle 27 norte # 27p-27', N'3209856640', 110811)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86003019, N'Paola Ramírez', N'Calle 10 norte # 10p-10', N'3207801317', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86004389, N'Manuel Jiménez', N'Calle 16 norte # 16p-16', N'3207501009', 110811)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86004811, N'Carolina Ortega', N'Calle 22 norte # 22p-22', N'3205486201', 111911)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86007030, N'Tomás Mendoza', N'Calle 30 norte # 30p-30', N'3203968544', 110811)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86045045, N'Daniel Navarro', N'Calle 20 norte # 20p-20', N'3201734840', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (86045046, N'Laura Rojas', N'Calle 17 norte # 17p-17', N'3208223010', 110711)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (89010964, N'Valeria Torres', N'Calle 8 norte # 8p-8', N'3207436938', 110311)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (89090481, N'Valentina Gómez', N'Calle 4 norte # 4p-4', N'3202316579', 112011)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90003654, N'Antonella Vidal', N'Calle 29 norte # 29p-29', N'3207257447', 110511)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90005918, N'Mateo Moreno', N'Calle 28 norte # 28p-28', N'3206341905', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90010986, N'Joaquín Pinto', N'Calle 43 norte # 43p-43', N'3201894889', 110711)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90016441, N'Valentín Peña', N'Calle 21 norte # 21p-21', N'3202637447', 110711)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90019349, N'Lucía Herrera', N'Calle 13 norte # 13p-13', N'3205084276', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90023263, N'Valentina Vargas', N'Calle 37 norte # 37p-37', N'3209974396', 110311)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90029703, N'Mariana Torres', N'Calle 24 norte # 24p-24', N'3209923430', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90039478, N'Andrés Hernández', N'Calle 38 norte # 38p-38', N'3201897598', 110411)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90039479, N'María López', N'Calle 6 norte # 6p-6', N'3208813746', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90049008, N'Isabella Silva', N'Calle 15 norte # 15p-15', N'3205477618', 110311)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90057408, N'Renata Ortega', N'Calle 40 norte # 40p-40', N'3203597800', 110111)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90074366, N'Miguel Soto', N'Calle 36 norte # 36p-36', N'3204302281', 110211)
INSERT [dbo].[Cliente] ([NIT_Cliente], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (90093979, N'Andrés Martínez', N'Calle 7 norte # 7p-7', N'3201315783', 110411)
GO
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (200, 100000.0000, CAST(N'2023-08-11' AS Date), 20, 1, 110027, 13617574)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (201, 135442.0000, CAST(N'2023-06-21' AS Date), 36, 2, 110028, 17170377)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (202, 397065.0000, CAST(N'2023-04-14' AS Date), 30, 3, 110029, 21397110)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (203, 382991.0000, CAST(N'2023-02-25' AS Date), 23, 1, 110035, 39557031)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (204, 303351.0000, CAST(N'2023-05-25' AS Date), 16, 2, 110048, 39805485)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (205, 374439.0000, CAST(N'2023-06-04' AS Date), 14, 3, 110056, 51711911)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (206, 429203.0000, CAST(N'2023-01-05' AS Date), 29, 1, 110061, 52731641)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (207, 393000.0000, CAST(N'2023-02-13' AS Date), 30, 2, 110062, 79327519)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (208, 147720.0000, CAST(N'2023-06-19' AS Date), 23, 3, 110081, 79652517)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (209, 369831.0000, CAST(N'2023-01-20' AS Date), 15, 1, 110143, 79764021)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (210, 164864.0000, CAST(N'2023-01-12' AS Date), 23, 2, 110171, 79987537)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (211, 114181.0000, CAST(N'2023-07-02' AS Date), 22, 3, 110172, 80271486)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (212, 132671.0000, CAST(N'2023-07-07' AS Date), 40, 1, 110173, 80880726)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (213, 214471.0000, CAST(N'2023-04-03' AS Date), 26, 2, 110175, 800046073)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (214, 296306.0000, CAST(N'2023-02-26' AS Date), 29, 3, 110180, 800091549)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (215, 221900.0000, CAST(N'2023-05-14' AS Date), 35, 1, 110209, 800106774)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (216, 273162.0000, CAST(N'2023-04-28' AS Date), 38, 2, 110215, 800136505)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (217, 104243.0000, CAST(N'2023-07-30' AS Date), 29, 3, 110219, 800172508)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (218, 253885.0000, CAST(N'2023-04-10' AS Date), 29, 1, 110238, 800184048)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (219, 297363.0000, CAST(N'2023-04-21' AS Date), 14, 2, 110241, 800186960)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (220, 266878.0000, CAST(N'2023-03-28' AS Date), 15, 3, 110244, 800242106)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (221, 301816.0000, CAST(N'2023-03-07' AS Date), 40, 1, 110245, 800242586)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (222, 354195.0000, CAST(N'2023-03-19' AS Date), 23, 2, 110250, 811006789)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (223, 152174.0000, CAST(N'2023-03-13' AS Date), 19, 3, 110251, 830018538)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (224, 453370.0000, CAST(N'2023-01-15' AS Date), 20, 1, 110255, 830027771)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (225, 127219.0000, CAST(N'2023-03-04' AS Date), 26, 2, 110264, 830037139)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (226, 225315.0000, CAST(N'2023-04-27' AS Date), 27, 3, 110269, 830051924)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (227, 283634.0000, CAST(N'2023-02-24' AS Date), 38, 1, 110270, 830058798)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (228, 226887.0000, CAST(N'2023-03-09' AS Date), 31, 2, 110271, 830063800)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (229, 444752.0000, CAST(N'2023-04-03' AS Date), 16, 3, 110281, 830087817)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (230, 257850.0000, CAST(N'2023-01-17' AS Date), 24, 1, 110288, 830094384)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (231, 471460.0000, CAST(N'2023-06-26' AS Date), 22, 2, 110289, 830104914)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (232, 211567.0000, CAST(N'2023-04-06' AS Date), 29, 3, 110292, 830116721)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (233, 288980.0000, CAST(N'2023-01-08' AS Date), 26, 1, 110302, 830130401)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (234, 307323.0000, CAST(N'2023-07-13' AS Date), 29, 2, 110311, 830139432)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (235, 220225.0000, CAST(N'2023-03-10' AS Date), 16, 3, 110318, 830512324)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (236, 467993.0000, CAST(N'2023-03-31' AS Date), 40, 1, 110319, 860001498)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (237, 374336.0000, CAST(N'2023-01-21' AS Date), 38, 2, 110322, 860001965)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (238, 101888.0000, CAST(N'2023-05-05' AS Date), 21, 3, 110323, 860002274)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (239, 478050.0000, CAST(N'2023-04-11' AS Date), 31, 1, 110328, 860005265)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (240, 442217.0000, CAST(N'2023-01-24' AS Date), 28, 2, 110329, 860007322)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (241, 183750.0000, CAST(N'2023-05-29' AS Date), 22, 3, 110334, 860029643)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (242, 103981.0000, CAST(N'2023-06-12' AS Date), 29, 1, 110366, 860031786)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (243, 220692.0000, CAST(N'2023-04-06' AS Date), 25, 2, 110367, 860451304)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (244, 282485.0000, CAST(N'2023-06-18' AS Date), 31, 3, 110368, 860516348)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (245, 128726.0000, CAST(N'2023-01-15' AS Date), 40, 1, 110371, 860517209)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (246, 318929.0000, CAST(N'2023-02-28' AS Date), 34, 2, 110394, 860523795)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (247, 316292.0000, CAST(N'2023-05-13' AS Date), 16, 3, 110408, 860527917)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (248, 292979.0000, CAST(N'2023-06-21' AS Date), 36, 1, 110413, 890326050)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (249, 123447.0000, CAST(N'2023-03-22' AS Date), 20, 2, 110416, 890900943)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (250, 489899.0000, CAST(N'2023-06-19' AS Date), 23, 3, 110423, 890939742)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (251, 155898.0000, CAST(N'2023-04-11' AS Date), 40, 1, 110436, 900057203)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (252, 141263.0000, CAST(N'2023-03-24' AS Date), 12, 2, 110452, 900155107)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (253, 231411.0000, CAST(N'2023-04-03' AS Date), 21, 3, 110460, 900233924)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (254, 383350.0000, CAST(N'2023-02-17' AS Date), 14, 1, 110463, 900263905)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (255, 264465.0000, CAST(N'2023-06-01' AS Date), 30, 2, 110473, 900341086)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (256, 204850.0000, CAST(N'2023-05-05' AS Date), 34, 3, 110477, 900348009)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (257, 305493.0000, CAST(N'2023-02-15' AS Date), 14, 1, 110479, 900348994)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (258, 152944.0000, CAST(N'2023-07-03' AS Date), 18, 2, 110483, 900378966)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (259, 369914.0000, CAST(N'2023-03-26' AS Date), 28, 3, 110494, 900411425)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (260, 266944.0000, CAST(N'2023-06-05' AS Date), 33, 1, 110502, 900505433)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (261, 198976.0000, CAST(N'2023-02-20' AS Date), 35, 2, 110504, 900534356)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (262, 248822.0000, CAST(N'2023-02-24' AS Date), 29, 3, 110521, 900566929)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (263, 238187.0000, CAST(N'2023-06-21' AS Date), 18, 1, 110533, 900666619)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (264, 309777.0000, CAST(N'2023-03-27' AS Date), 29, 2, 110542, 900692715)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (265, 188731.0000, CAST(N'2023-03-21' AS Date), 15, 3, 110555, 900703620)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (266, 160202.0000, CAST(N'2023-03-04' AS Date), 33, 1, 110557, 900803591)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (267, 294218.0000, CAST(N'2023-04-01' AS Date), 38, 2, 110560, 900846568)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (268, 184261.0000, CAST(N'2023-03-06' AS Date), 20, 3, 110561, 900851824)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (269, 213002.0000, CAST(N'2023-04-15' AS Date), 37, 1, 110583, 900939485)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (270, 253968.0000, CAST(N'2023-04-14' AS Date), 22, 2, 110591, 901042858)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (271, 178887.0000, CAST(N'2023-06-28' AS Date), 37, 3, 110596, 901044176)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (272, 330870.0000, CAST(N'2023-07-23' AS Date), 18, 1, 110600, 901088196)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (273, 114121.0000, CAST(N'2023-06-04' AS Date), 40, 2, 110618, 901124039)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (274, 246956.0000, CAST(N'2023-05-20' AS Date), 15, 3, 110620, 901132074)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (275, 163267.0000, CAST(N'2023-07-19' AS Date), 27, 1, 110660, 901134974)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (276, 133651.0000, CAST(N'2023-01-07' AS Date), 26, 2, 110696, 901214231)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (277, 489908.0000, CAST(N'2023-01-18' AS Date), 24, 3, 110699, 901215882)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (278, 356256.0000, CAST(N'2023-02-21' AS Date), 23, 1, 110705, 901235192)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (279, 366634.0000, CAST(N'2023-06-22' AS Date), 25, 2, 110747, 901246129)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (280, 268779.0000, CAST(N'2023-03-19' AS Date), 16, 3, 110764, 901370862)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (281, 188942.0000, CAST(N'2023-06-06' AS Date), 26, 1, 110768, 901397215)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (282, 114353.0000, CAST(N'2023-01-29' AS Date), 15, 2, 110776, 901409785)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (283, 109346.0000, CAST(N'2023-05-13' AS Date), 18, 3, 110779, 901436896)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (284, 123983.0000, CAST(N'2023-01-13' AS Date), 38, 1, 110782, 901471211)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (285, 108945.0000, CAST(N'2023-01-27' AS Date), 18, 2, 110793, 901521231)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (286, 289773.0000, CAST(N'2023-06-30' AS Date), 18, 3, 110796, 901538974)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (287, 455603.0000, CAST(N'2023-03-09' AS Date), 34, 1, 110806, 901575704)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (288, 136178.0000, CAST(N'2023-01-23' AS Date), 31, 2, 110819, 901642603)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (289, 301809.0000, CAST(N'2023-04-25' AS Date), 27, 3, 110848, 901648167)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (290, 152725.0000, CAST(N'2023-03-22' AS Date), 23, 1, 110903, 13617574)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (291, 470222.0000, CAST(N'2023-03-12' AS Date), 35, 2, 110914, 17170377)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (292, 135090.0000, CAST(N'2023-05-30' AS Date), 40, 3, 110993, 21397110)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (293, 116051.0000, CAST(N'2023-06-10' AS Date), 25, 1, 110995, 39557031)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (294, 304740.0000, CAST(N'2023-07-22' AS Date), 12, 2, 110999, 39805485)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (295, 491012.0000, CAST(N'2023-03-15' AS Date), 40, 3, 111010, 51711911)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (296, 347175.0000, CAST(N'2023-01-27' AS Date), 22, 1, 111013, 52731641)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (297, 217290.0000, CAST(N'2023-04-18' AS Date), 16, 2, 111028, 79327519)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (298, 253532.0000, CAST(N'2023-03-04' AS Date), 40, 3, 111038, 79652517)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (299, 259471.0000, CAST(N'2023-04-27' AS Date), 40, 1, 111039, 79764021)
GO
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (300, 489486.0000, CAST(N'2023-04-10' AS Date), 27, 2, 111044, 79987537)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (301, 113486.0000, CAST(N'2023-05-03' AS Date), 33, 3, 111047, 80271486)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (302, 286557.0000, CAST(N'2023-05-02' AS Date), 35, 1, 111049, 80880726)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (303, 112029.0000, CAST(N'2023-06-02' AS Date), 20, 2, 111057, 800046073)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (304, 279788.0000, CAST(N'2023-01-03' AS Date), 32, 3, 111058, 800091549)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (305, 279458.0000, CAST(N'2023-02-06' AS Date), 24, 1, 111059, 800106774)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (306, 143011.0000, CAST(N'2023-02-01' AS Date), 18, 2, 111060, 800136505)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (307, 254157.0000, CAST(N'2023-03-04' AS Date), 38, 3, 111061, 800172508)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (308, 121009.0000, CAST(N'2023-03-11' AS Date), 24, 1, 111062, 800184048)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (309, 121346.0000, CAST(N'2023-04-06' AS Date), 23, 2, 111063, 800186960)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (310, 187162.0000, CAST(N'2023-04-02' AS Date), 36, 3, 111064, 800242106)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (311, 319772.0000, CAST(N'2023-05-01' AS Date), 23, 1, 111095, 800242586)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (312, 396234.0000, CAST(N'2023-05-11' AS Date), 16, 2, 111356, 811006789)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (313, 248256.0000, CAST(N'2023-01-07' AS Date), 17, 3, 121013, 830018538)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (314, 326452.0000, CAST(N'2023-01-08' AS Date), 17, 1, 121039, 830027771)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (315, 199306.0000, CAST(N'2023-02-04' AS Date), 20, 2, 121048, 830037139)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (316, 235430.0000, CAST(N'2023-03-06' AS Date), 27, 3, 121074, 830051924)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (317, 154288.0000, CAST(N'2023-03-11' AS Date), 16, 1, 121110, 830058798)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (318, 115594.0000, CAST(N'2023-04-02' AS Date), 13, 2, 131307, 830063800)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (319, 146949.0000, CAST(N'2023-04-01' AS Date), 35, 3, 131309, 830087817)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (320, 322224.0000, CAST(N'2023-05-03' AS Date), 13, 1, 131315, 830094384)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (321, 313328.0000, CAST(N'2023-05-06' AS Date), 26, 2, 131320, 830104914)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (322, 298416.0000, CAST(N'2023-06-05' AS Date), 14, 3, 131323, 830116721)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (323, 159956.0000, CAST(N'2023-06-10' AS Date), 23, 1, 131338, 830126878)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (324, 151366.0000, CAST(N'2023-01-03' AS Date), 33, 2, 131353, 830130401)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (325, 298974.0000, CAST(N'2023-01-02' AS Date), 19, 3, 131382, 830139432)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (326, 249681.0000, CAST(N'2023-02-08' AS Date), 23, 1, 131384, 830512324)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (327, 399364.0000, CAST(N'2023-03-07' AS Date), 16, 2, 141800, 860001498)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (328, 232022.0000, CAST(N'2023-03-10' AS Date), 20, 3, 141803, 860001965)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (329, 243778.0000, CAST(N'2023-04-01' AS Date), 35, 1, 141805, 860002274)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (330, 347145.0000, CAST(N'2023-04-05' AS Date), 32, 2, 141814, 860005265)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (331, 215024.0000, CAST(N'2023-05-04' AS Date), 21, 3, 141824, 860007322)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (332, 288487.0000, CAST(N'2023-05-08' AS Date), 35, 1, 210010, 860029643)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (333, 224250.0000, CAST(N'2023-06-03' AS Date), 33, 2, 210020, 860031786)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (334, 338134.0000, CAST(N'2023-06-09' AS Date), 16, 3, 212003, 860451304)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (335, 111578.0000, CAST(N'2023-01-01' AS Date), 29, 1, 212006, 860516348)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (336, 388098.0000, CAST(N'2023-01-09' AS Date), 35, 2, 212007, 860517209)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (337, 155527.0000, CAST(N'2023-02-04' AS Date), 30, 3, 212010, 860523795)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (338, 299601.0000, CAST(N'2023-02-03' AS Date), 15, 1, 212012, 860527917)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (339, 372516.0000, CAST(N'2023-03-03' AS Date), 25, 2, 212014, 890326050)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (340, 125660.0000, CAST(N'2023-03-11' AS Date), 31, 3, 212022, 890900943)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (341, 111358.0000, CAST(N'2023-04-07' AS Date), 33, 1, 212029, 890939742)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (342, 228816.0000, CAST(N'2023-04-09' AS Date), 27, 2, 212035, 900057203)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (343, 315824.0000, CAST(N'2023-05-01' AS Date), 27, 3, 212040, 900155107)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (344, 182121.0000, CAST(N'2023-05-06' AS Date), 26, 1, 212050, 900233924)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (345, 311789.0000, CAST(N'2023-06-10' AS Date), 38, 2, 212053, 900263905)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (346, 239827.0000, CAST(N'2023-01-08' AS Date), 21, 3, 212067, 900341086)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (347, 151458.0000, CAST(N'2023-01-07' AS Date), 13, 1, 212071, 900348009)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (348, 114869.0000, CAST(N'2023-02-02' AS Date), 21, 2, 212079, 900348994)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (349, 273654.0000, CAST(N'2023-02-07' AS Date), 27, 3, 212082, 900378966)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (350, 175779.0000, CAST(N'2023-03-05' AS Date), 15, 1, 212103, 900411425)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (351, 222431.0000, CAST(N'2023-03-06' AS Date), 19, 2, 212110, 900505433)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (352, 318095.0000, CAST(N'2023-04-01' AS Date), 33, 3, 212112, 900534356)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (353, 154223.0000, CAST(N'2023-04-05' AS Date), 38, 1, 212117, 900566929)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (354, 136624.0000, CAST(N'2023-05-08' AS Date), 34, 2, 212121, 900666619)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (355, 118093.0000, CAST(N'2023-05-09' AS Date), 27, 3, 212126, 900692715)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (356, 334727.0000, CAST(N'2023-06-10' AS Date), 19, 1, 212130, 900703620)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (357, 121059.0000, CAST(N'2023-01-04' AS Date), 20, 2, 212134, 900803591)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (358, 255857.0000, CAST(N'2023-01-03' AS Date), 29, 3, 212140, 900846568)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (359, 155734.0000, CAST(N'2023-02-02' AS Date), 24, 1, 212146, 900851824)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (360, 226235.0000, CAST(N'2023-02-06' AS Date), 22, 2, 212154, 900939485)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (361, 296695.0000, CAST(N'2023-03-04' AS Date), 30, 3, 212157, 901042858)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (362, 217620.0000, CAST(N'2023-03-11' AS Date), 32, 1, 212175, 901044176)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (363, 125978.0000, CAST(N'2023-04-04' AS Date), 29, 2, 212180, 901088196)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (364, 311096.0000, CAST(N'2023-04-08' AS Date), 16, 3, 212183, 901124039)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (365, 159960.0000, CAST(N'2023-05-04' AS Date), 21, 1, 212185, 901132074)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (366, 292400.0000, CAST(N'2023-05-07' AS Date), 15, 2, 212196, 901134974)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (367, 316787.0000, CAST(N'2023-06-02' AS Date), 25, 3, 212198, 901214231)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (368, 369898.0000, CAST(N'2023-06-05' AS Date), 38, 1, 212204, 901215882)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (369, 175278.0000, CAST(N'2023-01-02' AS Date), 18, 2, 212221, 901235192)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (370, 151664.0000, CAST(N'2023-01-09' AS Date), 34, 3, 212229, 901246129)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (371, 236345.0000, CAST(N'2023-02-06' AS Date), 32, 1, 212230, 901370862)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (372, 159888.0000, CAST(N'2023-02-08' AS Date), 25, 2, 212231, 901397215)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (373, 136089.0000, CAST(N'2023-03-03' AS Date), 13, 3, 212236, 901409785)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (374, 170116.0000, CAST(N'2023-03-10' AS Date), 34, 1, 212237, 901436896)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (375, 224468.0000, CAST(N'2023-04-07' AS Date), 33, 2, 212238, 901471211)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (376, 136491.0000, CAST(N'2023-04-11' AS Date), 15, 3, 212241, 901521231)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (377, 331166.0000, CAST(N'2023-05-05' AS Date), 27, 1, 212248, 901538974)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (378, 225001.0000, CAST(N'2023-06-11' AS Date), 27, 2, 212254, 901575704)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (379, 338791.0000, CAST(N'2023-01-03' AS Date), 29, 3, 212257, 901642603)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (380, 129505.0000, CAST(N'2023-01-01' AS Date), 21, 1, 212269, 901648167)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (381, 197291.0000, CAST(N'2023-02-03' AS Date), 17, 2, 212281, 13617574)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (382, 198564.0000, CAST(N'2023-02-05' AS Date), 18, 3, 212282, 17170377)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (383, 139515.0000, CAST(N'2023-03-02' AS Date), 15, 1, 212294, 21397110)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (384, 119800.0000, CAST(N'2023-03-07' AS Date), 15, 1, 212301, 39557031)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (385, 292877.0000, CAST(N'2023-04-01' AS Date), 31, 2, 212305, 39805485)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (386, 168885.0000, CAST(N'2023-04-04' AS Date), 17, 3, 212306, 51711911)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (387, 110266.0000, CAST(N'2023-05-01' AS Date), 28, 1, 212312, 52731641)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (388, 178442.0000, CAST(N'2023-05-03' AS Date), 18, 2, 212313, 79327519)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (389, 261865.0000, CAST(N'2023-01-05' AS Date), 19, 3, 212315, 79652517)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (390, 280533.0000, CAST(N'2023-01-08' AS Date), 15, 1, 212316, 79764021)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (391, 131748.0000, CAST(N'2023-02-02' AS Date), 18, 2, 212317, 79987537)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (392, 154930.0000, CAST(N'2023-02-09' AS Date), 19, 3, 212318, 80271486)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (393, 111561.0000, CAST(N'2023-03-04' AS Date), 13, 1, 222416, 80880726)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (394, 292700.0000, CAST(N'2023-03-06' AS Date), 15, 2, 222419, 800046073)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (395, 266196.0000, CAST(N'2023-04-03' AS Date), 17, 3, 222420, 800091549)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (396, 166287.0000, CAST(N'2023-04-08' AS Date), 20, 1, 222429, 800106774)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (397, 216416.0000, CAST(N'2023-05-03' AS Date), 23, 2, 222430, 800136505)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (398, 222123.0000, CAST(N'2023-05-11' AS Date), 31, 3, 222438, 800172508)
INSERT [dbo].[Compras] ([id_Compra], [Precio], [Fecha], [Cantidad], [Tipo_Pago], [Producto], [Proveedor]) VALUES (399, 100000.0000, CAST(N'2023-05-21' AS Date), 30, 1, 110324, 860002274)
GO
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110027, 13617574)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110028, 17170377)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110029, 21397110)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110035, 39557031)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110048, 39805485)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110056, 51711911)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110061, 52731641)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110062, 79327519)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110081, 79652517)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110143, 79764021)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110171, 79987537)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110172, 80271486)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110173, 80880726)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110175, 800046073)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110180, 800091549)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110209, 800106774)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110215, 800136505)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110219, 800172508)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110238, 800184048)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110241, 800186960)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110244, 800242106)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110245, 800242586)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110250, 811006789)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110251, 830018538)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110255, 830027771)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110264, 830037139)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110269, 830051924)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110270, 830058798)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110271, 830063800)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110281, 830087817)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110288, 830094384)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110289, 830104914)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110292, 830116721)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110302, 830126878)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110311, 830130401)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110318, 830139432)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110319, 830512324)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110322, 860001498)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110323, 860001965)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110324, 860002274)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110328, 860005265)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110329, 860007322)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110334, 860029643)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110366, 860031786)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110367, 860451304)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110368, 860516348)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110371, 860517209)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110394, 860523795)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110408, 860527917)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110413, 890326050)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110416, 890900943)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110423, 890939742)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110436, 900057203)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110452, 900155107)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110460, 900233924)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110463, 900263905)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110473, 900341086)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110477, 900348009)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110479, 900348994)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110483, 900378966)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110494, 900411425)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110502, 900505433)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110504, 900534356)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110521, 900566929)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110533, 900666619)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110542, 900692715)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110555, 900703620)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110557, 900803591)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110560, 900846568)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110561, 900851824)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110583, 900939485)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110591, 901042858)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110596, 901044176)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110600, 901088196)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110618, 901124039)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110620, 901132074)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110660, 901134974)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110696, 901214231)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110699, 901215882)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110705, 901235192)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110747, 901246129)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110764, 901370862)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110768, 901397215)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110776, 901409785)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110779, 901436896)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110782, 901471211)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110793, 901521231)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110796, 901538974)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110806, 901575704)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110819, 901642603)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110848, 901648167)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110903, 13617574)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110914, 17170377)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110993, 21397110)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110995, 39557031)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (110999, 39805485)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111010, 51711911)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111013, 52731641)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111028, 79327519)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111038, 79652517)
GO
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111039, 79764021)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111044, 79987537)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111047, 80271486)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111049, 80880726)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111057, 800046073)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111058, 800091549)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111059, 800106774)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111060, 800136505)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111061, 800172508)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111062, 800184048)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111063, 800186960)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111064, 800242106)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111095, 800242586)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (111356, 811006789)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (121013, 830018538)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (121039, 830027771)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (121048, 830037139)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (121074, 830051924)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (121110, 830058798)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131307, 830063800)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131309, 830087817)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131315, 830094384)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131320, 830104914)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131323, 830116721)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131338, 830126878)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131353, 830130401)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131382, 830139432)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (131384, 830512324)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (141800, 860001498)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (141803, 860001965)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (141805, 860002274)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (141814, 860005265)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (141824, 860007322)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (210010, 860029643)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (210020, 860031786)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212003, 860451304)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212006, 860516348)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212007, 860517209)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212010, 860523795)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212012, 860527917)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212014, 890326050)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212022, 890900943)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212029, 890939742)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212035, 900057203)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212040, 900155107)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212050, 900233924)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212053, 900263905)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212067, 900341086)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212071, 900348009)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212079, 900348994)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212082, 900378966)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212103, 900411425)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212110, 900505433)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212112, 900534356)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212117, 900566929)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212121, 900666619)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212126, 900692715)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212130, 900703620)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212134, 900803591)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212140, 900846568)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212146, 900851824)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212154, 900939485)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212157, 901042858)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212175, 901044176)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212180, 901088196)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212183, 901124039)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212185, 901132074)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212196, 901134974)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212198, 901214231)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212204, 901215882)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212221, 901235192)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212229, 901246129)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212230, 901370862)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212231, 901397215)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212236, 901409785)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212237, 901436896)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212238, 901471211)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212241, 901521231)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212248, 901538974)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212254, 901575704)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212257, 901642603)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212269, 901648167)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212281, 13617574)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212282, 17170377)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212294, 21397110)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212301, 39557031)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212305, 39805485)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212306, 51711911)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212312, 52731641)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212313, 79327519)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212315, 79652517)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212316, 79764021)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212317, 79987537)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (212318, 80271486)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222416, 80880726)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222419, 800046073)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222420, 800091549)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222429, 800106774)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222430, 800136505)
INSERT [dbo].[Detalle_Producto_Proveedor] ([Producto], [Proveedor]) VALUES (222438, 800172508)
GO
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9500, 500, 110027, 20)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9501, 501, 110028, 11)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9502, 502, 110029, 12)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9503, 503, 110035, 13)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9504, 504, 110048, 14)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9505, 505, 110056, 15)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9506, 506, 110061, 16)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9507, 507, 110062, 17)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9508, 508, 110081, 18)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9509, 509, 110143, 19)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9510, 510, 110171, 20)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9511, 511, 110172, 21)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9512, 512, 110173, 22)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9513, 513, 110175, 23)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9514, 514, 110180, 24)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9515, 515, 110209, 25)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9516, 516, 110215, 26)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9517, 517, 110219, 27)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9518, 518, 110238, 28)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9519, 519, 110241, 29)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9520, 520, 110244, 30)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9521, 521, 110245, 10)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9522, 522, 110250, 11)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9523, 523, 110251, 12)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9524, 524, 110255, 13)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9525, 525, 110264, 14)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9526, 526, 110269, 15)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9527, 527, 110270, 16)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9528, 528, 110271, 17)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9529, 529, 110281, 18)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9530, 530, 110288, 19)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9531, 531, 110289, 20)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9532, 532, 110292, 21)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9533, 533, 110302, 22)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9534, 534, 110311, 23)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9535, 535, 110318, 24)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9536, 536, 110319, 25)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9537, 537, 110322, 26)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9538, 538, 110323, 27)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9539, 539, 110324, 28)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9540, 540, 110328, 29)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9541, 541, 110329, 30)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9542, 542, 110334, 10)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9543, 543, 110366, 11)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9544, 544, 110367, 12)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9545, 545, 110368, 13)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9546, 546, 110371, 14)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9547, 547, 110394, 15)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9548, 548, 110408, 16)
INSERT [dbo].[Detalle_Venta] ([id_DetalleVenta], [id_Venta], [Producto], [Cantidad]) VALUES (9549, 549, 110413, 17)
GO
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1008099123, N'Claudia', N'Romero', N'Ak 68 #75 A – 50, Bogotá', N'3214567890', 32, 1200000.0000, 20, 31, 111011)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1023456789, N'Gloria', N'Avila', N'Cl. 119 No. 0-10 Este, Bogotá', N'3213456789', 26, 1400000.0000, 22, 30, 111311)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1032109876, N'Juan C', N'Romero', N'Ak. 58 #127-59, Bogotá', N'3219870123', 45, 1800000.0000, 24, 31, 111011)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1032667731, N'Robert', N'Bermudez', N'Cl. 60 Sur #34, Bogotá', N'3213356068', 23, 1000000.0000, 25, 30, 111311)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1047890123, N'Ricardo', N'Cuervo', N'Dg. 62g Sur #71D- 03 sur, Perdomo, Bogotá', N'3210123456', 23, 1000000.0000, 25, 30, 111511)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1056789012, N'Camilo', N'Romero', N'Ak. 9 #131a-2, Bogotá', N'3216543210', 24, 1600000.0000, 23, 31, 111011)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1065432109, N'Javier', N'Cuervo', N'Cra. 45 #69g Sur-2 a 69g Sur-58, Bogotá', N'3211234567', 22, 1000000.0000, 25, 30, 111311)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1065432229, N'Javier', N'Gutierrez', N'Cl. 71a Sur #83-20, Bogotá', N'3213456098', 32, 1500000.0000, 26, 33, 112011)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1074563210, N'Angy', N'Pinzon', N'Cl. 95 Bis #50-36, Bogotá', N'3210987654', 20, 1250000.0000, 20, 32, 111511)
INSERT [dbo].[Empleados] ([CC_Empleado], [Nombre], [Apellido], [Direccion], [Telefono], [Edad], [Sueldo], [Cargo], [Tipo_Contrato], [Localidad]) VALUES (1098765432, N'Jeniffer', N'Rodriguez', N'Cra. 11 #82-71, Bogotá', N'3217890123', 25, 1500000.0000, 21, 33, 111711)
GO
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (600, CAST(N'2023-01-01' AS Date), 500, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (601, CAST(N'2023-02-02' AS Date), 501, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (602, CAST(N'2023-03-03' AS Date), 502, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (603, CAST(N'2023-04-04' AS Date), 503, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (604, CAST(N'2023-05-05' AS Date), 504, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (605, CAST(N'2023-06-06' AS Date), 505, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (606, CAST(N'2023-07-07' AS Date), 506, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (607, CAST(N'2023-08-08' AS Date), 507, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (608, CAST(N'2023-09-09' AS Date), 508, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (609, CAST(N'2023-10-10' AS Date), 509, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (610, CAST(N'2023-11-11' AS Date), 510, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (611, CAST(N'2023-12-12' AS Date), 511, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (612, CAST(N'2023-12-01' AS Date), 512, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (613, CAST(N'2023-01-22' AS Date), 513, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (614, CAST(N'2023-02-20' AS Date), 514, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (615, CAST(N'2023-03-12' AS Date), 515, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (616, CAST(N'2023-04-03' AS Date), 516, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (617, CAST(N'2023-05-12' AS Date), 517, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (618, CAST(N'2023-06-09' AS Date), 518, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (619, CAST(N'2023-07-18' AS Date), 519, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (620, CAST(N'2023-08-29' AS Date), 520, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (621, CAST(N'2023-09-15' AS Date), 521, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (622, CAST(N'2023-10-14' AS Date), 522, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (623, CAST(N'2023-11-11' AS Date), 523, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (624, CAST(N'2023-12-02' AS Date), 524, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (625, CAST(N'2023-01-02' AS Date), 525, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (626, CAST(N'2023-02-03' AS Date), 526, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (627, CAST(N'2023-03-04' AS Date), 527, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (628, CAST(N'2023-04-05' AS Date), 528, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (629, CAST(N'2023-05-06' AS Date), 529, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (630, CAST(N'2023-06-07' AS Date), 530, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (631, CAST(N'2023-07-08' AS Date), 531, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (632, CAST(N'2023-08-09' AS Date), 532, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (633, CAST(N'2023-09-10' AS Date), 533, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (634, CAST(N'2023-10-11' AS Date), 534, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (635, CAST(N'2023-11-12' AS Date), 535, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (636, CAST(N'2023-12-13' AS Date), 536, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (637, CAST(N'2023-01-14' AS Date), 537, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (638, CAST(N'2023-02-15' AS Date), 538, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (639, CAST(N'2023-03-16' AS Date), 539, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (640, CAST(N'2023-04-17' AS Date), 540, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (641, CAST(N'2023-05-18' AS Date), 541, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (642, CAST(N'2023-06-19' AS Date), 542, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (643, CAST(N'2023-07-20' AS Date), 543, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (644, CAST(N'2023-08-21' AS Date), 544, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (645, CAST(N'2023-09-22' AS Date), 545, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (646, CAST(N'2023-10-23' AS Date), 546, N'HPD-000')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (647, CAST(N'2023-11-24' AS Date), 547, N'JPN-840')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (648, CAST(N'2023-12-25' AS Date), 548, N'ABC-721')
INSERT [dbo].[Entregas] ([id_Entrega], [Fecha], [id_Venta], [Placa_Camiones]) VALUES (649, CAST(N'2023-01-26' AS Date), 549, N'HPD-000')
GO
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (700, 4, 500, 100000, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (701, 5, 501, 285367, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (702, 6, 502, 453218, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (703, 4, 503, 163592, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (704, 5, 504, 379104, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (705, 4, 505, 210647, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (706, 5, 506, 421943, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (707, 6, 507, 294567, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (708, 4, 508, 112355, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (709, 5, 509, 493816, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (710, 4, 510, 170924, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (711, 5, 511, 416781, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (712, 6, 512, 264789, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (713, 4, 513, 122478, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (714, 5, 514, 487623, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (715, 4, 515, 281974, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (716, 5, 516, 399601, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (717, 6, 517, 209384, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (718, 4, 518, 192745, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (719, 5, 519, 428376, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (720, 4, 520, 118903, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (721, 5, 521, 472811, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (722, 6, 522, 254796, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (723, 4, 523, 132571, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (724, 5, 524, 376595, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (725, 4, 525, 167438, 1008099123)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (726, 5, 526, 345692, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (727, 6, 527, 211597, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (728, 4, 528, 113927, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (729, 5, 529, 428904, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (730, 4, 530, 236589, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (731, 5, 531, 307542, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (732, 6, 532, 146789, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (733, 4, 533, 448120, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (734, 5, 534, 284693, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (735, 4, 535, 106342, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (736, 5, 536, 368210, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (737, 6, 537, 222475, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (738, 4, 538, 197821, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (739, 5, 539, 481395, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (740, 4, 540, 250734, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (741, 5, 541, 341856, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (742, 6, 542, 159482, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (743, 4, 543, 413529, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (744, 5, 544, 238497, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (745, 4, 545, 123845, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (746, 5, 546, 394691, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (747, 6, 547, 209076, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (748, 4, 548, 156842, 1074563210)
INSERT [dbo].[Facturas] ([id_Factura], [IVA], [id_Venta], [Valor_Total], [id_Vendedor]) VALUES (749, 5, 549, 436078, 1074563210)
GO
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110027, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110028, 78)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110029, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110035, 83)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110048, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110056, 55)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110061, 59)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110062, 80)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110081, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110143, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110171, 65)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110172, 51)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110173, 66)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110175, 69)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110180, 54)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110209, 72)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110215, 89)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110219, 73)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110238, 53)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110241, 56)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110244, 67)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110245, 81)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110250, 90)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110251, 57)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110255, 70)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110264, 52)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110269, 84)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110270, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110271, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110281, 82)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110288, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110289, 77)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110292, 60)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110302, 74)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110311, 88)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110318, 71)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110319, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110322, 62)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110323, 63)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110324, 85)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110328, 50)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110329, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110334, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110366, 57)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110367, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110368, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110371, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110394, 74)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110408, 85)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110413, 84)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110416, 71)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110423, 70)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110436, 63)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110452, 69)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110460, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110463, 77)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110473, 54)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110477, 55)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110479, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110483, 89)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110494, 72)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110502, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110504, 73)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110521, 88)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110533, 50)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110542, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110555, 60)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110557, 78)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110560, 66)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110561, 82)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110583, 83)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110591, 51)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110596, 65)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110600, 62)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110618, 52)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110620, 80)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110660, 67)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110696, 81)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110699, 59)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110705, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110747, 53)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110764, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110768, 50)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110776, 72)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110779, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110782, 84)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110793, 77)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110796, 57)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110806, 74)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110819, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110848, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110903, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110914, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110993, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110995, 65)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (110999, 78)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111010, 53)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111013, 70)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111028, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111038, 71)
GO
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111039, 67)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111044, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111047, 83)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111049, 81)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111057, 50)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111058, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111059, 72)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111060, 77)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111061, 84)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111062, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111063, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111064, 52)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111095, 85)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (111356, 88)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (121013, 55)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (121039, 59)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (121048, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (121074, 54)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (121110, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131307, 73)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131309, 82)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131315, 66)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131320, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131323, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131338, 74)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131353, 51)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131382, 89)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (131384, 62)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (141800, 63)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (141803, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (141805, 52)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (141814, 67)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (141824, 71)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (210010, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (210020, 84)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212003, 85)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212006, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212007, 60)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212010, 83)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212012, 57)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212014, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212022, 81)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212029, 89)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212035, 54)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212040, 69)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212050, 55)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212053, 82)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212067, 66)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212071, 65)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212079, 53)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212082, 88)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212103, 56)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212110, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212112, 80)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212117, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212121, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212126, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212130, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212134, 67)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212140, 74)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212146, 70)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212154, 63)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212157, 71)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212175, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212180, 50)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212183, 78)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212185, 52)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212196, 73)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212198, 89)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212204, 77)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212221, 72)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212229, 60)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212230, 85)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212231, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212236, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212237, 82)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212238, 65)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212241, 81)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212248, 59)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212254, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212257, 51)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212269, 61)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212281, 79)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212282, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212294, 87)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212301, 62)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212305, 53)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212306, 80)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212312, 86)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212313, 64)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212315, 57)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212316, 68)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212317, 88)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (212318, 60)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222416, 71)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222419, 76)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222420, 75)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222429, 70)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222430, 58)
INSERT [dbo].[Inventario] ([Producto], [Cantidad]) VALUES (222438, 66)
GO
INSERT [dbo].[IVA] ([id_IVA], [Porcentaje]) VALUES (4, N'0%')
INSERT [dbo].[IVA] ([id_IVA], [Porcentaje]) VALUES (5, N'5%')
INSERT [dbo].[IVA] ([id_IVA], [Porcentaje]) VALUES (6, N'19%')
GO
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110111, N'Usaquén')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110211, N'Chapinero')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110311, N'Santa Fe')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110411, N'San Cristóbal')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110511, N'Tunjuelito')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110711, N'Bosa')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110811, N'Kennedy')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (110911, N'Fontibón')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111011, N'Engativá')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111111, N'Suba')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111211, N'Barrios Unidos')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111311, N'Teusaquillo')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111411, N'Los Mártires')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111511, N'Antonio Nariño')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111611, N'Puente Aranda')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111711, N'La Candelaria')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111811, N'Rafael Uribe Uribe')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (111911, N'Ciudad Bolívar')
INSERT [dbo].[Localidad] ([id_Localidad], [Nombre]) VALUES (112011, N'Sumapaz')
GO
INSERT [dbo].[Marcas] ([id_Marca], [Marca]) VALUES (900, N'Fiat')
INSERT [dbo].[Marcas] ([id_Marca], [Marca]) VALUES (901, N'Renault')
INSERT [dbo].[Marcas] ([id_Marca], [Marca]) VALUES (902, N'Peugeot')
GO
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110027, N' PUNTO ECOLOGICO 2 CANECAS 53 LT', N'39996,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110028, N'AMBIENTADOR GLADE GLASS REPUESTO', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110029, N'AMBIENTADOR PISOS FABULOSO X 1000 CC', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110035, N'MOPA PLANA TASK MICROFIBRA 43 CM CON ESTRUCTURA', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110048, N'HARAGAN CABO METALICO X 80 CM', N'87000,2
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110056, N'BALDE PLASTICO RDN 12 LTS', N'76000,65

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110061, N'BINNER POLVO Y BRILLO 2 EN 1 X 300 ML', N'35000,25

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110062, N'BIOVARSOL X 3000 CC', N'54000,75


', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110081, N'JABON DETERGENTE LIQUIDO DERSA X 4 LT', N'98000,45

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110143, N'TOALLA MICROFIBRA 40 X 60 CM', N'45000,4


', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110171, N'BRILLADOR REPUESTO X 80 CM', N'76000,65



', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110172, N'BRILLADOR X 100 CM CABO METALICO', N'35000,25




', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110173, N'BRILLADOR X 40 CM CABO METALICO', N'54000,75





', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110175, N'BRILLADOR X 80 CM CABO METALICO', N'12000,5
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110180, N'CABO PLASTICO 1.40 MT', N'87000,2

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110209, N'CEPILLO LAVACARRO', N'63000,7

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110215, N'CEPILLO PARA PISO (PALO 1.20 MT)', N'74000,85

', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110219, N'CERA POLIMERICA AUTOBRILLANTE FULGOR X 3800 CC', N'29000,35
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110238, N'CHURRUSCO PARA LAVAR GRECA', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110241, N'CLOROX ROPA COLOR X 2000 CC', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110244, N'CREMA FROTEX MULTIUSOS X 1000 GRS', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110245, N'CREMA FROTEX MULTIUSOS X 500 GRS', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110250, N'CREOLINA X 20 LT', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110251, N'DESENGRASANTE EASY OFF X 500 ML', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110255, N'LIMPIADOR MULTIUSOS MR MUSCULO X 500', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110264, N'CEPILLO INDUSTRIAL TIPO EDIS 30 CM', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110269, N'ESCOBA CERDA SUAVE FULLER PINTO REF 218', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110270, N'ESCOBA CERDA SUAVE IMPERIAL S/P', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110271, N'ESCOBA CERDA SUAVE/DURA FULLER PINTO REF GIRASOL S/M', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110281, N'ESCOBA TIPO EDIS CERDA PLASTICA 60 CM', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110288, N'ESPONJA DOBLE USO BOMBRIL X UND', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110289, N'ESPONJA DOBLE USO UND', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110292, N'ESPONJA MALLA BLANCA', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110302, N'AMBIENTADOR PISOS FABULOSO X 2000 CC', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110311, N'HIPOCLORITO DE SODIO 13% LIMPRIX X 3800 ML', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110318, N'JABON DETERGENTE EN POLVO ARIEL X 850 GRS', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110319, N'JABON DETERGENTE EN POLVO DERSA X 1000 GRS', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110322, N'JABON DETERGENTE EN POLVO DERSA X 500 GRS', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110323, N'JABON DETERGENTE EN POLVO DERSA X 4000 GRS', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110324, N'JABON DETERGENTE EN POLVO FAB X 2000 GRS', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110328, N'JABON DETERGENTE EN POLVO ULTREX X 1000 GRS', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110329, N'JABON DETERGENTE EN POLVO ULTREX  X 20 KL', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110334, N'JABON EN BARRA REY X 300 GRS', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110366, N'PAÑUELO KLEENEX PARA AUTO', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110367, N'PAÑUELO KLEENEX CUBO', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110368, N'LAVALOZA CREMA AXION X 450 GRS', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110371, N'LAVALOZA CREMA LOZA CREM X 450 GRS', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110394, N'LIMPIAVIDRIOS X 500 CC', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110408, N'MECHA TRAPERO 1A PARA GANCHO REF 800', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110413, N'PAÑO ABSORBENTE BRIO', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110416, N'PAÑO ABSORBENTE ETERNA', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110423, N'PAPEL HIG FAMILIA MEGAROLLO BLANCO HT X 30 MT (ROJO)', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110436, N'PAPEL HIG FAMILIA BLANCO HT 22 MT REF 70246', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110452, N'PAPEL HIG ROSAL BLANCO ROLLO HT X 22 MT - MORADO', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110460, N'SUAVIZANTE X 1000', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110463, N'PAPELERA PLASTICA TAPA VAIVEN 10-12 LTS', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110473, N'PATO TANQUE X 40 GRS UND', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110477, N'PUNTO ECOLOGICO 3 CANECAS 21 LT SIN TABLERO', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110479, N'RAID MOSCAS Y ZANCUDOS X 235 ML', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110483, N'RECOGEDOR PLASTICO BANDA DE CAUCHO 1A', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110494, N'SANITIZANTE SCOTT X 400 ML REF: 30197085', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110502, N'SUAVIZANTE X 5 GL', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110504, N'SUAVIZANTE SOFLAN X 5000 CC', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110521, N'EASY OF / MR M', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110533, N'LAVALOZA LIQUIDO AXION DOYPAC X 1,5', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110542, N'TRAPERO MICROFIBRA REPUESTO 400 GRS', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110555, N'VANISH LIQUIDO 1.8 BLANCO TOTAL', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110557, N'GUANTE VINILO TALLA L CAJA X 100 UND', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110560, N'VARSOL X 3800 CC', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110561, N'VARSOL INOLORO X 3800 CC', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110583, N'BRILLADOR REPUESTO X 40 CM', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110591, N'TOALLA COCINA FAMILIA ACOLCHAMAX X 120 HJS', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110596, N'AMBIENTADOR GLADE TOQUE APARATO + REP', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110600, N'PAÑO EN MALLA X UND', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110618, N'AMBIENTADOR BONAIRE AUTOMATICO REP', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110620, N'ESPONJA BORRADOR PARA PAREDES BON BRILL', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110660, N'JABON DETERGENTE EN POLVO ARIEL X 2350 GRS', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110696, N'DISCO DE LIMPIEZA PAD TASK PRO 20 ROJO', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110699, N' LAVALOZA LIQUIDO X 1000', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110705, N'
SEÑAL DE PREVENCION PISO MOJADO TASK PRO
', N'
45000,4
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110747, N'
BINNER LIMPIA TAPICERIA ESPUMA X 400
', N'
54000,75
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110764, N'
LIMPIA PISOS DESINFECTANTE LIMPLUX L/P X 3800
', N'
54000,75
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110768, N'
LIMPIADOR AJAX BCARBONATO LIMON X LT
', N'
63000,7
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110776, N'
JABON LIQUIDO PARA MANOS ANTIBACTERIAL X 500 ML
', N'
74000,85
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110779, N'
SERVILLETA ELITE X 320
', N'
74000,85
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110782, N'
DESENGRASANTE MULTIPROPOSITO LIMPLUX X 3800
', N'
74000,85
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110793, N'
CREMA FROTEX MULTIUSO DOY PACK X 250 GRS
', N'
45000,4
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110796, N'
CABO METALICO PLASTICO 1,5 MT
', N'
45000,4
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110806, N'
CEPILLO PLANCHA TASK ARCOASEO
', N'
45000,4
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110819, N'
LUSTRAMUEBLES X 500
', N'
54000,75
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110848, N'
ESCOBA CERDA SUAVE IMPERIAL C/P
', N'
54000,75
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110903, N'
CEPILLO TIPO EDIS X 60 CM SUAVE
', N'
54000,75
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110914, N'
BOLSA NEGRA 70 X 90 CM UND
', N'
63000,7
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110993, N'
PAÑO ETERNA HOGAREÑO ROLLO X 50 UND
', N'
63000,7
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110995, N'
PAÑO MALLA ETERNA X 3
', N'
63000,7
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (110999, N'
HARAGAN ALUMINIO X 80 CM CABO ALUMINIO X 150 CM
', N'
98000,45
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111010, N'
JABON LIQUIDO PARA MANOS LIMPLUX NEUTRO X3800 CC
', N'
98000,45
', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111013, N'JABON LIQUIDO PARA MANOS LIMPLUX 1000 CC', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111028, N'TOALLA DE MANOS ELITE BLANCA ROLLO 1 A 1 X 110  REF. 11011', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111038, N' ESPONJA SABRA LIMPIA YA', N'76000,65', 10001)
GO
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111039, N'LIMPIAVIDRIOS LIMPLUX X 3800 ML', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111044, N'MOPA TIPO AVION 90 CM CABO 1,60 MTS', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111047, N'JABON LIQUIDO PARA MANOS LIMPLUX X 500 ML', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111049, N'BRILLADOR ALGODÓN 82 CM SIN ARMAZON REF. 2430', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111057, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 150X180 CM DRYMAT AZUL', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111058, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 300X100 CM DRYMAT AZUL', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111059, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 145X60 CM DRYMAT AZUL', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111060, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 110X100 CM DRYMAT AZUL', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111061, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 130X100 CM DRYMAT AZUL', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111062, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 200X100 CM DRYMAT AZUL', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111063, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 120X140 CM DRYMAT AZUL', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111064, N'TAPETE ATRAPAHUMEDAD TRÁFICO PESADO 140X30 CM DRYMAT AZUL', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111095, N'REPUESTO MOPA PLANA TASK MICROFIBRA 43 CM', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (111356, N'TAPABOCA N95', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (121013, N'CREMA DENTAL COLGATE X 100 ML', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (121039, N'GEL ANTIBACTERIAL X 1000', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (121048, N'PAÑUELO CUBO FAMILIA', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (121074, N'MAQUINA DE AFEITAR SHICK PARA HOMBRE X UND', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (121110, N'JABON PROTEX X 120 GRS X UND', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131307, N'GUANTE ETERNA NEGRO CAL 35 T 8 1/2', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131309, N'GUANTE ETERNA NEGRO CAL 25 T 8 1/2', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131315, N'GUANTE VERDE CAL 18', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131320, N'GUANTE MULTIASEO AMARILLO TALLAS VARIAS', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131323, N'GUANTE DE CARNAZA', N'74000,85', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131338, N'GUANTE VINILO TALLA S CAJA X 100 UND', N'29000,35', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131353, N'GUANTE ROJO TALLAS VARIAS', N'98000,45', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131382, N'BOLSA BLANCA TASK 40 X 55 CM PQ X 10 UND', N'45000,4', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (131384, N'BOLSA ROJA TASK 40 X 55 CM PQ X 10 UND', N'76000,65', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (141800, N'BAYETILLA BLANCA X MT FILETEADA', N'35000,25', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (141803, N'BAYETILLA BLANCA 50 X 70 CM', N'54000,75', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (141805, N'LIMPION ESTAMPADO 40 X 70 CM', N'12000,5', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (141814, N'LIMPION TELA TOALLA 45 X 50 CM', N'87000,2', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (141824, N'BAYETILLA ROJA 50 X 70 CM', N'63000,7', 10001)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (210010, N'VASO PLASTICO BLANCO 3,5 OZ PQ X 50 UND', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (210020, N'GALLETAS MINI CHIPS X 35 GR PAQ. X 12', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212003, N'AROMATICA DOÑA PANELA X 48 CUBOS', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212006, N'AROMATICA FRUTALIA X 120 SOBRES', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212007, N'AROMATICA FRUTALIA X 20 SOBRES', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212010, N'AROMATICA HINDU FRUTOS ROJOS/TROPICALES/SALVAJES CJ X 20', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212012, N'AROMATICA JAIBEL FRUTAL X 20 SOBRES', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212014, N'AROMATICA MASAROMA CON PANELA CAJA X 25 SOBRES', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212022, N'AZUCAR INCAUCA TUBIPACK X 200 UND', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212029, N'FILTRO PARA CAFETERA # 8 PQ X 100', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212035, N'FOSFOROS', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212040, N'INSTACREM FRASCO X 450 GRS', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212050, N'PAPEL ALUMINIO X 100 MT', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212053, N'PAPEL ALUMINIO X 40 MT', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212067, N'TE FRUTOS ROJOS CAJA X 20 BOLSITAS', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212071, N'TE HINDU ROJO CAJA X 20 BOLSITAS', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212079, N'VINIPEL X 300 MT', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212082, N'PANELA PULVERIZADA NATURAL X 500 GRS', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212103, N'CAPUCHINO COLCAFE X 270 GRS', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212110, N'TE HINDU NEGRO PREMIUM', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212112, N'MAYONESA X 200 GRS', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212117, N'INSTACREM LIGHT FRASCO X 450 GRS', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212121, N'GALLETA SALTIN PQ X 9', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212126, N'OLLETA 3 LTS', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212130, N'AROMATICA HINDU HERBAL TEA SABORES X 20 SBS', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212134, N'PONQUE GALA X 5 UND', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212140, N'JARRA PLASTICA 2,7 LTS', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212146, N'TE HINDU VERDE', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212154, N'CHOCOLATE QUESADA VAINILLA', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212157, N'TE HINDU TRADICIONAL CAJA X 100 BOLSITAS', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212175, N'CAFÉ JUAN VALDEZ X 340 GRS', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212180, N'MANI LA ESPECIAL X 45 GRS', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212183, N'LECHE KLIM FORTIFICADA 840 GRS', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212185, N'TE JAIBEL NEGRO CJ X 20 UND', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212196, N'TE HINDU MANZANILLA MIEL Y GENGIBRE', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212198, N'AROMATICA HINDU CON SOBREENVOLTURA SURTIDAS X 20', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212204, N'VASO CARTON BLANCO DOMINGO 9 OZ PQ X 50', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212221, N'CHOCORRAMO MINI X 400 GRS PQ X 20 UND', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212229, N'VASO CARTON 6 OZ C/T', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212230, N'CAFÉ SELLO ROJO X 2500 GRS', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212231, N'CAFÉ OMA LIN. SELECTA X 500', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212236, N'AMERICANO NESCAFE DOLCE GUSTO X 16', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212237, N'AGUA MANANTIAL SIN GAS DE 600 ML', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212238, N'GASEOSA COCA COLA ORIGINAL LATA X 235 ML', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212241, N'MAIZITOS X 360 GRS PQ X 12 UND', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212248, N'CAFÉ JUAN VALDEZ INSTANTANEO FCO 95 GRS', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212254, N'GALLETA TOSH AVENA MANZ MANI X 180 GRS PQ X 6', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212257, N'GALLETA CLUB SOCIAL INTEGRAL X 24 GRS PQ X 9', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212269, N'CAFE NESCAFE GRANULADO X 170GR', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212281, N'GALLETA DUX PQ X 9', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212282, N'GALLETA WAFER PQ X 18', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212294, N'SERVILLETA SCOTT BASIC BLANCA PQ X 120 UND', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212301, N'AZUCAR X 5 KG', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212305, N'TE HINDU MANGOSTINO', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212306, N'COCA COLA SIN AZUCAR X 400 ML', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212312, N'ACHIRAS RAMO X 300 GR PAQ. X 12', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212313, N'GALLETA RITZ RELLENAS QUESO X 204 GR PQ X 6 UND', N'54000,75', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212315, N'GASEOSA COCACOLA ORIGINAL BOTELLA X 250 ML', N'12000,5', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212316, N'GASEOSA SCHWEPPES SODA X 400 ML BOTELLA PLASTICA', N'87000,2', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212317, N'GASEOSA SCHWEPPES SODA X 269 ML LATA', N'63000,7', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (212318, N'MEIZENA X 380 GRS', N'74000,85', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222416, N'AZUCAR INCAUCA X 2.5 KL', N'29000,35', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222419, N'CAFE AGUILA ROJA X 2500 GRS', N'98000,45', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222420, N'CAFE AGUILA ROJA X 500 GRS', N'45000,4', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222429, N'CAFE INSTANTANEO NESCAFE FRASCO X 170 GRS', N'76000,65', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222430, N'CAFE SELLO ROJO X 500 GRS', N'35000,25', 10002)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222438, N'CAFE OMA TRADICIONAL X 500 GRS', N'54000,75', 10002)
GO
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222449, N'GALLETAS DUCALES X TACOS', N'12000,5', NULL)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222452, N'CAFE INSTANTANEO BASTILLA X 170 GRS', N'87000,2', NULL)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222453, N'CANELA EN ASTILLA X 11 GRS', N'63000,7', NULL)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222465, N'PANELA X LB', N'74000,85', NULL)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222473, N'VINAGRE DEL CASINO X 500 CC', N'29000,35', NULL)
INSERT [dbo].[Producto] ([CodigoProducto], [Nombre], [ValorUnitario], [Categoria]) VALUES (222478, N'AZUCAR INCAUCA X LB', N'98000,45', NULL)
GO
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (13617574, N'DAIRO FERNANDO URQUIJO CAMELO', N'Cl 5A No. 43B-25 OF 502, Medellín', N'3216665555', 110111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (17170377, N'JORGE ARTURO PINEDA ARISTIZABAL', N'Cl.84A 47-96 (Itagui), Medellín', N'3219012345', 110211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (21397110, N'LUZ MARINA DEL SOCORRO GOMEZ PINEDA', N'Cr 78B No. 3C-31, Medellín', N'3218765432', 110311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (39557031, N'CLAUDIA ROMERO BARRETO', N'Cl 11 No. 70-99, Medellín', N'3212345678', 110211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (39805485, N'NELCY ROJAS BUITRAGO', N'Cl 9A No. 9-71, C.P 17001', N'3215796802', 110411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (51711911, N'HILDA INES BEDOYA CARREÑO', N'Av LOS No. BÚCAROS-3 167 L 8 MARSELLA REAL, C.P 68001', N'3212221111', 110511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (52731641, N'GINA PAOLA PINZON BARRANTES', N'Cl 37BISSUR No. 33A-75, C.P 11001', N'3215554444', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (79327519, N'EDGAR RUIZ FLOREZ', N'Av 40 No. 16-33, C.P 11001', N'3213214321', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (79652517, N'MAURICIO GIRALDO GOMEZ', N'dg 75 b2A-159', N'3212468642', 111511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (79764021, N'OSWALDO LOPEZ', N'Cr 47 No. 62-59, Medellín', N'3215550000', 110211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (79987537, N'JIMMY ANTONIO NOY ROBLES', N'cr. 8130-07', N'3218901234', 110311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80271486, N'GILBERTO CARDONA RIVERA', N'Cl 9 No. 40-10, C.P 11001', N'3216665555', 110411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (80880726, N'JULIAN ALBERTO DELGADILLO RINCON', N'Cl 37 No. 14-74 P 2 L 4 13 C 28, C.P 68001', N'3210001111', 110511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800046073, N'AGENCIA DE ALCOHOL EL AS LTDA', N'Cl 13 No. 37-53, C.P 76001', N'3219998888', 110711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800091549, N'IMPRESISTEM SAS', N'Cr 91 No. 136-80, C.P 11001', N'3218765432', 110211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800106774, N'MERCADO ZAPATOCA S A', N'Cl 73A No. 18A-30, C.P 66001', N'3211352468', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800136505, N'DATECSA S.A.', N' Cr 52 No. 55-08, Medellín', N'3215554444', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800172508, N'PRESS APLIQUE SAS', N'Cr 16 No. 3N-27 L 1, C.P 63001', N'3212228888', 111511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800184048, N'RIVEROS BOTERO COMPAÑIA LIMITADA', N'Cr 52 No. 48-85 INT 315, Medellín', N'3219991234', 111511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800186960, N'ALTIPAL S A S', N'Cr 25 No. 52-09, C.P 11001', N'3217776666', 110711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800242106, N'SODIMAC COLOMBIA S A', N'Cr 102B No. 47C-28, Medellín', N'3215556666', 110111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (800242586, N'CENTRAL DE DOTACIONES S.A.S.', N'via 4070-62', N'3211234567', 110311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (811006789, N'JUAN D. HOYOS DISTRIBUCIONES S.A.S', N'Cl 56ASUR No. 81-01, C.P 11001', N'3210123456', 110411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830018538, N'COMERCIALIZADORA DE ALIMENTOS OROSOL S A', N'Cr 8 No. 23-24, C.P 66001', N'3215436789', 110511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830027771, N'BELPAPEL S. A. S.', N'Tr 21 No. 60-94, C.P 11001', N'3214443333', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830037139, N'SALES AND SERVICES TECHNOLOGY SYSTEMS S A S', N' Cr. 43 No. 80-224, Atlántico', N'3219876543', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830051924, N'INVERSIONES ARANDA PINILLA E HIJOS S . A.', N'Cl 53 No. 49-124 L 255, Medellín', N'3214567890', 111611)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830058798, N'COMERCIALIZADORA MONTEVERDE SAS', N'Cra.46 No.69Sur-25 (Sabaneta), Medellín', N'3215551234', 111511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830063800, N'COVAL COMERCIAL S.A.S', N'Cl 24C No. 80A-35, C.P 11001', N'3217776666', 110911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830087817, N'OVANTE SOCIEDAD POR ACCIONES SIMPLIFICADA', N'Cr 29 No. 32-164 L-209, C.P 76520', N'3211239876', 111611)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830094384, N'IMPORTADORA AMG S A S', N'carrera 3 oeste2-09', N'3211234567', 111711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830104914, N'COLOMBIA CIPE S. A .S', N' Cl 38B No. 79-07 AP 301, Medellín', N'3214567890', 111811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830116721, N'SURTITIENDAS DE LA 11 S A S', N'Cr 70B No. 1-58, C.P 11001', N'3213334444', 111811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830126878, N'OPCIONES Y FORMAS SAS', N'CR. 61 No. 58-68, Atlántico', N'3219120345', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830130401, N'SOLOPLAST S A S', N'Cr 14 No. 12-62, C.P 63001', N'3211112222', 110711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830139432, N'DISTRIBUIDORA DE QUESOS CANAGUARO LTDA', N'Calle 29 No. 22-41, Valle', N'3212345678', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (830512324, N'SISMA DISTRIBUCIONES LTDA', N' Cl 19 No. 4-37, C.P 11001', N'3218765678', 110411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860001498, N'LEGISLACION ECONOMICA S.A. LEGIS S.A.', N'Cl 93 No. 43-11, C.P 08001', N'3211230000', 110511)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860001965, N'TEXTILES LAFAYETTE SAS PUDIENDO GIRAR BAJO LA RAZON SOCIAL TELAS LAFAYETTE SAS O SIMPLEMENTE LAFAYETTE SAS', N'Cl 36SUR No. 39-47, C.P 05266', N'3217892345', 111411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860002274, N'ETERNA S A', N'Cr 7 No. 67-28 OF 301, C.P 11001', N'3219998888', 110111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860005265, N'GASEOSAS COLOMBIANAS S.A.S.', N'Cl 31D No. 56-106 SECTOR 11 DE NOVIEMBRE, C.P 13001', N'3217776666', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860007322, N'CAMARA DE COMERCIO DE BOGOTA', N'ci 5046-41', N'3213332222', 111111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860029643, N'LELLER SAS', N' Cr 69 No. 25-43 L 9, C.P 11001', N'3213215432', 111611)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860031786, N'FULLER PINTO S A', N'Aut FLORIDA No. KM-1, C.P 68001', N'3218887777', 111711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860451304, N'COMPAÑIA ASESORA DE ESPECIALIDADES QUIMICAS CIACOMEQ SAS', N'Cl 53 No. 47-27 INT 504, Medellín', N'3219998888', 111811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860516348, N'OZALID S.A.', N'Cr 25 No. 17N-17 VILLA HELENA, C.P 68001', N'3219871234', 111811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860517209, N'INVERSIONES ROMANO LTDA', N'Cr.13 No.52-43, Bogotá', N'3216789012', 110711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860523795, N'SUMINISTROS E IMPRESOS S A S', N' Cl 84 No. 35 B-04, C.P 66001', N'3212223333', 111911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (860527917, N'INDUSTRIAS BISONTE S.A.', N' Cr 70 No. 27-43, Medellín', N'3212345678', 111911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (890326050, N'AGRICOLA HIMALAYA SA', N'Cr 31 No. 43-12, C.P 76001', N'3218887777', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (890900943, N'COLOMBIANA DE COMERCIO S.A.', N' Cl 12 No. 60-90, C.P 11001', N'3215551234', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (890939742, N'INDUSTRIAS FROTEX S.A.S.', N'Cr 6 No. 14-21, C.P 47001', N'3213456789', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900057203, N'COMERCIALIZADORA DE DESECHABLES SIDERAL LTDA', N'Cl 13 No. 60-75, C.P 11001', N'3217892345', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900155107, N'CENCOSUD COLOMBIA S.A.', N'av. 514-31', N'3212221111', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900233924, N'PLASTISUBA G.C EU', N'COOTRA ALIVAL LTDA. -S/N, C.P 76001', N'3215553333', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900263905, N'RUIZ FLOREZ Y CIA S EN C', N'Bocagrande Cr.3a No.8-66, Cartagena', N'3211239999', 111311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900341086, N'COMERCIAL NUTRESA S . A .S', N'Cl 68 No. 83-47, C.P 11001', N'3212345678', 110911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900348009, N'COMPRAS PERFECTAS S.A.S', N'Cl 35 No. 13-61 OF 103, C.P 68001', N'3218887777', 110111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900348994, N'COMERCIALIZADORA DISFENIX S.A.S', N'Cl 43 No. 13-36 CL BOGOTA, C.P 13001', N'3214567890', 110811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900378966, N'INVERSIONES VADISA SOCIEDAD POR ACCIONES SIMPLIFICADA', N'carrera 9035 d-23', N'3217890123', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900411425, N'SINTETICOS HASCAL S.A.S.', N'Cl 20 No. 20-34, C.P 05376', N'3215678765', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900505433, N'TRAPISOL S A S', N'Cr 69M No. 71-44, C.P 11001', N'3214567890', 111411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900534356, N'WORLD OFFICE COLOMBIA S.A.S', N'Cl 38 No. 6-09 LAGOS II, C.P 68001', N'3216665555', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900566929, N'DISTRIBUIDORA Y PAPELERIA LA MAYORIA C.D. S.A.S.', N'Cl 49A No. 80-11 OF 201, Medellín', N'3214567890', 111111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900666619, N'PRODUCTOS DE ASEO LIDER S.A.S', N'Cr 13 No. 51-30, C.P 68001', N'3213337777', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900692715, N'DISTRIBUIDORA AZUCARES LA MORENA S.A.S.', N'Cl 25A No. 32-45, C.P 11001', N'3211234567', 111211)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900703620, N'GRUPO COMERCIAL ALDANA SAS', N'Cl 59 No. 13-84, C.P 11001', N'3212345678', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900803591, N'ASEOEMMANUEL SAS', N'Cl 6 No. 3-18 BOCAGRANDE, C.P 13001', N'3216665555', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900846568, N'DIMENSIONAL DISTRIBUCIONES S.A.S', N'Cr 25 No. 17-3 PORTAL CAMPESTRE GIRÓN, C.P 68001', N'3214443333', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900851824, N'UNINET COLOMBIA SAS', N' Cl 22SUR No. 31-40, C.P 11001', N'3215556666', 110911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (900939485, N'SERVICIO TECNICO FABIO PARRA SAS', N'Cr 45 No. 44-101 AP 202, Medellín', N'3216549870', 110811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901042858, N'DISTRIBUCIONES LOS TRES REYES BUENO S A S', N'Cr 23 No. 32-83, C.P 76520', N'3213332222', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901044176, N'PLASTICOS SAN MATEO COMERCIALIZADORA S A S', N'Cr 34 No. 41-27, C.P 68001', N'3215557890', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901088196, N'VIRUTEX ILKO COLOMBIA S.A.S.', N'Cl 44 No. 29-51 PARQUE DE LAS PALMAS, C.P 68001

', N'3213214321', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901124039, N'LA PERLA DE SAN VICTORINO SAS', N'Cr 5 No. 6-13 INT 3 L 26, C.P 11001', N'3215550000', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901132074, N'DISTRIBUCIONES MULTIASEO H&S SAS', N'Cl 44 No. 4N-10, C.P 76001', N'3212221111', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901134974, N'DISTRIBUIDORA LA CAMPANA EMR SAS', N'ci 3342B-41	', N'3213456789', 111311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901214231, N'COLOMBIANRUGS SAS', N'Cra. 9 No. 72-90, Valle', N'3219874567', 111411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901215882, N'TOSTACAFE SAS', N'Cra. 24 No. 45A-05', N'3214445555', 110111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901235192, N'COMERCIALIZADORA NATAN INTERNACIONAL S.A.S', N'av. 33 66 b195', N'3213214321', 111111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901246129, N'COMERCIALIZADORA CARDENAS J&A SAS', N'Cl 129F No. 103-46, C.P 11001', N'3218765432', 110911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901370862, N'MOBLIHOUSE SAS', N'Cr 34A No. 4B-36, C.P 11001', N'3215436789', 110711)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901397215, N'CLEANLAB COLOMBIA S.A.S', N'Cl 73A No. 17-23, C.P 17001', N'3213456789', 110811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901409785, N'MONTOYA MEJIA SUMINISTROS S.A.S', N'Cra.43A No.27A S-86, Of.159', N'3213574680', 112011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901436896, N'INVERSIONES DALY S.A.S', N'Cr 96G No. 23GBIS-76, C.P 11001', N'3215678901', 111411)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901471211, N'GONZALTO SAS', N'Cl 41 No. 28A-30, C.P 68001', N'3214443333', 111311)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901521231, N'HERRAMIENTAS DE LIMPIEZA MELODY COLOMBIA SAS', N'Av ELDORADO No. 68C-61 OF 232, C.P 11001', N'3213332222', 111111)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901538974, N'DISTRIBUIDORA EXCALIBUR SAS', N'Cr 51 B No. 93-137, C.P 08001', N'3219874567', 111011)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901575704, N'ORTOPEDICOS SAN JOSE SAS', N'Av 58 No. 127-42, C.P 11001', N'3210005555', 110911)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901642603, N'OFFIGRAND MAYORISTA SAS', N'Cr 5 No. 31A-43, C.P 76001', N'3217918023', 110811)
INSERT [dbo].[Proveedor] ([NIT_Proveedor], [Nombre], [Direccion], [Telefono], [Localidad]) VALUES (901648167, N'AUTOSERVICIO Y PARQUEADERO JB CENTRO SAS', N'Cl 49 No. 49-73, Medellín', N'3215554444', 110711)
GO
INSERT [dbo].[TipoContrato] ([id_Tipo], [Nombre]) VALUES (30, N'Por labor')
INSERT [dbo].[TipoContrato] ([id_Tipo], [Nombre]) VALUES (31, N'Por término fijo')
INSERT [dbo].[TipoContrato] ([id_Tipo], [Nombre]) VALUES (32, N'Por término indefinido')
INSERT [dbo].[TipoContrato] ([id_Tipo], [Nombre]) VALUES (33, N'Por aprendizaje')
GO
INSERT [dbo].[TipoPago] ([Id_Pago], [Nombre]) VALUES (1, N'Transferencias nacionales')
INSERT [dbo].[TipoPago] ([Id_Pago], [Nombre]) VALUES (2, N'Transferencias internacionales')
INSERT [dbo].[TipoPago] ([Id_Pago], [Nombre]) VALUES (3, N'Efectivo ')
GO
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (500, N' Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.', 19247148, 700, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (501, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 51609053, 701, 2, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (502, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 79313231, 702, 3, CAST(N'2023-02-26' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (503, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.', 80000691, 703, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (504, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.', 80004478, 704, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (505, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.', 80004479, 705, 3, CAST(N'2023-02-26' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (506, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 80009294, 706, 1, CAST(N'2023-02-26' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (507, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 80012598, 707, 2, CAST(N'2023-02-26' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (508, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 80013534, 708, 3, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (509, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 80015415, 709, 1, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (510, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 80015416, 710, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (511, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 80022791, 711, 3, CAST(N'2023-02-26' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (512, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 80022792, 712, 1, CAST(N'2023-09-22' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (513, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 80023054, 713, 2, CAST(N'2023-09-22' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (514, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 83002871, 714, 3, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (515, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 83002872, 715, 1, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (516, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 83002895, 716, 2, CAST(N'2023-09-22' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (517, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 83005444, 717, 3, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (518, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 83006250, 718, 1, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (519, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 83008747, 719, 2, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (520, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 83011414, 720, 3, CAST(N'2023-09-22' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (521, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 83013694, 721, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (522, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 83013826, 722, 2, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (523, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 83200318, 723, 3, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (524, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 83200467, 724, 1, CAST(N'2023-09-30' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (525, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 83200759, 725, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (526, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 86000130, 726, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (527, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 86000508, 727, 1, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (528, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 86002555, 728, 2, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (529, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 86003019, 729, 3, CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (530, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 86004389, 730, 1, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (531, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 86004811, 731, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (532, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 86007030, 732, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (533, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 86045045, 733, 1, CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (534, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 86045046, 734, 2, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (535, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 89010964, 735, 3, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (536, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 89090481, 736, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (537, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 90003654, 737, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (538, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 90005918, 738, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (539, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 90010986, 739, 1, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (540, N'
Este pedido incluye una bebida caliente preparada a la perfección, acompañada de un delicioso pastel recién horneado. Perfecto para disfrutar de una pausa relajante o una conversación amigable en un acogedor ambiente de cafetería.
', 90016441, 740, 2, CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (541, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 90019349, 741, 3, CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (542, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 90023263, 742, 1, CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (543, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 90029703, 743, 2, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (544, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 90039478, 744, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (545, N'
Este pedido consta de una variedad de suministros esenciales para mantener su lugar de trabajo organizado y eficiente. Incluye papel, bolígrafos, carpetas y otros elementos esenciales para la oficina.
', 90039479, 745, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (546, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 90049008, 746, 2, CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (547, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 90057408, 747, 3, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (548, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 90074366, 748, 1, CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Ventas] ([id_Venta], [Concepto], [Cliente], [Id_Factura], [Tipo_Pago], [Fecha]) VALUES (549, N'
Este pedido incluye una gama de productos para el cuidado personal, como champú, acondicionador, jabón y loción. Ideal para mantenerse fresco y limpio en su rutina diaria de cuidado personal.
', 90093979, 749, 2, CAST(N'2023-05-10' AS Date))
GO
ALTER TABLE [dbo].[Camiones]  WITH CHECK ADD  CONSTRAINT [FK_Camiones_Empleados] FOREIGN KEY([id_Conductor])
REFERENCES [dbo].[Empleados] ([CC_Empleado])
GO
ALTER TABLE [dbo].[Camiones] CHECK CONSTRAINT [FK_Camiones_Empleados]
GO
ALTER TABLE [dbo].[Camiones]  WITH CHECK ADD  CONSTRAINT [FK_Camiones_Marcas] FOREIGN KEY([Marca])
REFERENCES [dbo].[Marcas] ([id_Marca])
GO
ALTER TABLE [dbo].[Camiones] CHECK CONSTRAINT [FK_Camiones_Marcas]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Localidad] FOREIGN KEY([Localidad])
REFERENCES [dbo].[Localidad] ([id_Localidad])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Localidad]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Producto]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Proveedor] FOREIGN KEY([Proveedor])
REFERENCES [dbo].[Proveedor] ([NIT_Proveedor])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Proveedor]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_TipoPago] FOREIGN KEY([Tipo_Pago])
REFERENCES [dbo].[TipoPago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_TipoPago]
GO
ALTER TABLE [dbo].[Detalle_Producto_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Proveedor_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Detalle_Producto_Proveedor] CHECK CONSTRAINT [FK_Detalle_Producto_Proveedor_Producto]
GO
ALTER TABLE [dbo].[Detalle_Producto_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Proveedor_Proveedor] FOREIGN KEY([Proveedor])
REFERENCES [dbo].[Proveedor] ([NIT_Proveedor])
GO
ALTER TABLE [dbo].[Detalle_Producto_Proveedor] CHECK CONSTRAINT [FK_Detalle_Producto_Proveedor_Proveedor]
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Venta_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Detalle_Venta] CHECK CONSTRAINT [FK_Detalle_Venta_Producto]
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Venta_Ventas] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[Ventas] ([id_Venta])
GO
ALTER TABLE [dbo].[Detalle_Venta] CHECK CONSTRAINT [FK_Detalle_Venta_Ventas]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Cargo] FOREIGN KEY([Cargo])
REFERENCES [dbo].[Cargo] ([Id_Cargo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Cargo]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Localidad] FOREIGN KEY([Localidad])
REFERENCES [dbo].[Localidad] ([id_Localidad])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Localidad]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_TipoContrato] FOREIGN KEY([Tipo_Contrato])
REFERENCES [dbo].[TipoContrato] ([id_Tipo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_TipoContrato]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_Camiones] FOREIGN KEY([Placa_Camiones])
REFERENCES [dbo].[Camiones] ([Placa])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_Camiones]
GO
ALTER TABLE [dbo].[Entregas]  WITH CHECK ADD  CONSTRAINT [FK_Entregas_Ventas] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[Ventas] ([id_Venta])
GO
ALTER TABLE [dbo].[Entregas] CHECK CONSTRAINT [FK_Entregas_Ventas]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Empleados] FOREIGN KEY([id_Vendedor])
REFERENCES [dbo].[Empleados] ([CC_Empleado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Empleados]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_IVA] FOREIGN KEY([IVA])
REFERENCES [dbo].[IVA] ([id_IVA])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_IVA]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Ventas] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[Ventas] ([id_Venta])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Ventas]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categoria] ([Id_Categoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Localidad] FOREIGN KEY([Localidad])
REFERENCES [dbo].[Localidad] ([id_Localidad])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Localidad]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Cliente] FOREIGN KEY([Cliente])
REFERENCES [dbo].[Cliente] ([NIT_Cliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Cliente]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Facturas] FOREIGN KEY([Id_Factura])
REFERENCES [dbo].[Facturas] ([id_Factura])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Facturas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TipoPago] FOREIGN KEY([Tipo_Pago])
REFERENCES [dbo].[TipoPago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TipoPago]
GO
USE [master]
GO
ALTER DATABASE [Prodiaseo] SET  READ_WRITE 
GO
