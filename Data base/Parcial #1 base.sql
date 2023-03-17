create table proveedor (
  Rut_prov primary key,
  nombre_prov varchar,
  direccion_prov varchar,
  ciudad varchar,
  telefono_prov varchar,
  pagina_web varchar
);
create table cliente(
  Rut_cl primary key,
  nombre_cl varchar,
  direccion_cl varchar,
  telefono_cl varchar
);
create table producto (
  Id_pd primary key nombre_pd varchar,
  precio_pd integer,
  stock varchar,
  nombre_prov varchar
);
create table categoria (
  Id_ct primary key,
  nombre_ct varchar,
  descripcion varchar
);
create table registros (
  Id_rg primary key,
  fecha varchar,
  nombre_cl varchar,
  descuento varchar,
  monto_final INTEGER,
  precio_pd INTEGER,
  stock_sold_out varchar,
);
--------------------------------------------------------------------------------------------------
Insert
  in to proveedor (
    Rut_prov,
    nombre_prov,
    direccion_prov,
    ciudad,
    telefono_prov,
    pagina_web
  )
values
  (
    1,
    "Luis",
    "n° calle 23 comuna 6",
    "Medellin",
    "3188202762",
    "Nividia.com"
  );
Insert
  in to proveedor (
    Rut_prov,
    nombre_prov,
    direccion_prov,
    telefono_prov,
    pagina_web
  )
values
  (
    2,
    "Miguel",
    "n° calle 28 comuna 13",
    "bogota",
    "3188202762",
    "EpicGames.com"
  );
Insert
  in to proveedor (
    Rut_prov,
    nombre_prov,
    direccion_prov,
    telefono_prov,
    pagina_web
  )
values
  (
    3,
    "Camilo",
    "n° calle 32 comuna 7",
    "cali",
    "3188202762",
    "Koaj.com"
  );
Insert
  in to proveedor (
    Rut_prov,
    nombre_prov,
    direccion_prov,
    telefono_prov,
    pagina_web
  )
values
  (
    4,
    "Deivid",
    "n° calle 46 comuna 10",
    "Medellin",
    "3188202762",
    "nike.com"
  );
Insert
  in to cliente (Rut_cl, nombre_cl, direccion_cl, telefono_cl)
values(1, "Paco", "n° calle 23 comuna 6 ", "3178888146");
Insert
  in to cliente (Rut_cl, nombre_cl, direccion_cl, telefono_cl)
values(2, "Julio", "n° calle 23 comuna ", "3178888146");
Insert
  in to cliente (Rut_cl, nombre_cl, direccion_cl, telefono_cl)
values(
    3,
    "Andres",
    "n° calle 23 comuna 6 ",
    "3178888146"
  );
Insert
  in to cliente (Rut_cl, nombre_cl, direccion_cl, telefono_cl)
values(
    4,
    "Angie",
    "n° calle 23 comuna 6 ",
    "3178888146"
  );
Insert
  in to producto (Id_pd, nombre_pd, precio_pd, stock, nombre_prov)
values
  (1, "gtx 3090", 1200, "54", "Luis");
Insert
  in to producto (Id_pd, nombre_pd, precio_pd, stock, nombre_prov)
values
  2,
  "Alan wake remaster",
  300,
  "200",
  "Miguel"
);
Insert
  in to producto (Id_pd, nombre_pd, precio_pd, stock, nombre_prov)
values(3, "Chaqueta deportiva", 250, "40", "Camilo");
Insert
  in to producto (Id_pd, nombre_pd, precio_pd, stock, nombre_prov)
values
  (4, "Jordan", 1400, "30", "Deivid");
Insert
  in to categoria (Id_ct, nombre_ct, descripcion)
values(1, "componentes", "tarjeta grafica");
Insert
  in to categoria (Id_ct, nombre_ct, descripcion)
values(2, "Videojuegos", "entretenimiento");
Insert
  in to categoria (Id_ct, nombre_ct, descripcion)
values
  (3, "Vestimenta", "ropa",);
Insert
  in to categoria (Id_ct, nombre_ct, descripcion)
values(4, "Calzado", "zapato",);
INSERT INTO
  registros (
    Id_rg,
    fecha,
    nombre_cl,
    descuento,
    monto_final,
    precio_pd,
    stock_sold_out
  )
VALUES
  (1, "14-04-2021", "Paco", "15%", 6600, 1200, "50");
INSERT INTO
  registros (
    Id_rg,
    fecha,
    nombre_cl,
    descuento,
    monto_final,
    precio_pd,
    stock_sold_out
  )
VALUES
  (
    2,
    "11-07-2021",
    "Julio",
    "26%",
    5000,
    300,
    "190"
  );
INSERT INTO
  registros (
    Id_rg,
    fecha,
    nombre_cl,
    descuento,
    monto_final,
    precio_pd,
    stock_sold_out
  )
VALUES(
    3,
    "14-10-2021",
    "Andres",
    "20%",
    4300,
    250,
    "35"
  );
INSERT INTO
  registros (
    Id_rg,
    fecha,
    nombre_cl,
    descuento,
    monto_final,
    precio_pd,
    stock_sold_out
  )
VALUES(
    4,
    "14-04-2021",
    "Angie",
    "25%",
    7800,
    1400,
    "25"
  );
------------------------------------------------------------------------------------------------------
  --1--
Update
  proveedor
set
  telefono_prov = 358334929
WHERE
  nombre_prov = "Luis";
--2--
DELETE from
  cliente
WHERE
  Rut_cl = 2;
--3--
SELECT
  *
FROM
  proveedor
where
  ciudad = "bogota";
--4--
  CREATE TABLE ejemplo (ID integer PRIMARY KEY, texto varchar(40));
DROP TABLE ejemplo;
--5--
UPDATE
  producto
SET
  precio_pd = precio_pd * 1.1
WHERE
  Id_pd is NOT NULL;
--6--
UPDATE
  cliente
SET
  direccion_cl = "n ° calle 46 comuna 10"
WHERE
  Rut_cl = 4;
--7--
UPDATE
  producto
SET
  precio_pd = 250
WHERE
  precio_pd = 0;