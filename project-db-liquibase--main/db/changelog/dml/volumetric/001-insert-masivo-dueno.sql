--liquibase formatted sql
--changeset grupo-ingenieria:insertar-duenos-masivo

--liquibase formatted sql
--changeset grupo-ingenieria:insertar-duenos-volumetric

INSERT INTO dueno (id_dueno, nombre, telefono, correo) VALUES 
(10, 'Andrés Felipe Murcia', '3102223344', 'andres.murcia@email.com'),
(11, 'Carolina Perdomo', '3115556677', 'caro.perdomo@email.com'),
(12, 'Diego Alejandro Polania', '3128889900', 'diego.polania@email.com'),
(13, 'Angélica María Borrero', '3134445566', 'angie.borrero@email.com'),
(14, 'Fabián Camilo Lasso', '3147778899', 'fabian.lasso@email.com'),
(15, 'Diana Marcela Medina', '3153332211', 'diana.medina@email.com'),
(16, 'Santiago Sterling', '3166665544', 'santi.sterling@email.com'),
(17, 'Valentina Trujillo', '3179998877', 'vale.trujillo@email.com'),
(18, 'Javier Eduardo Claros', '3182224466', 'javier.claros@email.com'),
(19, 'Olga Lucía Andrade', '3195557799', 'olga.andrade@email.com'),
(20, 'Manuel Francisco Ortiz', '3201113355', 'manuel.ortiz@email.com'),
(21, 'Paola Andrea Tovar', '3214446688', 'paola.tovar@email.com'),
(22, 'Gustavo Adolfo Ramos', '3227779911', 'gustavo.ramos@email.com'),
(23, 'Sandra Milena Gasca', '3231114477', 'sandra.gasca@email.com'),
(24, 'Ricardo Alberto Cuéllar', '3104448822', 'ricardo.cuellar@email.com'),
(25, 'Martha Cecilia Cabrera', '3119993311', 'martha.cabrera@email.com'),
(26, 'Jorge Eliecer Vargas', '3126662288', 'jorge.vargas@email.com'),
(27, 'Liliana Patricia Rojas', '3133339944', 'liliana.rojas@email.com'),
(28, 'Carlos Julio Gutiérrez', '3148881155', 'carlos.gutierrez@email.com'),
(29, 'Claudia Elena Chávarro', '3152226600', 'claudia.chavarro@email.com'),
(30, 'Luis Fernando Penagos', '3167770033', 'luis.penagos@email.com'),
(31, 'Gloria Inés Pastrana', '3174441199', 'gloria.pastrana@email.com'),
(32, 'Álvaro Humberto Méndez', '3181115522', 'alvaro.mendez@email.com'),
(33, 'Adriana Lucía Bonilla', '3198884477', 'adriana.bonilla@email.com'),
(34, 'Hernando de Jesús Gómez', '3206661144', 'hernando.gomez@email.com');

--rollback empty