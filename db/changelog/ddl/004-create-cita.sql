CREATE TABLE cita (

    id_cita        SERIAL        PRIMARY KEY,
    fecha          TIMESTAMP     NOT NULL,
    motivo         VARCHAR(255)  NOT NULL,
    estado         VARCHAR(20)   NOT NULL DEFAULT 'pendiente',
    id_mascota     INT           NOT NULL,
    id_veterinario INT           NOT NULL,

    -- FK: conecta la cita con la mascota
    -- RESTRICT: no deja eliminar una mascota si tiene citas
    CONSTRAINT fk_cita_mascota
        FOREIGN KEY (id_mascota)
        REFERENCES mascota(id_mascota)
        ON DELETE RESTRICT,

    -- FK: conecta la cita con el veterinario
    -- RESTRICT: no deja eliminar un vet si tiene citas
    CONSTRAINT fk_cita_veterinario
        FOREIGN KEY (id_veterinario)
        REFERENCES veterinario(id_veterinario)
        ON DELETE RESTRICT,

    -- CHECK: solo acepta estos tres estados
    CONSTRAINT chk_estado_cita CHECK (
        estado IN ('pendiente','completada','cancelada')
    ),

    -- CHECK: no acepta citas anteriores al 2020
    CONSTRAINT chk_fecha_cita CHECK (fecha >= '2020-01-01')
);

-- ÍNDICE: buscar citas de una mascota específica
CREATE INDEX idx_cita_mascota   ON cita(id_mascota);

-- ÍNDICE: buscar citas de un veterinario por fecha
CREATE INDEX idx_cita_vet_fecha ON cita(id_veterinario, fecha);
