--liquibase formatted sql
--changeset grupo-ingenieria:insertar-tratamientos-masivo

INSERT INTO tratamiento (id_tratamiento, id_historia, descripcion) VALUES
(10, 4, 'Profilaxis dental completa y aplicación de flúor'),
(11, 5, 'Baño medicado cada 4 días y pipeta antiparasitaria'),
(12, 6, 'Tratamiento cardiológico diario y restricción de ejercicio'),
(13, 7, 'Limpieza ocular con suero y gotas antibióticas cada 8 horas'),
(14, 8, 'Cambio estricto a alimento concentrado metabólico y pesajes semanales'),
(15, 9, 'Suplementación vitamínica preventiva por 30 días'),
(16, 10, 'Limpieza diaria de herida quirúrgica con antiséptico y uso de collar isabelino'),
(17, 11, 'Sesiones de fisioterapia en casa y caminatas cortas controladas'),
(18, 12, 'Recomendación de esquema de vacunación anual preventivo'),
(19, 13, 'Ayuno estricto de 12 horas previo al procedimiento quirúrgico programado'),
(20, 14, 'Terapia con feromonas en difusor y reducción de estímulos estresantes'),
(21, 15, 'Limpieza con gel dental antiséptico y programación de extracción'),
(22, 16, 'Continuar dosis de pimobendán según esquema previo'),
(23, 17, 'Mezcla gradual de alimento de cachorro con adulto durante 7 días'),
(24, 18, 'Limpieza de sutura con clorhexidina y aplicación de pomada cicatrizante'),
(25, 19, 'Aplicación de ungüento oftálmico regenerador cada 6 horas'),
(26, 20, 'Recomendación de repetir pruebas de descarte en 6 meses'),
(27, 21, 'Administración diaria de condroprotectores y antiinflamatorios'),
(28, 22, 'Baño especializado por infestación y fumigación del entorno'),
(29, 23, 'Programación para detartraje profundo bajo anestesia general'),
(30, 24, 'Tratamiento con jarabe reconstituyente de hierro por 15 días'),
(31, 25, 'Monitoreo de temperatura postquirúrgica y analgésicos inyectables'),
(32, 26, 'Dieta de exclusión estricta basada en proteína alternativa'),
(33, 27, 'Gotas antiinflamatorias post-extracción de cuerpo extraño'),
(34, 28, 'Monitoreo mensual de curvas de crecimiento y desarrollo general');

--rollback empty
