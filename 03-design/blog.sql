
/*
    ENGINE
    InnoDB
        soporte de transacciones, fk, integridad relacional, entre otros...
    MyISAM
        mayor velocidad al momento de hacer consultas (select), se nota en gran escala, para aplicaciones que hacen muchos SELECT, tiene como problema que no mantiene integridad referencial (nada de fk y relaciones)

*/

 
CREATE TABLE usuarios (
    id INT(255) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fecha_registro DATE NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)
) ENGINE = INNODB;


CREATE TABLE categorias (
    id INT(255) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    CONSTRAINT pk_categorias PRIMARY KEY(id)
) ENGINE = INNODB;


CREATE TABLE entradas (
    id INT(255) NOT NULL AUTO_INCREMENT,
    usuario_id INT(255) NOT NULL,
    categoria_id INT(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    descripcion MEDIUMTEXT,
    fecha DATE NOT NULL,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(`usuario_id`) REFERENCES `usuarios`(`id`),
    CONSTRAINT fk_entrada_categoria FOREIGN KEY(`categoria_id`) REFERENCES `categorias`(`id`)
) ENGINE = INNODB;

/*
    CASCADE
    ON DELETE
    ON UPDATE
    ON DELETE SET NULL
    ON DELETE SET DEFAULT
    NO DELETE NO ACTION
*/