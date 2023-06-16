--CREACION DE PROCEDURE INSERTAR PRODUCTOS--
ALTER PROCEDURE [dbo].[INSER_PRODUCT](
           @id int,
           @id_categoria int,
           @codigo varchar(50),
           @descripcion varchar(50),
           @imagen varchar(50),
           @stock int,
           @precio_compra float,
           @precio_venta float,
           @ventas int,
           @fecha datetime
)
AS
BEGIN
INSERT INTO [dbo].[productos]([id],[id_categoria],[codigo],[descripcion],[imagen],[stock],[precio_compra],[precio_venta],[ventas],[fecha])
VALUES                        (@id,@id_categoria,@codigo,@descripcion,@imagen,@stock,@precio_compra,@precio_venta,@ventas,@fecha);
END

--EJECUTAR PROCESO--
exec INSER_PRODUCT 55,2,'656','CUBILETE','JO.JPG',10,25,45,10,'2023-06-10 06:31:54.000';

--CREACION DE PROCEDURE INSERTAR USUARIOS--
CREATE PROCEDURE [dbo].[INSER_USUA](
@ESTADO INT,
@FECHA DATE,
@FOTO VARCHAR (100),
@ID INT,
@NOMBRE VARCHAR (100),
@PASSWORD VARCHAR (25),
@PERFIL VARCHAR (250),
@ULTIMO_LOGIN DATETIME,
@USUARIO VARCHAR (100)
)
AS
BEGIN
INSERT INTO USUARIOS (estado,fecha,foto,id,nombre,pasword,perfil,ultimo_login,usuario)
VALUES (@ESTADO,@FECHA,@FOTO,@ID,@NOMBRE,@PASSWORD,@PERFIL,@FECHA,@USUARIO)
END

EXEC INSER_USUA 1,'2017-12-21 21:56:28.000','JFD',245,'HENRY','54F54FD','LOCO','2017-12-21 21:56:28.000','ADDD';



--CREACION DE PROCEDURE INSERTAR CLIENTES--
create PROCEDURE INSER_CLIENTE(
@id int,
@nombre varchar(50),
@documento int,
@email varchar(50),
@telefono varchar(50),
@direccion varchar(50),
@fecha_nacimiento varchar(50),
@compras int,
@ultima_compra datetime,
@fecha datetime
)
AS

BEGIN
INSERT INTO [dbo].[clientes]([id],[nombre],[documento],[email],[telefono],[direccion],[fecha_nacimiento],[compras],[ultima_compra],[fecha])
     VALUES(@id,@nombre,@documento,@email,@telefono,@direccion,@fecha_nacimiento,@compras,@ultima_compra,@fecha);
END

--ejecucion--
EXEC INSER_CLIENTE 32,'JOSE',454,'@HHFDGHR','6545454','SANARATE','2017- mayo',5,'2017-12-21 21:56:28.000','2017-12-21 21:56:28.000';






--CREACION DE PROCEDURE INSERTAR VENTAS--
alter PROCEDURE INSER_VENT(
@CODIGO INT,
@FECHA DATETIME,
@ID INT,
@ID_CLIENTE INT,
@ID_VENDEDOR INT,
@IMPUESTO FLOAT,
@METODO_PAGO VARCHAR (100),
@NETO FLOAT,
@PRODUCTOS VARCHAR (300),
@TOTAL FLOAT
)
AS
BEGIN
INSERT INTO VENTAS (codigo,fecha,id,id_cliente,id_vendedor,impuesto,metodo_pago,neto,productos,total)
VALUES (@CODIGO,@FECHA,@ID,@ID_CLIENTE,@ID_VENDEDOR,@IMPUESTO,@METODO_PAGO,@NETO,@PRODUCTOS,@TOTAL)
END

--PRUEBA  PROCESO
exec INSER_VENT 2,'2017-12-21 21:56:28.000',144,200,205,50,'efe',50,3,200;




--CREACION DE PROCEDURE INSERTAR CATEGORIAS--
ALTER PROCEDURE INSER_CATEGO(
@ID INT,
@CATEGORIA VARCHAR(50),
@FECHA DATETIME


)
AS
BEGIN
INSERT INTO categorias (id,categoria,fecha)
VALUES (@ID,@CATEGORIA,@FECHA)
END

--PRUEBA PROCESO--

EXEC inser_catego 15,'masomenos','2017-12-21 21:56:28.000';



--CREACION DE PROCEDURE INSERTAR DETALLE_COMPRA--
CREATE PROCEDURE INSER_DETALLE_COMPRA(
@ID INT,
@producto INT,
@cantidad int,
@precio decimal(10,2)

)
AS
BEGIN
INSERT INTO [dbo].[detalle_compra] ([id],[producto_id],[cantidad],[precio])
     VALUES
           (@id,@producto,@cantidad,@precio)
END

--prueba de proceso--
exec INSER_DETALLE_COMPRA 25,2,3,10;

select * from productos

--CREACION DE PROCEDURE INSERTAR DETALLE_VENTA--

CREATE PROCEDURE INSER_DETALLE_VENTA(
@ID INT,
@venta INT,
@producto_id int,
@cantidad int,
@precio decimal(10,2)

)
AS
BEGIN
INSERT INTO [dbo].[detalle_venta]
           ([id]
           ,[venta_id]
           ,[producto_id]
           ,[cantidad]
           ,[precio])
     VALUES (@id,@venta,@producto_id,@cantidad,@precio)
END

--prueba de proceso

exec INSER_DETALLE_VENTA 15,17,2,2,10


select * from ventas