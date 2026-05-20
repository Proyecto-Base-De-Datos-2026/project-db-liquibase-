CREATE TABLE dueno (
    id_dueno   SERIAL         PRIMARY KEY,
    nombre     VARCHAR(100)   NOT NULL,
    telefono   VARCHAR(20)    NOT NULL UNIQUE,
    correo     VARCHAR(150)   NOT NULL UNIQUE,
    CONSTRAINT chk_correo_dueno  CHECK (correo   LIKE '%@%.%'),
    CONSTRAINT chk_telefono      CHECK (telefono ~ '^[0-9\-\+\s]+$')
);
-- ÍNDICE en correo: acelera la búsqueda cuando filtramos por correo
-- sin esto, la base de datos revisa fila por fila (lento)
CREATE INDEX idx_dueno_correo ON dueno(correo);
-- ÍNDICE en nombre: acelera búsquedas por nombre de dueño
CREATE INDEX idx_dueno_nombre ON dueno(nombre);
