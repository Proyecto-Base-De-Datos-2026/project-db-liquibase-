--liquibase formatted sql
--changeset grupo-ingenieria:insertar-medicamentos-canonical

INSERT INTO medicamento (id_medicamento, nombre, dosis) VALUES
(1, 'Meloxicam 2mg', '1 tableta cada 24 horas'),
(2, 'Albendazol Suspensión', '5ml dosis única vía oral'),
(3, 'Vacuna Quíntuple Canina', '1 dosis inyectable');

--rollback DELETE FROM medicamento WHERE id_medicamento IN (1, 2, 3);
