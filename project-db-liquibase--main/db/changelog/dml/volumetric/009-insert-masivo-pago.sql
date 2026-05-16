--liquibase formatted sql
--changeset grupo-ingenieria:insertar-pagos-masivo

INSERT INTO pago (id_pago, id_cita, monto, fecha_pago, metodo_pago) VALUES
(10, 10, 85.00, '2026-05-13', 'tarjeta_credito'),
(11, 11, 55.00, '2026-05-13', 'efectivo'),
(12, 12, 120.00, '2026-05-13', 'transferencia'),
(13, 13, 35.00, '2026-05-13', 'efectivo'),
(14, 14, 40.00, '2026-05-13', 'transferencia'),
(15, 15, 75.00, '2026-05-14', 'tarjeta_debito'),
(16, 16, 250.00, '2026-05-14', 'tarjeta_credito'),
(17, 17, 90.00, '2026-05-14', 'transferencia'),
(18, 18, 30.00, '2026-05-14', 'efectivo'),
(19, 19, 60.00, '2026-05-14', 'tarjeta_debito'),
(20, 20, 45.00, '2026-05-14', 'efectivo'),
(21, 21, 50.00, '2026-05-15', 'tarjeta_debito'),
(22, 22, 110.00, '2026-05-15', 'tarjeta_credito'),
(23, 23, 30.00, '2026-05-15', 'efectivo'),
(24, 24, 70.00, '2026-05-15', 'transferencia'),
(25, 25, 45.00, '2026-05-15', 'efectivo'),
(26, 26, 80.00, '2026-05-15', 'tarjeta_credito'),
(27, 27, 130.00, '2026-05-16', 'transferencia'),
(28, 28, 55.00, '2026-05-16', 'efectivo'),
(29, 29, 40.00, '2026-05-16', 'tarjeta_debito'),
(30, 30, 65.00, '2026-05-16', 'transferencia'),
(31, 31, 180.00, '2026-05-16', 'tarjeta_credito'),
(32, 32, 35.00, '2026-05-16', 'efectivo'),
(33, 33, 95.00, '2026-05-16', 'tarjeta_debito'),
(34, 34, 50.00, '2026-05-16', 'efectivo');

