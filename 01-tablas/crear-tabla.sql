/*
TIPOS DE DATOS

int(n° cifras) ENTERO
integer(n° cifras) ENTERO (max 255)
varchar(n° caracteres) STRING / ALFANUMERICO (max 255)
char(n° caracteres) STRING / ALFANUMERICO
flot(n° cifras, n°decimales)  DECIMAL / COMA FLOTANTE
date, time, timestamp

STRING MAS GRANDE
TEXT 65.535 caracteres
MEDIUMTEXT 16 millones caracteres
LONGTEXT 4 billones caracteres

ENTEROS MAS GRANDE
MEDIUMINT
BIGINT

*/


/*
CREAR TABLA
*/

CREATE TABLE usuarios(
    id int(11),
    nombre varchar(100),
    apellidos varchar(255),
    email varchar(100),
    password varchar(255)
);