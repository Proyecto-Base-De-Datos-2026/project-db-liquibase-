--liquibase formatted sql
--changeset carlos-zuluaga:crear-tabla-tratamiento

CREATE TABLE tratamiento (
    id_tratamiento   SERIAL         PRIMARY KEY,
    descripcion      VARCHAR(255)   NOT NULL,
    id_historia      INT            NOT NULL,

    -- FK: Conecta con la historia clínica (Si se borra la historia, se eliminan sus tratamientos)
    CONSTRAINT fk_tratamiento_historia
        FOREIGN KEY (id_historia) REFERENCES historia_clinica(id_historia)
        ON DELETE CASCADE
);

-- ÍNDICE: Acelera las búsquedas y los filtros cuando unes tratamiento con historia_clinica
CREATE INDEX idx_tratamiento_historia ON tratamiento(id_historia);

--rollback DROP TABLE tratamiento;