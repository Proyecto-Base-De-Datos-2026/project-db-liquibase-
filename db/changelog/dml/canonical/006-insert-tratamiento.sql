--liquibase formatted sql
--changeset grupo-ingenieria:insertar-tratamientos-canonical

INSERT INTO tratamiento (id_tratamiento, id_historia, descripcion) VALUES
(1, 1, 'Plan de Vacunación Canina'),
(2, 2, 'Terapia Antiinflamatoria'),
(3, 3, 'Esquema de Desparasitación Oral');
