--liquibase formatted sql
--changeset carlos-zuluaga:crear-tabla-medicamento

CREATE TABLE medicamento (
    id_medicamento   SERIAL         PRIMARY KEY,
    nombre           VARCHAR(100)   NOT NULL UNIQUE, -- UNIQUE para que no se repita el mismo remedio
    dosis            VARCHAR(100)   NOT NULL
);

