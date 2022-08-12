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
    id int(11) NOT NULL AUTO_INCREMENT,
    nombre varchar(100) NOT NULL,
    apellidos varchar(255) DEFAULT 'hola que tal',
    email varchar(100) NOT NULL,
    password varchar(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
); 