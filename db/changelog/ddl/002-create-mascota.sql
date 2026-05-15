CREATE TABLE mascota (
    id_mascota SERIAL         PRIMARY KEY,
    nombre     VARCHAR(100)   NOT NULL,
    especie    VARCHAR(50)    NOT NULL,
    raza       VARCHAR(100),
    edad       INT,
    id_dueno   INT            NOT NULL,
    CONSTRAINT fk_mascota_dueno
        FOREIGN KEY (id_dueno) REFERENCES dueno(id_dueno)
        ON DELETE CASCADE,
    CONSTRAINT chk_especie CHECK (
        especie IN ('perro','gato','conejo','ave','reptil','otro')
    ),
    CONSTRAINT chk_edad_mascota CHECK (edad IS NULL OR edad >= 0)
);
-- ÍNDICE: acelera buscar todas las mascotas de un dueño específico
-- esto se usa mucho en los JOIN entre mascota y dueno
CREATE INDEX idx_mascota_dueno   ON mascota(id_dueno);

-- ÍNDICE: acelera filtrar mascotas por especie
-- ejemplo: "mostrar todos los perros registrados"
CREATE INDEX idx_mascota_especie ON mascota(especie);