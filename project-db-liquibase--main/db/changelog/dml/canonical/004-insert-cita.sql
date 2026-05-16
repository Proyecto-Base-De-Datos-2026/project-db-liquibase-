--liquibase formatted sql
--changeset grupo-ingenieria:insertar-citas-canonical

INSERT INTO cita (id_cita, id_mascota, id_veterinario, fecha, motivo, estado) VALUES
(1, 1, 1, '2026-05-10 08:00:00', 'Control de vacunas anual', 'completada'),
(2, 2, 2, '2026-05-11 10:30:00', 'Revisión por cojera en pata trasera', 'completada'),
(3, 3, 1, '2026-05-12 14:00:00', 'Chequeo general y desparasitación', 'completada');