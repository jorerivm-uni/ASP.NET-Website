
---crear base de datos
CREATE DATABASE DBvarelaGym

--usar bd
use DBvarelaGym

----creacion de tablas
------------------------------------------------
---USUARIOS
------------------------------------------------
CREATE TABLE Usuarios(
	IdUsuario int IDENTITY(1,1) NOT NULL,
	Usuario varchar(50) NOT NULL,
	Contrasenia varbinary(500) NOT NULL
)
------------------------------------------------
---Categoria
------------------------------------------------
CREATE TABLE Categoria(
	IdCategoria [int] IDENTITY(1,1) NOT NULL,
	Descripcion varchar(150) NOT NULL,
	constraint PKIdcategoria primary key(IdCategoria)
	)
------------------------------------------------
---Productos
------------------------------------------------
CREATE TABLE Producto(
	IdProducto int IDENTITY(1,1) NOT NULL,
	Marca varchar(100)NOT NULL,
	Descripcion varchar(200)NOT NULL,
	IdCategoria int NOT NULL,
	Stock int NOT NULL,
	Precio decimal(10, 2)NOT NULL,	
	FechaRegistro datetime NOT NULL,
	--restricciones
CONSTRAINT CK_Stock CHECK (Stock >= 0 ),
CONSTRAINT CK_Precio CHECK (Precio > 0 ),
constraint PKIdproducto primary key(IdProducto),
constraint FKIdcategoria foreign key(IdCategoria) references Categoria (IdCategoria)
	)
------------------------------------------------
---Proveedor
------------------------------------------------
CREATE TABLE Proveedor(
Idproveedor Int identity(1,1) NOT NULL,
NombreProv Varchar(100) NOT NULL,
Direccion Varchar(190) NOT NULL,
Telefono int NOT NULL,
--restricciones
constraint PKIdproveedor primary key(Idproveedor)
)
------------------------------------------------
---OrdenCompra
------------------------------------------------
CREATE TABLE OrdenCompra(
	IdOrdenCompra int IDENTITY(1,1) NOT NULL,
	Idproveedor Int NOT NULL,
	FechaRegistro datetime NOT NULL,
	SubTotal decimal(10, 2) NOT NULL,
	ImpuestoTotal decimal(10, 2)NOT NULL,
	Total decimal(10, 2)NOT NULL,
	--restricciones
CONSTRAINT CK_SubTotaloc CHECK (SubTotal > 0 ),
CONSTRAINT CK_ImpuestoTotaloc CHECK (ImpuestoTotal > 0 ),
CONSTRAINT CK_Totaloc CHECK (Total > 0 ),
constraint PKIdOrdenCompra primary key(IdOrdenCompra),
constraint FKIdproveedor foreign key(IdProveedor) references Proveedor (IdProveedor)
	)
------------------------------------------------
---DetalleOrdenCompra
------------------------------------------------
CREATE TABLE DetalleOrdenCompra(
	IdDetalleOrdenCompra int IDENTITY(1,1) NOT NULL,
	IdOrdenCompra int NOT NULL,
	IdProducto int NOT NULL,
	Cantidad int NOT NULL,
	Precio decimal(10, 2)NOT NULL,
	Total decimal(10, 2)NOT NULL,
	--restricciones
CONSTRAINT CK_Cantidaddoc CHECK (Cantidad > 0 ),
CONSTRAINT CK_Preciodoc CHECK (Precio > 0 ),
CONSTRAINT CK_Totaldoc CHECK (Total > 0 ),
constraint PKIddetalleOrdenCompra primary key(IdDetalleOrdenCompra),
constraint FKIdOrdenCompra foreign key(IdOrdenCompra) references OrdenCompra (IdOrdenCompra),
constraint FKIdproductodto foreign key(IdProducto) references Producto (IdProducto)
	)
------------------------------------------------
---Venta
------------------------------------------------
CREATE TABLE Venta(
	IdVenta int IDENTITY(1,1) NOT NULL,
	FechaRegistro datetime NOT NULL,
	SubTotal decimal(10, 2) NOT NULL,
	ImpuestoTotal decimal(10, 2)NOT NULL,
	Total decimal(10, 2)NOT NULL,
	--restricciones
CONSTRAINT CK_SubTotal CHECK (SubTotal > 0 ),
CONSTRAINT CK_ImpuestoTotal CHECK (ImpuestoTotal > 0 ),
CONSTRAINT CK_Total CHECK (Total > 0 ),
constraint PKIdventa primary key(IdVenta)
	)
------------------------------------------------
---DetalleVenta
------------------------------------------------
CREATE TABLE DetalleVenta(
	IdDetalleVenta int IDENTITY(1,1) NOT NULL,
	IdVenta int NOT NULL,
	IdProducto int NOT NULL,
	Cantidad int NOT NULL,
	Precio decimal(10, 2)NOT NULL,
	Total decimal(10, 2)NOT NULL,
	--restricciones
CONSTRAINT CK_Cantidad CHECK (Cantidad > 0 ),
CONSTRAINT CK_Preciodt CHECK (Precio > 0 ),
CONSTRAINT CK_Totaldt CHECK (Total > 0 ),
constraint PKIddetalleventa primary key(IdDetalleVenta),
constraint FKIdventa foreign key(IdVenta) references Venta (IdVenta),
constraint FKIdproducto foreign key(IdProducto) references Producto (IdProducto)
	)












































