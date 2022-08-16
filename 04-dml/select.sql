


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