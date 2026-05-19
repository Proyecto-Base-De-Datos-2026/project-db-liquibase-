--liquibase formatted sql
--changeset grupo-ingenieria:insertar-mascotas-volumetric

INSERT INTO mascota (id_mascota, id_dueno, nombre, especie, raza, edad) VALUES
(10, 10, 'Thor', 'perro', 'Golden Retriever', 5),
(11, 11, 'Mia', 'gato', 'Persa', 3),
(12, 12, 'Max', 'perro', 'Bulldog Francés', 4),
(13, 13, 'Simba', 'gato', 'Angora', 6),
(14, 14, 'Rocky', 'perro', 'Boxer', 7),
(15, 15, 'Nala', 'gato', 'Criollo', 2),
(16, 16, 'Toby', 'perro', 'Poodle', 5),
(17, 17, 'Chloe', 'gato', 'Bengala', 4),
(18, 18, 'Bruno', 'perro', 'Rottweiler', 6),
(19, 19, 'Frida', 'perro', 'Pug', 3),
(20, 20, 'Tom', 'gato', 'Siames', 5),
(21, 21, 'Coco', 'perro', 'Shih Tzu', 4),
(22, 22, 'Lucas', 'perro', 'Beagle', 8),
(23, 23, 'Lulu', 'gato', 'Persa', 3),
(24, 24, 'Jack', 'perro', 'Husky Siberiano', 6),
(25, 25, 'Bella', 'perro', 'Chihuahua', 2),
(26, 26, 'Milo', 'gato', 'Criollo', 4),
(27, 27, 'Zeus II', 'perro', 'Pitbull', 5),
(28, 28, 'Kiara', 'gato', 'Angora', 3),
(29, 29, 'Sasha', 'perro', 'Labrador', 7),
(30, 30, 'Sam', 'perro', 'Cocker Spaniel', 4),
(31, 31, 'Oliver', 'gato', 'Maine Coon', 6),
(32, 32, 'Pepe', 'perro', 'Schnauzer', 5),
(33, 33, 'Nina', 'gato', 'Criollo', 3),
(34, 34, 'Rocco', 'perro', 'Pinscher', 4);

--rollback empty