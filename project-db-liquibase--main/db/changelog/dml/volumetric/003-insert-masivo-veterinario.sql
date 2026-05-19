--liquibase formatted sql
--changeset grupo-ingenieria:insertar-veterinarios-volumetric

INSERT INTO veterinario (id_veterinario, nombre, especialidad, correo, activo) VALUES
(10, 'Dr. Alberto Muñoz', 'general', 'alberto.vet@email.com', TRUE),
(11, 'Dra. María Paula Rojas', 'dermatología', 'maria.vet@email.com', TRUE),
(12, 'Dr. Fernando Castro', 'cardiología', 'fernando.vet@email.com', TRUE),
(13, 'Dra. Patricia Delgado', 'ortopedia', 'patricia.vet@email.com', TRUE),
(14, 'Dr. Jorge Eliécer plazas', 'odontología', 'jorge.vet@email.com', TRUE),
(15, 'Dra. Clara Inés Murcia', 'otro', 'clara.vet@email.com', TRUE);

--rollback empty