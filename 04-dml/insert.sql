


-- INSERTAR NUEVOS REGISTROS
INSERT INTO usuarios VALUES(
    null,
    'Angel',
    'Travieso',
    'correo@correo.com',
    'Clave123*',
    '2022-08-13' -- fecha en formato americano
);

INSERT INTO usuarios VALUES(
    null,
    'Gustavo',
    'Castro',
    'correo2@correo.com',
    'Clave456*',
    '2022-08-13' -- fecha en formato americano
);

INSERT INTO usuarios VALUES(
    null,
    'Pedro',
    'Perez',
    'correo3@correo.com',
    'Clave789*',
    '2022-08-13' -- fecha en formato americano
);

-- INSERTAR FILAS SOLO CON CIERTAS COLUMNAS
INSERT INTO usuarios(email, password) VALUES ('correo4@correo.com', 'Clave987*');