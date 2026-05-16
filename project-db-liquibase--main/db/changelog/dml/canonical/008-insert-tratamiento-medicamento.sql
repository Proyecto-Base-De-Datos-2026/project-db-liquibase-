--liquibase formatted sql
--changeset grupo-ingenieria:insertar-tratamiento-medicamento-canonical

INSERT INTO tratamiento_medicamento (id_tratamiento, id_medicamento) VALUES
(1, 3), -- El tratamiento 1 (Vacunación) usó el medicamento 3 (Vacuna Quíntuple)
(2, 1), -- El tratamiento 2 (Terapia Antiinflamatoria) usó el medicamento 1 (Meloxicam)
(3, 2); -- El tratamiento 3 (Desparasitación) usó el medicamento 2 (Albendazol)

--rollback DELETE FROM tratamiento_medicamento WHERE id_tratamiento IN (1, 2, 3) AND id_medicamento IN (1, 2, 3);