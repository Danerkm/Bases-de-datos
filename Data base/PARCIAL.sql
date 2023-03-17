-- proveedor
--   rut,nombre,direccion,telefono,pagina_web
-- cliente 
--   rut,nombre_cliente,direccion,telefono
-- telefono
--   ID,numero
-- producto
--   ID_producto,nombre,precio_actual,stock,nombre_proveedor,categoria
-- categoria
--   ID,nombre,descripcion
-- venta
--   ID,fecha,cliente,descuento,monto_final,precio_actual,cantidad_vendida,monto_final
  -- .........................................................................................................
CREATE TABLE proveedor 
  (rut_proveedor integer PRIMARY KEY
  ,nombre_proveedor varchar(10)
  ,direccion_proveedor varchar(10)
  ,ciudad varchar(10)
  ,telefono_proveedor integer
  ,pagina_web varchar(40));

CREATE TABLE cliente 
  (rut_cliente integer PRIMARY KEY
  ,nombre_cliente varchar(10)
  ,direccion_cliente varchar(10)
  ,telefono_cliente integer);

CREATE TABLE telefono_cliente 
  (ID integer PRIMARY KEY
  ,rut_cliente integer
  ,numero_telefono integer);

CREATE TABLE producto 
  (ID_producto integer PRIMARY KEY
  ,nombre_producto varchar(10)
  ,precio_actual integer
  ,stock integer
  ,nombre_proveedor varchar(10)
  ,categoria integer);

CREATE TABLE categoria 
  (ID integer PRIMARY KEY
  ,nombre_categoria varchar(10)
  ,precio_actual integer
  ,descripcion varchar(10));

CREATE TABLE venta 
  (id integer PRIMARY KEY
  ,fecha date
  ,cliente varchar(10)
  ,descuento varchar(10)
  ,monto_final integer
  ,precio_actual integer
  ,cantidad_vendida integer);
-- .........................................................................................................
INSERT INTO proveedor (rut_proveedor,nombre_proveedor,direccion_proveedor,ciudad,telefono_proveedor,pagina_web)
  values (1, "cristian", "N°,calle 72,comuna 13","medellin",3196315495,"https://matias.ma/nsfw/");
INSERT INTO proveedor (rut_proveedor,nombre_proveedor,direccion_proveedor,telefono_proveedor,pagina_web)
  values (2, "daniel", "N°,calle 72,comuna 13","bogotá",3195313495,"https://matias.ma/nsfw/");
INSERT INTO proveedor (rut_proveedor,nombre_proveedor,direccion_proveedor,telefono_proveedor,pagina_web)
  values (3, "miguel", "N°,calle 72,comuna 13","medellin",3191315495,"https://matias.ma/nsfw/");
INSERT INTO proveedor (rut_proveedor,nombre_proveedor,direccion_proveedor,telefono_proveedor,pagina_web)
  values (4, "sebastian", "N°,calle 72,comuna 13","bogotá",3191315495,"https://matias.ma/nsfw/");


INSERT INTO cliente (rut_cliente,nombre_cliente,direccion_cliente)
  values (1,"andres", "N°,calle 74,comuna 13");
INSERT INTO cliente (rut_cliente,nombre_cliente,direccion_cliente)
  values (2,"camilo", "N°,calle 76,comuna 13");
INSERT INTO cliente (rut_cliente,nombre_cliente,direccion_cliente)
  values (3,"jairo", "N°,calle 81,comuna 13");
INSERT INTO cliente (rut_cliente,nombre_cliente,direccion_cliente)
  values (4,"ramiro", "N°,calle 81,comuna 13");

INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (1,1,3196315495);
INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (2,1,3195313495);
INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (3,2,3191315495);
INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (4,4,3196315495);
INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (5,3,3195313495);
INSERT INTO telefono_cliente (ID,rut_cliente,numero_telefono)
  values (6,4,3191315495);

INSERT INTO producto (ID_producto,nombre_producto,precio_actual,stock,nombre_proveedor,categoria)
  values (1,"laptop hp 15",1789475,1000,"hp latinoamerica",1);
INSERT INTO producto (ID_producto,nombre_producto,precio_actual,stock,nombre_proveedor,categoria)
  values (2,"laptop hp 15",1789475,5000,"hp latinoamerica",3);
INSERT INTO producto (ID_producto,nombre_producto,precio_actual,stock,nombre_proveedor,categoria)
  values (3,"laptop hp 15",1789475,0,"hp latinoamerica",2);
INSERT INTO producto (ID_producto,nombre_producto,precio_actual,stock,nombre_proveedor,categoria)
  values (4,"laptop hp 15",1789475,1200,"hp latinoamerica",4);

INSERT INTO categoria (ID,nombre_categoria,precio_actual,descripcion)
  values (1,"netbook",1789475,"computadora personal portatil pequeño");
INSERT INTO categoria (ID,nombre_categoriaprecio_actual,descripcion)
  values (2,"gamer",1789475,"computadora personal portatil potente");
INSERT INTO categoria (ID,nombre_categoriaprecio_actual,descripcion)
  values (3,"empresarial",1789475,"computadora personal portatil confidencial");
INSERT INTO categoria (ID,nombre_categoriaprecio_actual,descripcion)
  values (4,"elitebook",1789475,"computadora personal portatil limitada");

INSERT INTO venta (id,fecha,cliente,descuento,monto_final,precio_actual,cantidad_vendida)
  values (1,'16/08/2020 15:30:20',"andres","50 %",/*monto final*/,1789475,1000);
INSERT INTO venta (id,fecha,cliente,descuento,monto_final,precio_actual,cantidad_vendida)
  values (2,'16/08/2020 15:30:20',"camilo","50 %",/*monto final*/,1789475,1000);
INSERT INTO venta (id,fecha,cliente,descuento,monto_final,precio_actual,cantidad_vendida)
  values (3,'16/08/2020 15:30:20',"jairo","50%",/*monto final*/,1789475,1000);
INSERT INTO venta (id,fecha,cliente,descuento,monto_final,precio_actual,cantidad_vendida)
  values (4,'16/08/2020 15:30:20',"ramiro","50 %",/*monto final*/,1789475,1000);

-- .........................................................................................................
-- 1
UPDATE proveedor
SET telefono_proveedor=3114267948
WHERE nombre_proveedor="daniel";

-- 2
DELETE FROM cliente  WHERE rut_cliente =3 ;

-- 3
SELECT * FROM proveedor WHERE ciudad="bogotá";

-- 4
CREATE TABLE ejemplo 
(ID integer PRIMARY KEY ,texto varchar(40));
DROP TABLE ejemplo;

-- 5
UPDATE producto SET precio_actual = precio_actual*1.1 WHERE id_producto IS NOT NULL;


-- 6
UPDATE cliente
SET direccion_cliente="N°,calle 57,comuna 09"
WHERE rut_cliente=1;

-- 7
UPDATE producto
SET precio_actual=100
WHERE precio_actual=0;
