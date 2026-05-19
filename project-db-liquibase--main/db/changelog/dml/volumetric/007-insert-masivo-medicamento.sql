--liquibase formatted sql
--changeset grupo-ingenieria:insertar-medicamentos-masivo

INSERT INTO medicamento (id_medicamento, nombre, dosis) VALUES
(10, 'Champú con Clorhexidina', 'Baño cada 3 días dejando actuar 10 minutos'),
(11, 'Enalapril 5mg', 'Media tableta vía oral cada 12 horas'),
(12, 'Tobramicina Gotas', '1 gota en el ojo afectado cada 6 horas'),
(13, 'Condroprotector Artroflex', '1 tableta masticable diaria con el alimento'),
(14, 'Pipeta Fiprokill', 'Aplicación directa sobre el lomo una vez al mes'),
(15, 'Complejo B Inyectable', '0.5ml vía intramuscular cada 48 horas');

--rollback empty