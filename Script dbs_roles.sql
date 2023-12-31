USE [master]
GO
/****** Object:  Database [dbs_roles]    Script Date: 5/10/2023 7:50:35 p. m. ******/
CREATE DATABASE [dbs_roles]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbs_roles', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbs_roles.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbs_roles_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbs_roles_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbs_roles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbs_roles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbs_roles] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbs_roles] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbs_roles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbs_roles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbs_roles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbs_roles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbs_roles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbs_roles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbs_roles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbs_roles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbs_roles] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbs_roles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbs_roles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbs_roles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbs_roles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbs_roles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbs_roles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbs_roles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbs_roles] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbs_roles] SET  MULTI_USER 
GO
ALTER DATABASE [dbs_roles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbs_roles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbs_roles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbs_roles] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbs_roles] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbs_roles] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbs_roles] SET QUERY_STORE = ON
GO
ALTER DATABASE [dbs_roles] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [dbs_roles]
GO
/****** Object:  Table [dbo].[tbl_detalle_usuarios_roles]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_detalle_usuarios_roles](
	[PKItem] [bigint] IDENTITY(1,1) NOT NULL,
	[FKUsuario_tbl_usuarios] [varchar](200) NOT NULL,
	[FKCodigo_tbl_roles] [int] NOT NULL,
	[FKCodigo_tbl_estado] [char](1) NOT NULL,
	[Fecha_aprobacion] [date] NULL,
	[Fecha_caduca] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PKItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_estado]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_estado](
	[PKCodigo] [char](1) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Nomenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_personas]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_personas](
	[PKId] [varchar](10) NOT NULL,
	[P_nombre] [varchar](50) NOT NULL,
	[S_nombre] [varchar](50) NULL,
	[P_apellido] [varchar](50) NOT NULL,
	[S_apellido] [varchar](50) NULL,
	[Contacto] [varchar](10) NOT NULL,
	[Correo] [varchar](90) NOT NULL,
	[FKCodigo_tbl_sexo] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PKId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_roles]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_roles](
	[PKCodigo] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Nomenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sexo]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sexo](
	[PKCodigo] [char](1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Nomenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_usuarios]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_usuarios](
	[PKUsuario] [varchar](200) NOT NULL,
	[Contraseña] [varchar](10) NOT NULL,
	[FKId_tbl_personas] [varchar](10) NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PKUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_estado] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'1', N'ACTIVO', N'A')
INSERT [dbo].[tbl_estado] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'2', N'INACTIVO', N'I')
INSERT [dbo].[tbl_estado] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'3', N'CANCELADO', N'C')
GO
INSERT [dbo].[tbl_personas] ([PKId], [P_nombre], [S_nombre], [P_apellido], [S_apellido], [Contacto], [Correo], [FKCodigo_tbl_sexo]) VALUES (N'1007843869', N'Juan', N'Esteban', N'Correa', N'Esteban', N'3104291494', N'Juan.correanc@amigo.edu.co', N'1')
GO
INSERT [dbo].[tbl_roles] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (1, N'DOCENTE', N'D')
INSERT [dbo].[tbl_roles] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (2, N'ESTUDIANTE', N'E')
INSERT [dbo].[tbl_roles] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (3, N'SECRETARIA', N'S')
INSERT [dbo].[tbl_roles] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (4, N'COORDINADOR ACADEMICO', N'CA')
INSERT [dbo].[tbl_roles] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (5, N'ORIENTADOR', N'O')
GO
INSERT [dbo].[tbl_sexo] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'1', N'Masculino', N'M')
INSERT [dbo].[tbl_sexo] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'2', N'Femenino', N'F')
INSERT [dbo].[tbl_sexo] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'3', N'Prefiero no decirlo', N'PD')
GO
INSERT [dbo].[tbl_usuarios] ([PKUsuario], [Contraseña], [FKId_tbl_personas], [Fecha]) VALUES (N'Juan.1007843869', N'1007843869', N'1007843869', CAST(N'2023-10-05' AS Date))
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_estado] FOREIGN KEY([FKCodigo_tbl_estado])
REFERENCES [dbo].[tbl_estado] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_estado]
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_roles] FOREIGN KEY([FKCodigo_tbl_roles])
REFERENCES [dbo].[tbl_roles] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_roles]
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_usuarios] FOREIGN KEY([FKUsuario_tbl_usuarios])
REFERENCES [dbo].[tbl_usuarios] ([PKUsuario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_detalle_usuarios_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuarios_roles_tbl_usuarios]
GO
ALTER TABLE [dbo].[tbl_personas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_personas_tbl_sexo] FOREIGN KEY([FKCodigo_tbl_sexo])
REFERENCES [dbo].[tbl_sexo] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_personas] CHECK CONSTRAINT [FK_tbl_personas_tbl_sexo]
GO
ALTER TABLE [dbo].[tbl_usuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbl_usuarios_tbl_personas] FOREIGN KEY([FKId_tbl_personas])
REFERENCES [dbo].[tbl_personas] ([PKId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_usuarios] CHECK CONSTRAINT [FK_tbl_usuarios_tbl_personas]
GO
/****** Object:  StoredProcedure [dbo].[SP_AsignarRol]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Correa>
-- Create date: <Create Date,,05/10/2023>
-- Description:	<Description,,Asignar Rol>
-- =============================================
CREATE PROCEDURE [dbo].[SP_AsignarRol]
	
	@usuario varchar(200), @rol int,@fecha_caduca date
AS
BEGIN
		declare @buscar int
	select @buscar=(select COUNT(*) from tbl_usuarios where PKUsuario=@usuario)
	if @buscar=0
		begin
			insert into tbl_detalle_usuarios_roles(FKUsuario_tbl_usuarios,FKCodigo_tbl_roles,FKCodigo_tbl_estado,Fecha_aprobacion,Fecha_caduca)
			values(@usuario,@rol,2,GETDATE(),@fecha_caduca)
			print 'Rol asginado con éxito'
		end
	if @buscar=0
		begin
			print 'Usuario no registrado'
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_registrarPers]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Correa>
-- Create date: <Create Date,,03/10/2023>
-- Description:	<Description,,Registrar personas>
-- =============================================
CREATE PROCEDURE [dbo].[SP_registrarPers]
@id varchar(10),@p_nombre varchar(50),@s_nombre varchar(50),@p_apellido varchar(50),@s_apellido varchar(50),@contacto varchar(10), @correo varchar(90),@fkSexo char
AS
BEGIN
	declare @encuenta int
	select @encuenta=(select COUNT(*) from tbl_personas where PKId=@id)
	if @encuenta=0
		begin
			insert into tbl_personas(PkId,P_nombre,S_nombre,P_apellido,S_apellido,Contacto,Correo,FKCodigo_tbl_sexo)
			values(@id,@p_nombre,@s_nombre,@p_apellido,@s_nombre,@contacto,@correo,@fkSexo)
			print 'Persona registrada con éxito'
		end
	if @encuenta=1
		begin
			print 'Esta persona ya se encuentra registrada'
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SPRetirarRol]    Script Date: 5/10/2023 7:50:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Correa>
-- Create date: <Create Date,,05/10/2023>
-- Description:	<Description,,Retirar rol>
-- =============================================
CREATE PROCEDURE [dbo].[SPRetirarRol]
	@usuario varchar(200), @rol int
AS
BEGIN
	delete from tbl_detalle_usuarios_roles where tbl_detalle_usuarios_roles.FKUsuario_tbl_usuarios=@usuario and tbl_detalle_usuarios_roles.FKCodigo_tbl_roles=@rol
	print 'Rol retirado con éxito'
END
GO
USE [master]
GO
ALTER DATABASE [dbs_roles] SET  READ_WRITE 
GO
