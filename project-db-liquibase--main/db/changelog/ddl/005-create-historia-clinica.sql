--liquibase formatted sql
--changeset carlos-zuluaga:crear-tabla-historia-clinica

CREATE TABLE historia_clinica (
    id_historia      SERIAL         PRIMARY KEY,
    diagnostico      VARCHAR(255)   NOT NULL,
    observaciones    TEXT,
    id_cita          INT            NOT NULL UNIQUE, -- Relación 1 a 1 con la cita

    -- FK: Conecta con la tabla cita (Si se borra la cita, se elimina su historia)
    CONSTRAINT fk_historia_cita
        FOREIGN KEY (id_cita) REFERENCES cita(id_cita)
        ON DELETE CASCADE
);

