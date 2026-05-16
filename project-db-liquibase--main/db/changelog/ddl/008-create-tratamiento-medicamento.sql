--liquibase formatted sql
--changeset carlos-zuluaga:crear-tabla-tratamiento-medicamento

CREATE TABLE tratamiento_medicamento (
    id_tratamiento   INT            NOT NULL,
    id_medicamento   INT            NOT NULL,
    
    -- PK Compuesta: Garantiza que no se le asigne el mismo medicamento dos veces al mismo tratamiento
    CONSTRAINT pk_tratamiento_medicamento PRIMARY KEY (id_tratamiento, id_medicamento),
    
    -- FK 1: Conecta con la tabla tratamiento
    -- ON DELETE CASCADE: Si se elimina el tratamiento, se borra su registro aquí automáticamente
    CONSTRAINT fk_tm_tratamiento
        FOREIGN KEY (id_tratamiento) REFERENCES tratamiento(id_tratamiento)
        ON DELETE CASCADE,
        
    -- FK 2: Conecta con la tabla medicamento
    -- ON DELETE RESTRICT: Protege la tabla 7. No permite borrar una medicina si ya está siendo usada en un tratamiento
    CONSTRAINT fk_tm_medicamento
        FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
        ON DELETE RESTRICT
);

