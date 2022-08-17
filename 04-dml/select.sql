


-- MOSTRAR TODOS LOS REGISTROS / FILAS DE UNA TABLA
SELECT email, nombre, apellidos FROM usuarios;

-- MOSTRAR TODOS LOS CAMPOS
SELECT email, nombre, apellidos FROM usuarios;

-- OPERADORES ARITMÉTICOS
SELECT email, (4 + 7) AS operacion FROM usuarios;

-- ORDENAR DATOS
SELECT id, email, (4 + 7) AS operacion FROM usuarios ORDER BY id DESC;


-- FUNCIONES MATEMATICAS

-- VALOR ABSOLUTO
SELECT ABS(7) AS operacion FROM usuarios;

-- REDONDEAR HACIA ARRIBA
SELECT CEIL(7.34) AS operacion FROM usuarios;

-- REDONDEAR HACIA ABAJO
SELECT FLOOR(7.34) AS operacion FROM usuarios;

-- PI
SELECT PI() AS operacion FROM usuarios;

-- NUMERO ALEATORIO
SELECT RAND() AS operacion FROM usuarios;

-- REDONDEAR (NUMERO, POSICIONES)
SELECT ROUND(7.91, 1) AS operacion FROM usuarios;

-- RAIZ CUADRADA
SELECT SQRT(7.91) AS operacion FROM usuarios;

-- TRUNCAR UN NUMERO (QUITAR DECIMALES)
SELECT TRUNCATE(7.91, 1) AS operacion FROM usuarios;


-- FUNCIONES PARA TEXTOS

-- MAYUSCULA
SELECT UPPER(nombre) FROM usuarios;

-- MINUSCULAS
SELECT LOWER(nombre) FROM usuarios;

-- CONCATENAR
SELECT CONCAT(nombre, ' ', apellidos) AS conversion FROM usuarios;

-- FUNCIONES ANIDADAS
SELECT UPPER(CONCAT(nombre, ' ', apellidos)) AS conversion FROM usuarios;

-- OBTENER LONGITUD
SELECT email, LENGTH(CONCAT(nombre, ' ', apellidos)) AS conversion FROM usuarios;

-- QUITAR ESPACIOS EN BLANCO
SELECT TRIM(CONCAT(nombre, '           ', apellidos, '                            ')) AS conversion FROM usuarios;


-- FUNCIONES PARA FECHAS

-- FECHA ACTUAL (CURRENT DATE)
SELECT email, fecha_registro, CURDATE() AS 'fecha_actual' FROM usuarios;

-- VER LA DIFERENCIA ENTRE 2 FECHAS
SELECT email, DATEDIFF(fecha_registro, CURDATE()) AS 'diferencia_fecha' FROM usuarios;

-- NOMBRE DEL DIA EN EL CUAL SE REGISTRO (INSERTO) EN INGLES
SELECT email, DAYNAME(fecha_registro) AS 'dia' FROM usuarios;

-- NOMBRE DEL MES EN EL CUAL SE REGISTRO (INSERTO) EN INGLES
SELECT email, DAYOFMONTH(fecha_registro) AS 'mes' FROM usuarios;

-- DÍA DE LA SEMANA EN EL CUAL SE REGISTRO (INSERTO) EN INGLES
SELECT email, DAYOFWEEK(fecha_registro) AS 'semana' FROM usuarios;

-- DÍA DEL AÑO EN EL CUAL SE REGISTRO (INSERTO) EN INGLES
SELECT email, DAYOFYEAR(fecha_registro) AS 'numero_dia' FROM usuarios;

-- MES DEL AÑO
SELECT email, MONTH(fecha_registro) AS 'month_of_year' FROM usuarios;

-- AÑO DE ESA FECHA
SELECT email, YEAR(fecha_registro) AS 'month_of_year' FROM usuarios;

-- DÍA DE ESA FECHA
SELECT email, DAY(fecha_registro) AS 'month_of_year' FROM usuarios;

-- HORA DE ESA FECHA
SELECT email, HOUR(fecha_registro) AS 'month_of_year' FROM usuarios;

-- HORA ACTUAL
SELECT email, CURTIME() AS 'hour' FROM usuarios;

-- HORA SO / SERVIDOR
SELECT email, SYSDATE() AS 'hour_so' FROM usuarios;

-- FORMATEAR FECHA
SELECT email, DATE_FORMAT(fecha_registro, '%d-%m-%y') AS 'hour_so' FROM usuarios;