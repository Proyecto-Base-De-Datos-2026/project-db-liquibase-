--liquibase formatted sql
--changeset grupo-ingenieria:insertar-citas-volumetric

INSERT INTO cita (id_cita, id_mascota, id_veterinario, fecha, motivo, estado) VALUES
(10, 10, 10, '2026-05-13 08:00:00', 'Limpieza dental profunda', 'completada'),
(11, 11, 11, '2026-05-13 09:00:00', 'Alergia severa en la piel', 'completada'),
(12, 12, 12, '2026-05-13 10:00:00', 'Arritmia y cansancio inusual', 'completada'),
(13, 13, 13, '2026-05-13 11:00:00', 'Secreción ocular persistente', 'completada'),
(14, 14, 14, '2026-05-13 14:00:00', 'Asesoría por sobrepeso', 'completada'),
(15, 15, 15, '2026-05-14 08:30:00', 'Exámenes de sangre de rutina', 'completada'),
(16, 16, 10, '2026-05-14 09:30:00', 'Extracción de masa benigna', 'completada'),
(17, 17, 11, '2026-05-14 10:30:00', 'Rehabilitación postoperatoria', 'completada'),
(18, 18, 12, '2026-05-14 11:30:00', 'Chequeo general preventivo', 'completada'),
(19, 19, 13, '2026-05-14 15:00:00', 'Valoración preanestésica', 'completada'),
(20, 20, 11, '2026-05-14 16:00:00', 'Pérdida localizada de pelo', 'completada'),
(21, 21, 10, '2026-05-15 08:00:00', 'Dolor al masticar', 'completada'),
(22, 22, 12, '2026-05-15 09:00:00', 'Control de soplo cardíaco', 'completada'),
(23, 23, 14, '2026-05-15 10:00:00', 'Cambio drástico de dieta', 'completada'),
(24, 24, 15, '2026-05-15 11:00:00', 'Sutura por herida en parque', 'completada'),
(25, 25, 13, '2026-05-15 14:00:00', 'Revisión de úlcera corneal', 'completada'),
(26, 26, 15, '2026-05-15 15:00:00', 'Prueba de descarte de leucemia', 'completada'),
(27, 27, 14, '2026-05-16 08:30:00', 'Terapia física para cadera', 'completada'),
(28, 28, 11, '2026-05-16 09:30:00', 'Control de pulgas y garrapatas', 'completada'),
(29, 29, 10, '2026-05-16 10:30:00', 'Sarro dental acumulado', 'completada'),
(30, 30, 12, '2026-05-16 11:30:00', 'Evaluación de fatiga crónica', 'completada'),
(31, 31, 15, '2026-05-16 14:30:00', 'Esterilización programada', 'completada'),
(32, 32, 14, '2026-05-16 15:30:00', 'Alergias alimentarias', 'completada'),
(33, 33, 13, '2026-05-16 16:30:00', 'Cuerpo extraño en ojo izquierdo', 'completada'),
(34, 34, 10, '2026-05-16 17:00:00', 'Vacunación y control de peso', 'completada');