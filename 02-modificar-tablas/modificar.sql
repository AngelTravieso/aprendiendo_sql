


-- RENOMBRAR UNA TABLA
ALTER TABLE usuarios RENAME TO usuarios_renomb;

-- CAMBIAR EL NOMBRE DE UNA COLUMNA
ALTER TABLE usuarios_renomb CHANGE apellidos apellido varchar(100) NULL;

-- MODIFICAR COLUMNA SIN CAMBIAR NOMBRE
ALTER TABLE usuarios_renomb MODIFY apellido char(40) NOT NULL;

-- AÑADIR COLUMNA
ALTER TABLE usuarios_renomb ADD website varchar(100) NULL;

-- AÑADIR UNA RESTRICCION A UNA COLUMNA
ALTER TABLE usuarios_renomb ADD CONSTRAINT uq_email UNIQUE(email);

-- BORRAR UNA COLUMNA
ALTER TABLE usuarios_renomb DROP website;