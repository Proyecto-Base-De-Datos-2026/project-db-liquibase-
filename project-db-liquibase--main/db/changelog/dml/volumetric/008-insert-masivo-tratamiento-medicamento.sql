--liquibase formatted sql
--changeset grupo-ingenieria:insertar-tratamiento-medicamento-masivo

INSERT INTO tratamiento_medicamento (id_tratamiento, id_medicamento) VALUES
(11, 10), -- Dermatitis usó Champú Clorhexidina
(11, 14), -- Dermatitis también usó Pipeta Fiprokill
(12, 11), -- Cardiopatía usó Enalapril
(13, 12), -- Conjuntivitis usó Tobramicina Gotas
(22, 11), -- Cardiopatía crónica usó Enalapril
(24, 1),  -- La herida abierta usó Meloxicam para el dolor
(25, 12), -- Úlcera corneal usó Tobramicina Gotas
(27, 13), -- Displasia usó Condroprotector Artroflex
(27, 1),  -- Displasia también usó Meloxicam para inflamación
(28, 14), -- Control de garrapatas usó Pipeta Fiprokill
(30, 15), -- Anemia usó Complejo B
(31, 1),  -- Post-esterilización usó Meloxicam analgésico
(33, 12); -- Retirada de espina usó Tobramicina Gotas

