--liquibase formatted sql
--changeset grupo-ingenieria:insertar-duenos-canonical

INSERT INTO dueno (id_dueno, nombre, telefono, correo) VALUES
(1, 'Carlos Andrés Zuluaga Acuña', '3151234567', 'carlos@email.com'),
(2, 'Laura Camila Ospina', '3209876543', 'laura@email.com'),
(3, 'Juan Fernando Hoyos', '3114567890', 'juan@email.com');