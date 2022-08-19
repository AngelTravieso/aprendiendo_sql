-- CONSULTA CON UNA CONDICION
SELECT * FROM usuarios WHERE email = 'correo@correo.com';

/*
OPERADORES DE COMPARACION:
IGUAL =
DISTINTO !=
MENOR <
MAYOR >
MENOR O IGUAL <=
MAYOR O IGUAL >=
BETWEEN between A and B
EN = IN
NULO  = IS NULL
NO NULO = IS NOT NULL
COMO = LIKE
NO ES COMO = NOT LIKE
*/


/*
OPERADORES LÓGICOS:
O: OR
Y: AND
NO: NOT
*/

/*
COMODINES:
CUALQUER CANTIDAD DE CARACTERES: %
UN CARACTER DESCONOCIDO: _
*/

-- EJEMPLOS

-- 1. MOSTRAR NOMBRE Y APELLIDOS DE TODOS LOS USUARIOS REGISTRADOS EN 2022
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha_registro) = 2022;

-- 2. MOSTRAR NOMBRE Y APELLIDOS DE TODOS LOS USUARIOS  QUE NO SE REGISTRARON EN 2022
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha_registro) != 2022 OR ISNULL(fecha_registro);

-- 3. MOSTRAR EL EMAIL DE LOS USUARIOS CUYO APELLIDO CONTENGA LA LETRA 'A' Y QUE SU CONTRASEÑA SEA 1234
SELECT email FROM usuarios WHERE apellidos LIKE '%a%' AND password = 'Clave123*';

-- 4. SACAR TODOS LOS REGISTROS DE LA TABLA USUARIOS CUYO AÑO SEA PAR
SELECT * FROM usuarios WHERE (YEAR(fecha_registro) % 2 = 0);

-- 5. SACAR TODOS LOS REGISTROS DE LA TABLA USUARIOS CUYO NOMBRE TENGA MAS DE 5 LETRAS Y QUE SE HAYAN REGISTRADO ANTES DE 2020, Y MOSTRAR EL NOMBRE EN MAYUS
SELECT UPPER(nombre) AS nombre, apellidos FROM usuarios WHERE LENGTH(nombre) >= 5 AND YEAR(fecha_registro) < 2022;