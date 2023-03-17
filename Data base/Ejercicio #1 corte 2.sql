CREATE TABLE Departamentos (
  DPTO_PK INTEGER PRIMARY KEY,
  DEPT_NO integer,
  DNOMBRE VARCHAR (15),
  LOC VARCHAR (15)
);

CREATE TABLE Empleado (
  EMPLEADO_PK INTEGER PRIMARY KEY,
  EMP_NO integer,
  APELLIDO VARCHAR (15),
  OFICIO VARCHAR (15),
  DIR integer,
  FECHA_ALTA date,
  SALARIO integer,
  COMISION integer,
  DEPT_NO integer
);

-- .........................................................................................................
INSERT INTO
  Departamentos (DPTO_PK, DEPT_NO, DNOMBRE, LOC)
VALUES
  (
    1,
    1,
    "contabilidad",
    "bogotá"
  );

INSERT INTO
  Departamentos (DPTO_PK, DEPT_NO, DNOMBRE, LOC)
VALUES
  (
    2,
    2,
    "finanzas",
    "bogotá"
  );

INSERT INTO
  Departamentos (DPTO_PK, DEPT_NO, DNOMBRE, LOC)
VALUES
  (
    3,
    3,
    "ingenieria",
    "bogotá"
  );

INSERT INTO
  Departamentos (DPTO_PK, DEPT_NO, DNOMBRE, LOC)
VALUES
  (
    4,
    4,
    "salubridad",
    "bogotá"
  );

-- ..........
INSERT INTO
  Empleado (
    EMPLEADO_PK,
    EMP_NO,
    APLLIDO,
    OFICIO,
    DIR,
    FECHA_ALTA,
    SALARIO,
    COMISION,
    DEPT_NO
  )
VALUES
  (
    1,
    1,
    "toro",
    "ingeniero",
    "N°,calle 74,comuna 13,medellin",
    '24-03-2022',
    1000000,
    3000000,
    1
  );

INSERT INTO
  Empleado (
    EMPLEADO_PK,
    EMP_NO,
    APLLIDO,
    OFICIO,
    DIR,
    FECHA_ALTA,
    SALARIO,
    COMISION,
    DEPT_NO
  )
VALUES
  (
    2,
    2,
    "gomez",
    "ingeniero",
    "N°,calle 76,comuna 13,medellin",
    '24-03-2022',
    1000000,
    3000000,
    2
  );

INSERT INTO
  Empleado (
    EMPLEADO_PK,
    EMP_NO,
    APLLIDO,
    OFICIO,
    DIR,
    FECHA_ALTA,
    SALARIO,
    COMISION,
    DEPT_NO
  )
VALUES
  (
    3,
    3,
    "torres",
    "ingeniero",
    "N°,calle 81,comuna 13,medellin",
    '24-03-2022',
    1000000,
    3000000,
    3
  );

INSERT INTO
  Empleado (
    EMPLEADO_PK,
    EMP_NO,
    APLLIDO,
    OFICIO,
    DIR,
    FECHA_ALTA,
    SALARIO,
    COMISION,
    DEPT_NO
  )
VALUES
  (
    4,
    4,
    "parada",
    "ingeniero",
    "N°,calle 74,comuna 13,medellin",
    '24-03-2022',
    1000000,
    3000000,
    4
  );

-- .........................................................................................................
-- 1 Se quiere un listado con el siguiente formato: El departamento de CONTABILIDAD está en CARACAS.
SELECT
  'departamento de ' + DNOMBRE + 'esta en' + LOC +
FROM
  Departamentos,
  -- 2 - Para cada empleado cuyo apellido contenga una "N",se quiere el oficio y apellido.La salida debe estar ordenada por apellido ascendentemente.
SELECT
  OFICIO,
  APELLIDO
FROM
  empleados
WHERE
  APELLIDO LIKE '%N%'
ORDER BY
  APELLIDO;

-- 3 - Listado de empleados con su salario total (salario más comisión).La salida debe estar ordenada por el salario y el apellido descendentemente.
SELECT
  APELLIDO,
  (COMISION + SALARIO) AS SALARIO_TOTAL
FROM
  Empleado
ORDER BY
  2 DESC,
  1;

-- 4 - Para cada empleado que no tenga comisión o cuya comisión sea mayor que el 15 % de su salario,se pide el salario total que tiene. Este será: salario más su comisión más el 15 % del salario.La salida deberá estar ordenada por el oficio y por el salario que le queda descendentemente.
SELECT
  APELLIDO,
  OFICIO,
  COMISION + SALARIO + (SALARIO * 0.15) AS SALARIO_TOTAL
FROM
  Empleado
WHERE
  COMISION IS NULL
  OR COMISION > SALARIO * 0.15
ORDER BY
  OFICIO,
  DESC;

-- 5 -Listado con el personal de alta,que indique el apellido,oficio y fecha de alta del personal del departamento número 20 que ganan más de 150.000 Bs Mensuales.
SELECT
  APELLIDO,
  OFICIO,
  FECHA_ALTA
FROM
  Empleado
WHERE
  DEPT_NO = 20
  AND SALARIO > 150000;

-- 6 - Se pide el apellido,oficio y la fecha en que han sido dados de alta los empleados de la empresa,pero solo de aquellos cuyo fecha de alta sea posterior al año 2018.Ordenado por oficio.
SELECT
  APELLIDO,
  OFICIO,
  FECHA_ALTA AS F_ALTA
FROM
  Empleado
WHERE
  FECHA_ALTA > '31-01-2018'
ORDER BY
  OFICIO;

-- 7 - Encontrar el salario medio de los empleados que son Analistas.
SELECT
  avg (SALARIO) AS SALARIO_MEDIO
FROM
  Empleado
WHERE
  OFICIO = "analista";

-- 8 - Encontrar el salario más alto y el salario más bajo de la tabla de empleados,así como la diferencia entre ambos.
SELECT
  max (SALARIO) alto,
  min(SALARIO) bajo,
  max (SALARIO) - min(SALARIO) diferencia
FROM
  Empleado;

-- 9 - Calcular el número de oficios diferentes que hay en total,en los departamentos 10 y 20 de la empresa. 
SELECT
  count (DISTINCT OFICIO) OFI
FROM
  Empleado
WHERE
  DEPT_NO IN (10, 20);

-- 10- Calcular el número de personas que realizan cada oficio en cada departamento.
SELECT
  DEPT_NO,
  OFICIO,
  count (*)
FROM
  Empleado
GROUP BY
  DEPT_NO,
  OFICIO;

-- 11- Se desea saber el salario medio total (salario más comisión) anual,tanto de los empleados como de los vendedores de nuestra empresa.
-- 12-
SELECT
  OFICIO,
  avg (SALARIO + COMISION) SALARIO_ANUAL
FROM
  Empleado
WHERE
  OFICIO = "vendedor"
GROUP BY
  oficio;

-- 13- Se desea saber para cada departamento y en cada oficio,el máximo salario y la suma total de salarios,pero solo de aquellos departamentos y oficios cuya suma salarial supere o sea igual que el 50 % de su máximo salario.En el muestreo,solo se debe estudiar a aquellos empleados que no tienen comisión o la tengan menor que el 25 % de su salario.
SELECT
  DEPT_NO,
  OFICIO,
  sum (SALARIO) suma,
  max(SALARIO) maximo
FROM
  Empleado
WHERE
  COMISION IS NULL
  OR COMISION = 0
  OR COMISION <(0.25 * SALARIO)
GROUP BY
  DEPT_NO,
  OFICIO
HAVING
  sum(SALARIO) >= 0.5 * max(SALARIO);

-- 14- Listar el apellido de cada empleado su oficio su número de departamento y el nombre de departamentos donde trabajan.
SELECT
  e.APELLIDO,
  e.OFICIO,
  e.DEPT_NO,
  d.DNOMBRE
FROM
  Empleado e,
  Departamentos d
WHERE
  e.DEPT_NO = d.DEPT_NO;

-- 15- Seleccionar los nombres, profesiones y los Analistas. calidades de los departamentos donde trabajan los analistas.
SELECT
  e.APELLIDO,
  e.OFICIO,
  d.LOC
FROM
  Empleado AS e,
  Departamentos d
WHERE
  e.DEPT_NO = d.DEPT_NO
  AND OFICIO = "analista";

-- 16- Se desea conocer el nombre y oficio de todos aquellos empleados que trabajan en Madrid. La salida deberá estar ordenada por el oficio.
SELECT
  e.APELLIDO,
  e.OFICIO,
FROM
  Empleado e,
  Departamentos d
WHERE
  e.DEPT_NO = d.DEPT_NO
ORDER BY
  e.OFICIO;

-- 17 -Se desea conocer cuántos empleados existen en cada departamento. Devolviendo una salida ordenada por el número de empleados descendentemente.
SELECT
  e,
  DEPT_NO num_dep,
  d.DNOMBRE Departamentos,
  count *() num_empleados
FROM
  Empleado e,
  Departamentos d
WHERE
  e.DEPT_NO = d.DEPT_NO
GROUP BY
  e.DEPT_NO,
  d.DNOMBRE
ORDER BY
  3 DESC;

-- 18-Se desea conocer, tanto para el departamento de VENTAS, como para el de CONTABILIDAD. su máximo, su mínimo y su media salarial, así como el número de empleados en cada departamento. La salida deberá estar ordenada por el nombre del departamento.
SELECT
  d.DNOMBRE,
  max(e.SALARIO) maximo,
  min(e.SALARIO) minimo,
  avg(e.SALARIO) media,
  count(*) n_emp1
FROM
  Empleado e,
  Departamentos d
WHERE
  d.DNOMBRE IN ('ventas', 'contabilidad')
  AND e.DEPT_NO = d.DEPT_NO
GROUP BY
  d.DNOMBRE
ORDER BY
  d.DNOMBRE;

-- 19- El atributo DIR representa la relación entre un empleado y su jefe.
ALTER TABLE
  Empleado
ADD
  CONSTRAINT emp_fk FOREIGN KEY (DIR) REFERENCES Empleado (EMP_NO);

-- 20-Se desea un listado en el que se presente el número, nombre y oficio de cada empleado de la empresa que tiene jefe, y lo mismo de su jefe directo. La salida debe estar ordenada por el nombre del empleado.
SELECT
  e.EMP_NO empleado,
  e.APELLIDO nombre,
  e.OFICIO oficio,
  e.DIR jefe,
  e2.APELLIDO AS nombre_jefe,
  e2.OFICIO AS oficio_jefe
FROM
  Empleado e,
  Empleado e2
WHERE
  e.DIR = e2.EMP_NO
ORDER BY
  e.APELLIDO;

-- 21-Con el uso de subconsultas. Obtener el apellido, departamento y oficio de aquellos empleados que tengan un oficio, que esté en el departamento 20 y que no sea ninguno de los oficios que está en el departamento de VENTAS.
SELECT
  APELLIDO,
  DEPT_NO,
  OFICIO
FROM
  Empleado
WHERE
  OFICIO IN (
    SELECT
      OFICIO
    FROM
      Empleado
    WHERE
      DEPT_NO = 28
  )
  AND OFICIO NOT IN (
    SELECT
      OFICIO
    FROM
      Empleadop e,
      Departamentos d
    WHERE
      e.DEPT_NO = d.DEPT_NO
      AND d.DNOMBRE = "ventas"
  );

-- 22 - Con el uso de subconsultas. Obtener el número de empleado, número de departamento y apellido de todos los empleados que trabajen en el departamento 20 o 30 y su salario sea mayor que dos veces el mínimo salario de la empresa. No queremos que el oficio sea PRESIDENTE.
SELECT
  EMP_NO,
  DEPT_NO,
  APELLIDO
FROM
  Empleado
WHERE
  DEPT_NO IN (20, 30)
  AND SALARIO > (
    SELECT
      min (SALARIO) * 2
    FROM
      Empleado
  )
  AND OFICIO <> 'presidente';

-- 23- Queremos conocer el apellido, oficio, salario y departamento en el que trabajan, de todos los individuos cuyo salario sea mayor que el mayor salario del departamento 30
SELECT
  APELLIDO,
  OFICIO,
  SALARIO,
  DEPT_NO
FROM
  Empleado
WHERE
  SALARIO > (
    SELECT
      max(SALARIO)
    FROM
      Empleado
    WHERE
      DEPT_NO = 30
  );

-- 24 -Presentar los nombres y oficios de todos los empleados del departamento 20, cuyo trabajo sea idéntico al de cualquiera de los empleados del departamento de VENTAS.
SELECT
  APELLIDO,
  OFICIO
FROM
  Empleado
WHERE
  DEPT_NO = 20
  AND OFICIO IN (
    SELECT
      OFICIO
    FROM
      Empleado e,
      Departamentos d
    WHERE
      DNOMBRE = 'VENTAS'
      AND e.DEPT_NO = d.DEPT_NO
  );

-- 25- Se desea obtener todos los empleados de los departamentos que no ganan ni el máximo ni el mínimo salarial de la empresa.
SELECT
  APELLIDO,
  OFICIO
FROM
  Empleado
WHERE
  SALARIO <> (
    SELECT
      max(SALARIO)
    FROM
      Empleado
  )
  AND SALARIO <> (
    SELECT
      min(SALARIO)
    FROM
      Empleado
  );

-- 26- Se desea obtener, para cada departamento, su mínimo y su máximo salarial. Para ello, no se tendrá en cuenta a los empleados cuyo apellido, coincida con nombre departamento en que trabajan. Asimismo, se tendrá en cuenta a aquellos departamentos cuya diferencia entre el máximo y el mínimo excede la media salarial de toda la empresa
SELECT
  DEPT_NO,
  min (SALARIO) minimo,
  max(SALARIO) maximo
FROM
  Empleado e
WHERE
  APELLIDO NOT IN (
    SELECT
      DNOMBRE
    FROM
      Departamentos d
    WHERE
      e.DEPT_NO = d.DEPT_NO
  )
GROUP BY
  DEPT_NO
HAVING
  max (SALARIO) - min(SALARIO) > (
    SELECT
      avg(SALARIO)
    FROM
      Empleado
  );

-- .........................................................................................................