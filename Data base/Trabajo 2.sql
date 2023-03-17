create table proveedor (
RUT PRIMARY KEY
nombre_prove VARCHAR 
direccion VARCHAR 
telefono VARCHAR (20)
pagina_web VARCHAR 
)
create table Cliente (
RUT PRIMARY KEY
nombre_cl VARCHAR
direccion VARCHAR
telefono VARCHAR 
)
create table Producto (
id PRIMARY KEY
nombre_prod VARCHAR
precio INTEGER
stock INTEGER
nombre_prov VARCHAR
descripcion VARCHAR
)
create table categoria (
id PRIMARY KEY
nombre_cat VARCHAR
descripcion VARCHAR
)
create table registros (
id PRIMARY KEY
fecha DATE
RUT_client VARCHAR
descuento VARCHAR
)
create table ejemplo(
id_example
)
--Proveedor----
Insert into proveedor (RUT,nombre_prove,direccion,telefono,pagina_web)
 values (1,"Francisco","n° calle 23 comuna 6 Medellin 3158742939","Adidas.com");
Insert into proveedor (RUT,nombre_prove,direccion,telefono,pagina_web) 
values (2,"Fernando","n° calle 32 comuna 9 Medellin 3158742939","Nike.com");
Insert into proveedor (RUT,nombre_prove,direccion,telefono,pagina_web)
 values (3,"Andres","n° calle 66 comuna 10 Medellin 3158742939","sofonic.com");
--Cliente---
Insert into Cliente (RUT,nombre_cl,direccion,telefono) 
values (1,"Jorge","n° calle 13 comuna 10 Medellin","3142970794");
Insert into Cliente (RUT,nombre_cl,direccion,telefono) 
values (2,"Felipe","n° calle 54 comuna 6 Medellin","3142970794");
Insert into Cliente (RUT,nombre_cl,direccion,telefono) 
values (3,"Miguel","n° calle 3 comuna 3Medellin","3142970794");
--producto---
Insert into Producto (id,nombre_prod,precio,stock,nombre_prov,descripcion) 
values (1,"pantalon",120000,30,"francisco","Es rojo y tiene cremalleras");
Insert into Producto (id,nombre_prod,precio,stock,nombre_prov,descripcion) 
values (2,"Jordan",120000,40,"Fernando","Deportivas y resistentes");
Insert into Producto (id,nombre_prod,precio,stock,nombre_prov,descripcion) 
values (3,"Guitar hero",120000,20,"Andres","Juego de ritmo de rock");
--Categoria----
Insert into categoria (id,nombre_cat,descripcion) 
values (1,"ropa","calidad y comodidad");
Insert into categoria (id,nombre_cat,descripcion) 
values (2,"zapatos","calidad y comodidad + estilo");
Insert into categoria (id,nombre_cat,descripcion) 
values (3,"Videojuegos","Entretenimiento");
--Registros---
Insert into registros (id,fecha,RUT_client,descuento) 
values (1,'13-01-2021',1,"30%");
Insert into registros (id,fecha,RUT_client,descuento) 
values (2,'14-06-2021',2,"50%");
Insert into registros (id,fecha,RUT_client,descuento) 
values (3,'19-09-2021',3,"30%");
----------------------------------------------------------------------------------------------------
--Update--
Update producto
set descripcion = "Es rojo y tiene cremalleras", descripcion = "Es azul y tiene cremalleras"
where "Es rojo y tiene cremalleras";
--where--
Select descuento 
from registros
where descuento = 30%;
--drop--
drop table ejemplo;
--condicionales---
select nombre_prod,precio
from producto
where id = 2 or stock = 40 or categoria = 2;
--delete--
delete from proveedor where nombre_prove ="Francisco";