--liquibase formatted sql
--changeset grupo-ingenieria:insertar-pagos-canonical

INSERT INTO pago (id_pago, id_cita, monto, fecha_pago, metodo_pago) VALUES
(1, 1, 45.00, '2026-05-10', 'efectivo'),
(2, 2, 65.00, '2026-05-11', 'tarjeta_credito'),
(3, 3, 30.00, '2026-05-12', 'transferencia');

--rollback DELETE FROM pago WHERE id_pago IN (1, 2, 3);