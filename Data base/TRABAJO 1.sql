-- clientes
--    id,direccion envio,saldolimite credito no mayor 3m,descuento
-- articulos
--    id ,nuero articulo,fabrica,stock,descripcion
-- pedidos
--    cabecera 
--      id cliente,direccion envio,fecha de pedidos
--    cuerpo
--      id articulo,stock 
-- fabrica
--    id,telefonos,sock
-- .........................................................................................................
CREATE TABLE cliente VALUE
  (ID PRIMARY KEY
  ,direccion_envio varchar(10)
  ,saldo integer
  ,limite_credito integer);

CREATE TABLE articulos VALUE
  (ID PRIMARY KEY
  ,numero_articulo integer
  ,fabrica varchar(10)
  ,stock integer
  ,descripcion varchar(10));

-- CREATE TABLE pedidos VALUE
--   (ID PRIMARY KEY
--   ,id_cliente integer
--   ,direccion_envio varchar(10)
--   ,fecha_pedido varchar(10));

CREATE TABLE pedidos VALUE
(ID PRIMARY KEY
,cabecera
,cuerpo);

CREATE TABLE fabrica VALUE
  (ID PRIMARY KEY
  ,telefonos integer
  ,stock integer);

CREATE TABLE cabecera VALUE
  (ID PRIMARY KEY
  ,id_cliente integer
  ,direccion_envio varchar(10)
  ,fecha_pedido integer);

CREATE TABLE cuerpo VALUE
  (ID PRIMARY KEY
  ,id_articulo integer
  ,stock integer);
-- .........................................................................................................

INSERT INTO clientes (ID,direccion_envio,saldo,limite_credito)
  VALUE (1, "N°,calle 72,comuna 13,medellin",329879, 3000000000);
INSERT INTO clientes (ID,direccion_envio,saldo,limite_credito)
  VALUE (2, "N°,calle 72,comuna 13,medellin",329879, 3000000000);
INSERT INTO clientes (ID,direccion_envio,saldo,limite_credito)
  VALUE (3, "N°,calle 72,comuna 13,medellin",329879, 3000000000);

INSERT INTO articulos (ID,numero_articulo,fabrica,stock,descripcion);
  VALUE (1, 20,"adidas",1000,camiseta);
INSERT INTO articulos (ID,numero_articulo,fabrica,stock,descripcion);
  VALUE (2, 30,"adidas",1000,camiseta);
INSERT INTO articulos (ID,numero_articulo,fabrica,stock,descripcion);
  VALUE (3, 40,"adidas",1000,camiseta);

-- INSERT INTO pedidos (ID,id_cliente,direccion_envio,fecha_pedido );
--   VALUE (1, 1,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");
-- INSERT INTO pedidos (ID,id_cliente,direccion_envio,fecha_pedido );
--   VALUE (2, 2,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");
-- INSERT INTO pedidos (ID,id_cliente,direccion_envio,fecha_pedido );
--   VALUE (3, 3,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");

INSERT INTO fabrica (ID,telefonos,stock);
  VALUE (1, 3195315495,1000);
INSERT INTO fabrica (ID,telefonos,stock);
  VALUE (2, 3195315495,1000);
INSERT INTO fabrica (ID,telefonos,stock);
  VALUE (3, 3195315495,1000);

INSERT INTO cabecera (ID,id_cliente,direccion_envio,fecha_pedido);
  VALUE (1, 1,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");
INSERT INTO cabecera (ID,id_cliente,direccion_envio,fecha_pedido);
  VALUE (2, 2,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");
INSERT INTO cabecera (ID,id_cliente,direccion_envio,fecha_pedido);
  VALUE (3, 3,"N°,calle 72,comuna 13,medellin","16/8/2020 15:30:20");

INSERT INTO cuerpo (ID,id_articulo,stock);
  VALUE (1, 1,1000);
INSERT INTO cuerpo (ID,id_articulo,stock);
  VALUE (2, 1,1000);
INSERT INTO cuerpo (ID,id_articulo,stock);
  VALUE (3, 1,1000);